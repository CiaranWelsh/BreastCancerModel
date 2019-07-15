import os, site
import numpy, pandas
import glob


import brenda



from brenda import BRENDAParser
with BRENDAParser("brenda_download.txt") as bp:
    content = bp.parse()

print(content)















