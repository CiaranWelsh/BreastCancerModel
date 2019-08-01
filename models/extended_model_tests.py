import unittest
import os, glob
import pandas as pf
import numpy as np
import tellurium as te

from .control_script import *


class QualitativeExtendedModelTests(unittest.TestCase):

    def setUp(self) -> None:
        self.mod = te.loada(expanded_pi3k_model)

    def test(self):
        print(mod)


if __name__ == '__main__':
    unittest.main()
