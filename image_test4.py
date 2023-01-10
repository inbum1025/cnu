import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import sys
import os
import shutil
from tqdm import tqdm
import wget
import pickle
from astropy import units as u
from astropy.coordinates import SkyCoord, FK4

ra = 187.7027
dec = 12.3887
filters = 'gri'
size = 1.0


url = 'https://dr12.sdss.org/mosaics/script?onlyprimary=True&pixelscale=0.396&ra=%s&filters=%s&dec=%s&size=%s'% (ra, filters, dec, size)

wget.download(url)


os.system('J123048.00+122319.0.sh')

# file = 'J123048.00+122319.0.sh'
# os.system('bash %s.sh' % file)

