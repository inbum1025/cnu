from bs4 import BeautifulSoup
import requests
import urllib.request
import shutil
import os
import astropy.io.fits as fits
import pandas as pd
import numpy as np
from astropy.table import Table


#------------- url img download---------------------
url = 'https://dr12.sdss.org/fields'

response = requests.get(url)


def image_data(a,b):
    url = 'https://dr12.sdss.org/fields'
    url_2 = 'https://dr12.sdss.org/'

    response = requests.get(url)

    # ra, dec 대입
    url += '/raDec?'
    url += 'ra=' + str(a)
    url += '&dec=' + str(b)

    #bs4사용
    html = urllib.request.urlopen(url)
    soup = BeautifulSoup(html, 'html.parser')

    #img src 찾기
    img = soup.find("img", id = 'jpg')['src']

    #image_url (jpg)
    img_url  = url_2 + img
    img_name = img.replace("/","")
    
    urllib.request.urlretrieve(img_url,"cnu_project\image_test3\img\img"+ str(a) + "," + str(b) +".jpg")

    
#------------------sdss data--------------------------
sdss_data = Table.read("cnu_project\sdss_data\match_data2.fits")
sdss_ra = sdss_data['RA']
sdss_dec = sdss_data['DEC']

print(len(sdss_ra))
print(sdss_ra[1])



for i in range(5):
    a = sdss_ra[i]
    b = sdss_dec[i]
    image_data(a,b)
    

