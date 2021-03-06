import unittest
import os, glob
import xlrd
import matplotlib.pyplot as plt
import seaborn

from .data_analysis import *


class ParseDataTests(unittest.TestCase):

    def setUp(self):
        self.data_dir = os.path.join(WORKING_DIRECTORY, 'data')
        self.data_file = os.path.join(self.data_dir, 'experimental_data.xlsx')
        assert os.path.isfile(self.data_file), self.data_file
        self.gd = GetDataFromOldDataFile(self.data_file)

    def test_open_workbook(self):
        self.assertIsInstance(self.gd.workbook, xlrd.book.Book)

    def test_get_data_from_sheet(self):
        data = self.gd.get_raw_data()
        self.assertIsInstance(data, pandas.DataFrame)

    def test_raw_data_is_accurate(self):
        data = self.gd.get_raw_data()
        print(data)
        self.assertEqual(2599775, data.loc[('MCF7', 0), ('Akt', 0)])
        self.assertEqual(1156087, data.loc[('MCF7', 0), ('AktpT308', 0)])
        self.assertEqual(8351448, data.loc[('MCF7', 90), ('PRAS40pT246', 0)])
        self.assertEqual(5833.17, data.loc[('T47D', 120), ('Coomassie staining', 3)])

    def test_get_data_normed_to_average(self):
        top_left = 1.422331386
        bottom_left = 0.822318749
        top_right = 0.980851924
        bottom_right = 0.990634001
        df = self.gd.get_data_normed_to_average()
        self.assertAlmostEqual(df.loc[('MCF7', 0), ('Akt', 0)], top_left)
        self.assertAlmostEqual(df.loc[('T47D', 120), ('Akt', 0)], bottom_left)
        self.assertAlmostEqual(df.loc[('MCF7', 0), ('Coomassie staining', 3)], top_right)
        self.assertAlmostEqual(df.loc[('T47D', 120), ('Coomassie staining', 3)], bottom_right)

    def test_get_data_normed_for_coomassie_blue(self):
        # this test fails at the moment because we have added 1 onto some of the total data sets
        top_left = 1.471104582
        bottom_left = 0.770400628
        top_right = 1.650671097
        bottom_right = 0.956924173
        df = self.gd.get_data_normalised_to_coomassie_blue()
        self.assertAlmostEqual(df.loc[('MCF7', 0), ('Akt', 0)], top_left)
        self.assertAlmostEqual(df.loc[('T47D', 120), ('Akt', 0)], bottom_left)
        self.assertAlmostEqual(df.loc[('MCF7', 0), ('GAPDH', 3)], top_right)
        self.assertAlmostEqual(df.loc[('T47D', 120), ('GAPDH', 3)], bottom_right)

    def test_interpolate(self):
        data = self.gd.interpolate_mcf7_data(num=12)
        self.assertEqual(12, data.shape[0])

    def test_interpolated_data_to_copasi(self):
        fname = os.path.join(DATA_DIRECTORY, 'copasi_data_interp.csv')
        data = self.gd.interpolate_mcf7_data(num=30)
        self.gd.to_copasi_format(fname=fname, data=data)

    def test_interpolated_data_to_copasi_format_multiple_files(self):
        fname = os.path.join(DATA_DIRECTORY, 'copasi_data_interp.csv')
        data = self.gd.interpolate_mcf7_data(num=30, offset_for_total_proetins=1)
        self.gd.to_copasi_format_multiple_files(fname=fname, data=data)

    def tst_ss_data_to_copasi_format(self):
        fname = os.path.join(DATA_DIRECTORY, 'copasi_data_interp.csv')
        data = self.gd.interpolate_mcf7_data(num=30, offset_for_total_proetins=1)
        self.gd.to_copasi_format_multiple_files(fname=fname, data=data)


class ParseDataFromNewFileTests(unittest.TestCase):

    def setUp(self):
        self.data_dir = os.path.join(WORKING_DIRECTORY, 'data')
        self.data_file = os.path.join(self.data_dir, 'experimental_data_with_norm_to_max.csv')
        assert os.path.isfile(self.data_file), self.data_file
        self.gd = GetDataNormedToMax(self.data_file)

    def test_read_data2(self):
        data = self.gd.read_data(offset_for_inactive_species=OFFSET_PARAMETER)
        self.assertIsInstance(data, pandas.DataFrame)

    def test_to_copasi_format(self):
        self.gd.to_copasi_format()

    def test_average_0_time_point(self):
        self.gd.get_average_of_0_time_points()

    def test_plot(self):
        plot2(self.gd.read_data(OFFSET_PARAMETER), 'NormedToMaxData', savefig=True)

    def test_ss_data_to_copasi_format(self):
        self.gd.ss_data_to_copasi_format()

    def test_plot(self):
        for i in ['ZR-75', 'T47D', 'MCF7']:
            self.gd.plot(i)

class ParseDataFromSteadyStateFileTests(unittest.TestCase):

    def setUp(self) -> None:
        self.gd = SteadyStateData(SS_DATA_FILE)

    def test_read_data(self):
        self.assertIsInstance(self.gd.read_data(), pandas.DataFrame)

    def test_plot(self):
        self.gd.plot(hue='cell_line')
        # self.gd.plot(hue='antibody')




class DataTests(unittest.TestCase):

    def setUp(self):
        self.data_dir = os.path.join(WORKING_DIRECTORY, 'data')
        self.data_file = os.path.join(self.data_dir, 'experimental_data.xlsx')
        assert os.path.isfile(self.data_file)
        self.gd = GetDataFromOldDataFile(self.data_file)
        self.raw_data = self.gd.get_raw_data()
        self.normed_to_average_data = self.gd.get_data_normed_to_average()
        self.normed_to_coomassie = self.gd.get_data_normalised_to_coomassie_blue()
        self.plots_dir = os.path.join(self.data_dir, 'plots')
        if not os.path.isdir(self.plots_dir):
            os.makedirs(self.plots_dir)

    def test_plots(self):
        raw = self.gd.get_raw_data()
        av = self.gd.get_data_normed_to_average()
        coomassie = self.gd.get_data_normalised_to_coomassie_blue()
        # plot_best_fit(raw, 'raw', True)
        # plot_best_fit(av, 'average', True)
        plot(coomassie, 'coomassie', True)
        # plt.show()

    def test_plot_repeats(self):
        raw = self.gd.get_raw_data()
        av = self.gd.get_data_normed_to_average()
        coomassie = self.gd.get_data_normalised_to_coomassie_blue()
        # plot_repeats(coomassie, 'coomassie', True)
        # plt.show()

    def test_pca(self):
        data = self.gd.get_data_normalised_to_coomassie_blue()
        principle_component_analysis(data, colourby='cell_line', savefig=True)
        principle_component_analysis(data, colourby='time', savefig=True)
        principle_component_analysis(data, colourby='repeats', savefig=True)

    def test_get_ic_data(self):
        data = ss_data_to_copasi_format()
        y = data.loc[('MCF7', 0), 'IRS1pS636_639_obs']
        self.assertAlmostEqual(0.8613332330041832, y)

    def test_to_copasi_format_isfile(self):
        fname = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data.csv')
        self.gd.to_copasi_format(fname, '\t')
        self.assertTrue(os.path.isfile(fname))

    def test_to_copasi_format_num_columns(self):
        fname = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data.csv')
        self.gd.to_copasi_format(fname, '\t')
        with open(fname, 'r') as f:
            data = f.read()
        data = data.split('\n')
        columns = data[0].split('\t')
        expected = 24
        actual = len(columns)
        self.assertEqual(expected, actual)

    def test_to_copasi_format_multiple_files2(self):
        fname = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data.csv')
        fname0 = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data0.csv')
        fname1 = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data1.csv')
        fname2 = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data2.csv')
        fname3 = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data3.csv')
        fnames = [fname0, fname1, fname2, fname3]
        self.gd.to_copasi_format_multiple_files(fname, '\t')
        for i in fnames:
            self.assertTrue(os.path.isfile(i))

        # with open(fname, 'r') as f:
        #     data = f.read()
        # data = data.split('\n')
        # columns = data[0].split('\t')
        # expected = 20
        # actual = len(columns)
        # self.assertEqual(expected, actual)

    def test_get_ics_for_t47d(self):
        data = self.gd.get_ics_for_t47d()
        expected = 1.246665
        actual = data.loc[('FourE_BP1_obs', 1), 0]
        self.assertAlmostEqual(expected, actual, 6)

    def test_simulation_with_t47d_data(self):
        data = self.gd.get_ics_for_t47d(offset_for_total_proetins=2)



if __name__ == '__main__':
    unittest.main()
