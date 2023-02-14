#!/bin/bash
#
# This script will create a mosaic of SDSS images.
#
# To invoke this script do:
#
# $ /bin/bash J123048.00+122319.0.sh
#
hasPhotoObj=''
if [[ -n "${BOSS_PHOTOOBJ}" ]]; then
    if [[ -d ${BOSS_PHOTOOBJ}/frames/301 ]]; then
        echo "BOSS_PHOTOOBJ detected.  Will attempt to use files on disk."
        hasPhotoObj=True
    fi
fi
for cmd in swarp bzip2 wget; do
    hasCmd=$(which ${cmd} 2>/dev/null)
    if [[ -z "${hasCmd}" ]]; then
        echo "This script requires ${cmd}, which is not in your \$PATH."
        exit 1
    fi
done
if [[ -z "${hasPhotoObj}" ]]; then
    if [[ ! -f frame-i-003804-2-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0204.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0204.fits.bz2 > frame-i-003804-2-0204.fits
    fi
    if [[ ! -f frame-i-003063-2-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0057.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0057.fits.bz2 > frame-i-003063-2-0057.fits
    fi
    if [[ ! -f frame-i-003804-3-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0204.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0204.fits.bz2 > frame-i-003804-3-0204.fits
    fi
    if [[ ! -f frame-i-003063-3-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0058.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0058.fits.bz2 > frame-i-003063-3-0058.fits
    fi
    if [[ ! -f frame-i-003804-3-0206.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0206.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0206.fits.bz2 > frame-i-003804-3-0206.fits
    fi
    if [[ ! -f frame-i-003804-4-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0204.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0204.fits.bz2 > frame-i-003804-4-0204.fits
    fi
    if [[ ! -f frame-i-003805-3-0011.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3805/3/frame-i-003805-3-0011.fits.bz2
        bzip2 -d -c -k frame-i-003805-3-0011.fits.bz2 > frame-i-003805-3-0011.fits
    fi
    if [[ ! -f frame-i-003836-2-0263.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0263.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0263.fits.bz2 > frame-i-003836-2-0263.fits
    fi
    if [[ ! -f frame-i-003836-3-0264.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0264.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0264.fits.bz2 > frame-i-003836-3-0264.fits
    fi
    if [[ ! -f frame-i-003836-3-0265.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0265.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0265.fits.bz2 > frame-i-003836-3-0265.fits
    fi
    if [[ ! -f frame-i-003063-4-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-i-003063-4-0057.fits.bz2
        bzip2 -d -c -k frame-i-003063-4-0057.fits.bz2 > frame-i-003063-4-0057.fits
    fi
    if [[ ! -f frame-i-003063-5-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0057.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0057.fits.bz2 > frame-i-003063-5-0057.fits
    fi
    if [[ ! -f frame-i-003063-1-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-i-003063-1-0054.fits.bz2
        bzip2 -d -c -k frame-i-003063-1-0054.fits.bz2 > frame-i-003063-1-0054.fits
    fi
    if [[ ! -f frame-i-003063-1-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-i-003063-1-0055.fits.bz2
        bzip2 -d -c -k frame-i-003063-1-0055.fits.bz2 > frame-i-003063-1-0055.fits
    fi
    if [[ ! -f frame-i-003804-2-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0202.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0202.fits.bz2 > frame-i-003804-2-0202.fits
    fi
    if [[ ! -f frame-i-003063-2-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0055.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0055.fits.bz2 > frame-i-003063-2-0055.fits
    fi
    if [[ ! -f frame-i-003804-2-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0203.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0203.fits.bz2 > frame-i-003804-2-0203.fits
    fi
    if [[ ! -f frame-i-003063-2-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0056.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0056.fits.bz2 > frame-i-003063-2-0056.fits
    fi
    if [[ ! -f frame-i-003836-1-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-i-003836-1-0259.fits.bz2
        bzip2 -d -c -k frame-i-003836-1-0259.fits.bz2 > frame-i-003836-1-0259.fits
    fi
    if [[ ! -f frame-i-003836-1-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-i-003836-1-0260.fits.bz2
        bzip2 -d -c -k frame-i-003836-1-0260.fits.bz2 > frame-i-003836-1-0260.fits
    fi
    if [[ ! -f frame-i-003063-3-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0053.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0053.fits.bz2 > frame-i-003063-3-0053.fits
    fi
    if [[ ! -f frame-i-003804-3-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0201.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0201.fits.bz2 > frame-i-003804-3-0201.fits
    fi
    if [[ ! -f frame-i-003063-3-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0055.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0055.fits.bz2 > frame-i-003063-3-0055.fits
    fi
    if [[ ! -f frame-i-003804-3-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0203.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0203.fits.bz2 > frame-i-003804-3-0203.fits
    fi
    if [[ ! -f frame-i-003063-3-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0056.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0056.fits.bz2 > frame-i-003063-3-0056.fits
    fi
    if [[ ! -f frame-i-003804-4-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0201.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0201.fits.bz2 > frame-i-003804-4-0201.fits
    fi
    if [[ ! -f frame-i-003804-4-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0202.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0202.fits.bz2 > frame-i-003804-4-0202.fits
    fi
    if [[ ! -f frame-i-003836-2-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0260.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0260.fits.bz2 > frame-i-003836-2-0260.fits
    fi
    if [[ ! -f frame-i-003836-2-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0261.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0261.fits.bz2 > frame-i-003836-2-0261.fits
    fi
    if [[ ! -f frame-i-003836-3-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0259.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0259.fits.bz2 > frame-i-003836-3-0259.fits
    fi
    if [[ ! -f frame-i-003836-3-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0262.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0262.fits.bz2 > frame-i-003836-3-0262.fits
    fi
    if [[ ! -f frame-i-003063-4-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-i-003063-4-0053.fits.bz2
        bzip2 -d -c -k frame-i-003063-4-0053.fits.bz2 > frame-i-003063-4-0053.fits
    fi
    if [[ ! -f frame-i-003063-4-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-i-003063-4-0054.fits.bz2
        bzip2 -d -c -k frame-i-003063-4-0054.fits.bz2 > frame-i-003063-4-0054.fits
    fi
    if [[ ! -f frame-i-003063-4-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-i-003063-4-0055.fits.bz2
        bzip2 -d -c -k frame-i-003063-4-0055.fits.bz2 > frame-i-003063-4-0055.fits
    fi
    if [[ ! -f frame-i-003063-4-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-i-003063-4-0056.fits.bz2
        bzip2 -d -c -k frame-i-003063-4-0056.fits.bz2 > frame-i-003063-4-0056.fits
    fi
    if [[ ! -f frame-i-003804-5-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0200.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0200.fits.bz2 > frame-i-003804-5-0200.fits
    fi
    if [[ ! -f frame-i-003063-5-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0053.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0053.fits.bz2 > frame-i-003063-5-0053.fits
    fi
    if [[ ! -f frame-i-003063-5-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0054.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0054.fits.bz2 > frame-i-003063-5-0054.fits
    fi
    if [[ ! -f frame-i-003063-5-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0055.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0055.fits.bz2 > frame-i-003063-5-0055.fits
    fi
    if [[ ! -f frame-i-003836-4-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0260.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0260.fits.bz2 > frame-i-003836-4-0260.fits
    fi
    if [[ ! -f frame-i-003836-4-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0261.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0261.fits.bz2 > frame-i-003836-4-0261.fits
    fi
    if [[ ! -f frame-i-003836-4-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0262.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0262.fits.bz2 > frame-i-003836-4-0262.fits
    fi
    if [[ ! -f frame-i-003836-5-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-i-003836-5-0259.fits.bz2
        bzip2 -d -c -k frame-i-003836-5-0259.fits.bz2 > frame-i-003836-5-0259.fits
    fi
    if [[ ! -f frame-i-003836-5-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-i-003836-5-0260.fits.bz2
        bzip2 -d -c -k frame-i-003836-5-0260.fits.bz2 > frame-i-003836-5-0260.fits
    fi
    if [[ ! -f frame-i-003063-1-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-i-003063-1-0050.fits.bz2
        bzip2 -d -c -k frame-i-003063-1-0050.fits.bz2 > frame-i-003063-1-0050.fits
    fi
    if [[ ! -f frame-i-003063-1-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-i-003063-1-0051.fits.bz2
        bzip2 -d -c -k frame-i-003063-1-0051.fits.bz2 > frame-i-003063-1-0051.fits
    fi
    if [[ ! -f frame-i-003063-1-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-i-003063-1-0052.fits.bz2
        bzip2 -d -c -k frame-i-003063-1-0052.fits.bz2 > frame-i-003063-1-0052.fits
    fi
    if [[ ! -f frame-i-003063-2-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0049.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0049.fits.bz2 > frame-i-003063-2-0049.fits
    fi
    if [[ ! -f frame-i-003804-2-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0197.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0197.fits.bz2 > frame-i-003804-2-0197.fits
    fi
    if [[ ! -f frame-i-003804-2-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0199.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0199.fits.bz2 > frame-i-003804-2-0199.fits
    fi
    if [[ ! -f frame-i-003836-1-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-i-003836-1-0258.fits.bz2
        bzip2 -d -c -k frame-i-003836-1-0258.fits.bz2 > frame-i-003836-1-0258.fits
    fi
    if [[ ! -f frame-i-003063-3-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0049.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0049.fits.bz2 > frame-i-003063-3-0049.fits
    fi
    if [[ ! -f frame-i-003804-3-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0197.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0197.fits.bz2 > frame-i-003804-3-0197.fits
    fi
    if [[ ! -f frame-i-003063-3-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0050.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0050.fits.bz2 > frame-i-003063-3-0050.fits
    fi
    if [[ ! -f frame-i-003804-3-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0198.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0198.fits.bz2 > frame-i-003804-3-0198.fits
    fi
    if [[ ! -f frame-i-003063-3-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0051.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0051.fits.bz2 > frame-i-003063-3-0051.fits
    fi
    if [[ ! -f frame-i-003804-4-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0197.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0197.fits.bz2 > frame-i-003804-4-0197.fits
    fi
    if [[ ! -f frame-i-003804-4-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0199.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0199.fits.bz2 > frame-i-003804-4-0199.fits
    fi
    if [[ ! -f frame-i-003836-2-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0257.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0257.fits.bz2 > frame-i-003836-2-0257.fits
    fi
    if [[ ! -f frame-i-003836-3-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0257.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0257.fits.bz2 > frame-i-003836-3-0257.fits
    fi
    if [[ ! -f frame-i-003836-3-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0258.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0258.fits.bz2 > frame-i-003836-3-0258.fits
    fi
    if [[ ! -f frame-i-003063-4-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-i-003063-4-0052.fits.bz2
        bzip2 -d -c -k frame-i-003063-4-0052.fits.bz2 > frame-i-003063-4-0052.fits
    fi
    if [[ ! -f frame-i-003804-5-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0196.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0196.fits.bz2 > frame-i-003804-5-0196.fits
    fi
    if [[ ! -f frame-i-003063-5-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0049.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0049.fits.bz2 > frame-i-003063-5-0049.fits
    fi
    if [[ ! -f frame-i-003804-5-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0198.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0198.fits.bz2 > frame-i-003804-5-0198.fits
    fi
    if [[ ! -f frame-i-003804-5-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0199.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0199.fits.bz2 > frame-i-003804-5-0199.fits
    fi
    if [[ ! -f frame-i-003063-5-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0052.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0052.fits.bz2 > frame-i-003063-5-0052.fits
    fi
    if [[ ! -f frame-i-003836-4-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0256.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0256.fits.bz2 > frame-i-003836-4-0256.fits
    fi
    if [[ ! -f frame-i-003836-4-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0257.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0257.fits.bz2 > frame-i-003836-4-0257.fits
    fi
    if [[ ! -f frame-i-003836-4-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0258.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0258.fits.bz2 > frame-i-003836-4-0258.fits
    fi
    if [[ ! -f frame-i-003804-6-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/6/frame-i-003804-6-0199.fits.bz2
        bzip2 -d -c -k frame-i-003804-6-0199.fits.bz2 > frame-i-003804-6-0199.fits
    fi
    if [[ ! -f frame-i-003836-1-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-i-003836-1-0255.fits.bz2
        bzip2 -d -c -k frame-i-003836-1-0255.fits.bz2 > frame-i-003836-1-0255.fits
    fi
    if [[ ! -f frame-i-003063-3-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0046.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0046.fits.bz2 > frame-i-003063-3-0046.fits
    fi
    if [[ ! -f frame-i-003063-3-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0047.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0047.fits.bz2 > frame-i-003063-3-0047.fits
    fi
    if [[ ! -f frame-i-003063-3-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0048.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0048.fits.bz2 > frame-i-003063-3-0048.fits
    fi
    if [[ ! -f frame-i-003804-4-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0193.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0193.fits.bz2 > frame-i-003804-4-0193.fits
    fi
    if [[ ! -f frame-i-003836-2-0253.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0253.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0253.fits.bz2 > frame-i-003836-2-0253.fits
    fi
    if [[ ! -f frame-i-003836-2-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0255.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0255.fits.bz2 > frame-i-003836-2-0255.fits
    fi
    if [[ ! -f frame-i-003836-3-0252.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0252.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0252.fits.bz2 > frame-i-003836-3-0252.fits
    fi
    if [[ ! -f frame-i-003836-3-0254.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0254.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0254.fits.bz2 > frame-i-003836-3-0254.fits
    fi
    if [[ ! -f frame-i-003804-5-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0194.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0194.fits.bz2 > frame-i-003804-5-0194.fits
    fi
    if [[ ! -f frame-i-003836-4-0254.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0254.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0254.fits.bz2 > frame-i-003836-4-0254.fits
    fi
    if [[ ! -f frame-i-003836-4-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0255.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0255.fits.bz2 > frame-i-003836-4-0255.fits
    fi
    if [[ ! -f frame-i-003063-2-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0058.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0058.fits.bz2 > frame-i-003063-2-0058.fits
    fi
    if [[ ! -f frame-i-003063-3-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0057.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0057.fits.bz2 > frame-i-003063-3-0057.fits
    fi
    if [[ ! -f frame-i-003804-3-0205.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0205.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0205.fits.bz2 > frame-i-003804-3-0205.fits
    fi
    if [[ ! -f frame-i-003804-4-0205.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0205.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0205.fits.bz2 > frame-i-003804-4-0205.fits
    fi
    if [[ ! -f frame-i-003804-4-0206.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0206.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0206.fits.bz2 > frame-i-003804-4-0206.fits
    fi
    if [[ ! -f frame-i-003805-4-0011.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3805/4/frame-i-003805-4-0011.fits.bz2
        bzip2 -d -c -k frame-i-003805-4-0011.fits.bz2 > frame-i-003805-4-0011.fits
    fi
    if [[ ! -f frame-i-003836-2-0264.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0264.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0264.fits.bz2 > frame-i-003836-2-0264.fits
    fi
    if [[ ! -f frame-i-003836-3-0263.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0263.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0263.fits.bz2 > frame-i-003836-3-0263.fits
    fi
    if [[ ! -f frame-i-003063-3-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0059.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0059.fits.bz2 > frame-i-003063-3-0059.fits
    fi
    if [[ ! -f frame-i-003063-4-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-i-003063-4-0058.fits.bz2
        bzip2 -d -c -k frame-i-003063-4-0058.fits.bz2 > frame-i-003063-4-0058.fits
    fi
    if [[ ! -f frame-i-003804-5-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0204.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0204.fits.bz2 > frame-i-003804-5-0204.fits
    fi
    if [[ ! -f frame-i-003836-4-0263.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0263.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0263.fits.bz2 > frame-i-003836-4-0263.fits
    fi
    if [[ ! -f frame-i-003836-4-0264.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0264.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0264.fits.bz2 > frame-i-003836-4-0264.fits
    fi
    if [[ ! -f frame-i-003063-1-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-i-003063-1-0053.fits.bz2
        bzip2 -d -c -k frame-i-003063-1-0053.fits.bz2 > frame-i-003063-1-0053.fits
    fi
    if [[ ! -f frame-i-003804-2-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0200.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0200.fits.bz2 > frame-i-003804-2-0200.fits
    fi
    if [[ ! -f frame-i-003063-2-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0053.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0053.fits.bz2 > frame-i-003063-2-0053.fits
    fi
    if [[ ! -f frame-i-003804-2-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0201.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0201.fits.bz2 > frame-i-003804-2-0201.fits
    fi
    if [[ ! -f frame-i-003063-2-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0054.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0054.fits.bz2 > frame-i-003063-2-0054.fits
    fi
    if [[ ! -f frame-i-003836-1-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-i-003836-1-0261.fits.bz2
        bzip2 -d -c -k frame-i-003836-1-0261.fits.bz2 > frame-i-003836-1-0261.fits
    fi
    if [[ ! -f frame-i-003836-1-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-i-003836-1-0262.fits.bz2
        bzip2 -d -c -k frame-i-003836-1-0262.fits.bz2 > frame-i-003836-1-0262.fits
    fi
    if [[ ! -f frame-i-003804-3-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0200.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0200.fits.bz2 > frame-i-003804-3-0200.fits
    fi
    if [[ ! -f frame-i-003063-3-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-i-003063-3-0054.fits.bz2
        bzip2 -d -c -k frame-i-003063-3-0054.fits.bz2 > frame-i-003063-3-0054.fits
    fi
    if [[ ! -f frame-i-003804-3-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0202.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0202.fits.bz2 > frame-i-003804-3-0202.fits
    fi
    if [[ ! -f frame-i-003804-4-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0200.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0200.fits.bz2 > frame-i-003804-4-0200.fits
    fi
    if [[ ! -f frame-i-003804-4-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0203.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0203.fits.bz2 > frame-i-003804-4-0203.fits
    fi
    if [[ ! -f frame-i-003836-2-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0259.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0259.fits.bz2 > frame-i-003836-2-0259.fits
    fi
    if [[ ! -f frame-i-003836-2-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0262.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0262.fits.bz2 > frame-i-003836-2-0262.fits
    fi
    if [[ ! -f frame-i-003836-3-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0260.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0260.fits.bz2 > frame-i-003836-3-0260.fits
    fi
    if [[ ! -f frame-i-003836-3-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0261.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0261.fits.bz2 > frame-i-003836-3-0261.fits
    fi
    if [[ ! -f frame-i-003804-5-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0201.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0201.fits.bz2 > frame-i-003804-5-0201.fits
    fi
    if [[ ! -f frame-i-003804-5-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0202.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0202.fits.bz2 > frame-i-003804-5-0202.fits
    fi
    if [[ ! -f frame-i-003804-5-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0203.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0203.fits.bz2 > frame-i-003804-5-0203.fits
    fi
    if [[ ! -f frame-i-003063-5-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0056.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0056.fits.bz2 > frame-i-003063-5-0056.fits
    fi
    if [[ ! -f frame-i-003836-4-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0259.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0259.fits.bz2 > frame-i-003836-4-0259.fits
    fi
    if [[ ! -f frame-i-003836-5-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-i-003836-5-0261.fits.bz2
        bzip2 -d -c -k frame-i-003836-5-0261.fits.bz2 > frame-i-003836-5-0261.fits
    fi
    if [[ ! -f frame-i-003836-5-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-i-003836-5-0262.fits.bz2
        bzip2 -d -c -k frame-i-003836-5-0262.fits.bz2 > frame-i-003836-5-0262.fits
    fi
    if [[ ! -f frame-i-003804-2-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0196.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0196.fits.bz2 > frame-i-003804-2-0196.fits
    fi
    if [[ ! -f frame-i-003063-2-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0050.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0050.fits.bz2 > frame-i-003063-2-0050.fits
    fi
    if [[ ! -f frame-i-003804-2-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0198.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0198.fits.bz2 > frame-i-003804-2-0198.fits
    fi
    if [[ ! -f frame-i-003063-2-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0051.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0051.fits.bz2 > frame-i-003063-2-0051.fits
    fi
    if [[ ! -f frame-i-003063-2-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0052.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0052.fits.bz2 > frame-i-003063-2-0052.fits
    fi
    if [[ ! -f frame-i-003836-1-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-i-003836-1-0256.fits.bz2
        bzip2 -d -c -k frame-i-003836-1-0256.fits.bz2 > frame-i-003836-1-0256.fits
    fi
    if [[ ! -f frame-i-003836-1-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-i-003836-1-0257.fits.bz2
        bzip2 -d -c -k frame-i-003836-1-0257.fits.bz2 > frame-i-003836-1-0257.fits
    fi
    if [[ ! -f frame-i-003804-3-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0196.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0196.fits.bz2 > frame-i-003804-3-0196.fits
    fi
    if [[ ! -f frame-i-003804-3-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0199.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0199.fits.bz2 > frame-i-003804-3-0199.fits
    fi
    if [[ ! -f frame-i-003804-4-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0196.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0196.fits.bz2 > frame-i-003804-4-0196.fits
    fi
    if [[ ! -f frame-i-003804-4-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0198.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0198.fits.bz2 > frame-i-003804-4-0198.fits
    fi
    if [[ ! -f frame-i-003836-2-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0256.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0256.fits.bz2 > frame-i-003836-2-0256.fits
    fi
    if [[ ! -f frame-i-003836-2-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0258.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0258.fits.bz2 > frame-i-003836-2-0258.fits
    fi
    if [[ ! -f frame-i-003836-3-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0256.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0256.fits.bz2 > frame-i-003836-3-0256.fits
    fi
    if [[ ! -f frame-i-003804-5-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0197.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0197.fits.bz2 > frame-i-003804-5-0197.fits
    fi
    if [[ ! -f frame-i-003063-5-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0050.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0050.fits.bz2 > frame-i-003063-5-0050.fits
    fi
    if [[ ! -f frame-i-003063-5-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0051.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0051.fits.bz2 > frame-i-003063-5-0051.fits
    fi
    if [[ ! -f frame-i-003836-5-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-i-003836-5-0256.fits.bz2
        bzip2 -d -c -k frame-i-003836-5-0256.fits.bz2 > frame-i-003836-5-0256.fits
    fi
    if [[ ! -f frame-i-003836-5-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-i-003836-5-0257.fits.bz2
        bzip2 -d -c -k frame-i-003836-5-0257.fits.bz2 > frame-i-003836-5-0257.fits
    fi
    if [[ ! -f frame-i-003836-5-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-i-003836-5-0258.fits.bz2
        bzip2 -d -c -k frame-i-003836-5-0258.fits.bz2 > frame-i-003836-5-0258.fits
    fi
    if [[ ! -f frame-i-003804-2-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0194.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0194.fits.bz2 > frame-i-003804-2-0194.fits
    fi
    if [[ ! -f frame-i-003063-2-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0047.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0047.fits.bz2 > frame-i-003063-2-0047.fits
    fi
    if [[ ! -f frame-i-003804-2-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-i-003804-2-0195.fits.bz2
        bzip2 -d -c -k frame-i-003804-2-0195.fits.bz2 > frame-i-003804-2-0195.fits
    fi
    if [[ ! -f frame-i-003063-2-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-i-003063-2-0048.fits.bz2
        bzip2 -d -c -k frame-i-003063-2-0048.fits.bz2 > frame-i-003063-2-0048.fits
    fi
    if [[ ! -f frame-i-003804-3-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0193.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0193.fits.bz2 > frame-i-003804-3-0193.fits
    fi
    if [[ ! -f frame-i-003804-3-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0194.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0194.fits.bz2 > frame-i-003804-3-0194.fits
    fi
    if [[ ! -f frame-i-003804-3-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-i-003804-3-0195.fits.bz2
        bzip2 -d -c -k frame-i-003804-3-0195.fits.bz2 > frame-i-003804-3-0195.fits
    fi
    if [[ ! -f frame-i-003804-4-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0194.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0194.fits.bz2 > frame-i-003804-4-0194.fits
    fi
    if [[ ! -f frame-i-003804-4-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-i-003804-4-0195.fits.bz2
        bzip2 -d -c -k frame-i-003804-4-0195.fits.bz2 > frame-i-003804-4-0195.fits
    fi
    if [[ ! -f frame-i-003836-2-0254.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-i-003836-2-0254.fits.bz2
        bzip2 -d -c -k frame-i-003836-2-0254.fits.bz2 > frame-i-003836-2-0254.fits
    fi
    if [[ ! -f frame-i-003836-3-0253.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0253.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0253.fits.bz2 > frame-i-003836-3-0253.fits
    fi
    if [[ ! -f frame-i-003836-3-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-i-003836-3-0255.fits.bz2
        bzip2 -d -c -k frame-i-003836-3-0255.fits.bz2 > frame-i-003836-3-0255.fits
    fi
    if [[ ! -f frame-i-003804-5-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-i-003804-5-0195.fits.bz2
        bzip2 -d -c -k frame-i-003804-5-0195.fits.bz2 > frame-i-003804-5-0195.fits
    fi
    if [[ ! -f frame-i-003063-5-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-i-003063-5-0048.fits.bz2
        bzip2 -d -c -k frame-i-003063-5-0048.fits.bz2 > frame-i-003063-5-0048.fits
    fi
    if [[ ! -f frame-i-003836-4-0253.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-i-003836-4-0253.fits.bz2
        bzip2 -d -c -k frame-i-003836-4-0253.fits.bz2 > frame-i-003836-4-0253.fits
    fi
    if [[ ! -f frame-i-003836-5-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-i-003836-5-0255.fits.bz2
        bzip2 -d -c -k frame-i-003836-5-0255.fits.bz2 > frame-i-003836-5-0255.fits
    fi
    if [[ ! -f frame-r-003804-2-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0204.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0204.fits.bz2 > frame-r-003804-2-0204.fits
    fi
    if [[ ! -f frame-r-003063-2-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0057.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0057.fits.bz2 > frame-r-003063-2-0057.fits
    fi
    if [[ ! -f frame-r-003804-3-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0204.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0204.fits.bz2 > frame-r-003804-3-0204.fits
    fi
    if [[ ! -f frame-r-003063-3-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0058.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0058.fits.bz2 > frame-r-003063-3-0058.fits
    fi
    if [[ ! -f frame-r-003804-3-0206.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0206.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0206.fits.bz2 > frame-r-003804-3-0206.fits
    fi
    if [[ ! -f frame-r-003804-4-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0204.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0204.fits.bz2 > frame-r-003804-4-0204.fits
    fi
    if [[ ! -f frame-r-003805-3-0011.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3805/3/frame-r-003805-3-0011.fits.bz2
        bzip2 -d -c -k frame-r-003805-3-0011.fits.bz2 > frame-r-003805-3-0011.fits
    fi
    if [[ ! -f frame-r-003836-2-0263.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0263.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0263.fits.bz2 > frame-r-003836-2-0263.fits
    fi
    if [[ ! -f frame-r-003836-3-0264.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0264.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0264.fits.bz2 > frame-r-003836-3-0264.fits
    fi
    if [[ ! -f frame-r-003836-3-0265.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0265.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0265.fits.bz2 > frame-r-003836-3-0265.fits
    fi
    if [[ ! -f frame-r-003063-4-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-r-003063-4-0057.fits.bz2
        bzip2 -d -c -k frame-r-003063-4-0057.fits.bz2 > frame-r-003063-4-0057.fits
    fi
    if [[ ! -f frame-r-003063-5-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0057.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0057.fits.bz2 > frame-r-003063-5-0057.fits
    fi
    if [[ ! -f frame-r-003063-1-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-r-003063-1-0054.fits.bz2
        bzip2 -d -c -k frame-r-003063-1-0054.fits.bz2 > frame-r-003063-1-0054.fits
    fi
    if [[ ! -f frame-r-003063-1-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-r-003063-1-0055.fits.bz2
        bzip2 -d -c -k frame-r-003063-1-0055.fits.bz2 > frame-r-003063-1-0055.fits
    fi
    if [[ ! -f frame-r-003804-2-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0202.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0202.fits.bz2 > frame-r-003804-2-0202.fits
    fi
    if [[ ! -f frame-r-003063-2-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0055.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0055.fits.bz2 > frame-r-003063-2-0055.fits
    fi
    if [[ ! -f frame-r-003804-2-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0203.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0203.fits.bz2 > frame-r-003804-2-0203.fits
    fi
    if [[ ! -f frame-r-003063-2-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0056.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0056.fits.bz2 > frame-r-003063-2-0056.fits
    fi
    if [[ ! -f frame-r-003836-1-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-r-003836-1-0259.fits.bz2
        bzip2 -d -c -k frame-r-003836-1-0259.fits.bz2 > frame-r-003836-1-0259.fits
    fi
    if [[ ! -f frame-r-003836-1-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-r-003836-1-0260.fits.bz2
        bzip2 -d -c -k frame-r-003836-1-0260.fits.bz2 > frame-r-003836-1-0260.fits
    fi
    if [[ ! -f frame-r-003063-3-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0053.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0053.fits.bz2 > frame-r-003063-3-0053.fits
    fi
    if [[ ! -f frame-r-003804-3-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0201.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0201.fits.bz2 > frame-r-003804-3-0201.fits
    fi
    if [[ ! -f frame-r-003063-3-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0055.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0055.fits.bz2 > frame-r-003063-3-0055.fits
    fi
    if [[ ! -f frame-r-003804-3-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0203.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0203.fits.bz2 > frame-r-003804-3-0203.fits
    fi
    if [[ ! -f frame-r-003063-3-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0056.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0056.fits.bz2 > frame-r-003063-3-0056.fits
    fi
    if [[ ! -f frame-r-003804-4-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0201.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0201.fits.bz2 > frame-r-003804-4-0201.fits
    fi
    if [[ ! -f frame-r-003804-4-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0202.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0202.fits.bz2 > frame-r-003804-4-0202.fits
    fi
    if [[ ! -f frame-r-003836-2-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0260.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0260.fits.bz2 > frame-r-003836-2-0260.fits
    fi
    if [[ ! -f frame-r-003836-2-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0261.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0261.fits.bz2 > frame-r-003836-2-0261.fits
    fi
    if [[ ! -f frame-r-003836-3-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0259.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0259.fits.bz2 > frame-r-003836-3-0259.fits
    fi
    if [[ ! -f frame-r-003836-3-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0262.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0262.fits.bz2 > frame-r-003836-3-0262.fits
    fi
    if [[ ! -f frame-r-003063-4-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-r-003063-4-0053.fits.bz2
        bzip2 -d -c -k frame-r-003063-4-0053.fits.bz2 > frame-r-003063-4-0053.fits
    fi
    if [[ ! -f frame-r-003063-4-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-r-003063-4-0054.fits.bz2
        bzip2 -d -c -k frame-r-003063-4-0054.fits.bz2 > frame-r-003063-4-0054.fits
    fi
    if [[ ! -f frame-r-003063-4-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-r-003063-4-0055.fits.bz2
        bzip2 -d -c -k frame-r-003063-4-0055.fits.bz2 > frame-r-003063-4-0055.fits
    fi
    if [[ ! -f frame-r-003063-4-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-r-003063-4-0056.fits.bz2
        bzip2 -d -c -k frame-r-003063-4-0056.fits.bz2 > frame-r-003063-4-0056.fits
    fi
    if [[ ! -f frame-r-003804-5-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0200.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0200.fits.bz2 > frame-r-003804-5-0200.fits
    fi
    if [[ ! -f frame-r-003063-5-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0053.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0053.fits.bz2 > frame-r-003063-5-0053.fits
    fi
    if [[ ! -f frame-r-003063-5-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0054.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0054.fits.bz2 > frame-r-003063-5-0054.fits
    fi
    if [[ ! -f frame-r-003063-5-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0055.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0055.fits.bz2 > frame-r-003063-5-0055.fits
    fi
    if [[ ! -f frame-r-003836-4-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0260.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0260.fits.bz2 > frame-r-003836-4-0260.fits
    fi
    if [[ ! -f frame-r-003836-4-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0261.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0261.fits.bz2 > frame-r-003836-4-0261.fits
    fi
    if [[ ! -f frame-r-003836-4-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0262.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0262.fits.bz2 > frame-r-003836-4-0262.fits
    fi
    if [[ ! -f frame-r-003836-5-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-r-003836-5-0259.fits.bz2
        bzip2 -d -c -k frame-r-003836-5-0259.fits.bz2 > frame-r-003836-5-0259.fits
    fi
    if [[ ! -f frame-r-003836-5-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-r-003836-5-0260.fits.bz2
        bzip2 -d -c -k frame-r-003836-5-0260.fits.bz2 > frame-r-003836-5-0260.fits
    fi
    if [[ ! -f frame-r-003063-1-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-r-003063-1-0050.fits.bz2
        bzip2 -d -c -k frame-r-003063-1-0050.fits.bz2 > frame-r-003063-1-0050.fits
    fi
    if [[ ! -f frame-r-003063-1-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-r-003063-1-0051.fits.bz2
        bzip2 -d -c -k frame-r-003063-1-0051.fits.bz2 > frame-r-003063-1-0051.fits
    fi
    if [[ ! -f frame-r-003063-1-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-r-003063-1-0052.fits.bz2
        bzip2 -d -c -k frame-r-003063-1-0052.fits.bz2 > frame-r-003063-1-0052.fits
    fi
    if [[ ! -f frame-r-003063-2-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0049.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0049.fits.bz2 > frame-r-003063-2-0049.fits
    fi
    if [[ ! -f frame-r-003804-2-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0197.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0197.fits.bz2 > frame-r-003804-2-0197.fits
    fi
    if [[ ! -f frame-r-003804-2-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0199.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0199.fits.bz2 > frame-r-003804-2-0199.fits
    fi
    if [[ ! -f frame-r-003836-1-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-r-003836-1-0258.fits.bz2
        bzip2 -d -c -k frame-r-003836-1-0258.fits.bz2 > frame-r-003836-1-0258.fits
    fi
    if [[ ! -f frame-r-003063-3-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0049.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0049.fits.bz2 > frame-r-003063-3-0049.fits
    fi
    if [[ ! -f frame-r-003804-3-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0197.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0197.fits.bz2 > frame-r-003804-3-0197.fits
    fi
    if [[ ! -f frame-r-003063-3-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0050.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0050.fits.bz2 > frame-r-003063-3-0050.fits
    fi
    if [[ ! -f frame-r-003804-3-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0198.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0198.fits.bz2 > frame-r-003804-3-0198.fits
    fi
    if [[ ! -f frame-r-003063-3-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0051.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0051.fits.bz2 > frame-r-003063-3-0051.fits
    fi
    if [[ ! -f frame-r-003804-4-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0197.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0197.fits.bz2 > frame-r-003804-4-0197.fits
    fi
    if [[ ! -f frame-r-003804-4-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0199.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0199.fits.bz2 > frame-r-003804-4-0199.fits
    fi
    if [[ ! -f frame-r-003836-2-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0257.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0257.fits.bz2 > frame-r-003836-2-0257.fits
    fi
    if [[ ! -f frame-r-003836-3-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0257.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0257.fits.bz2 > frame-r-003836-3-0257.fits
    fi
    if [[ ! -f frame-r-003836-3-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0258.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0258.fits.bz2 > frame-r-003836-3-0258.fits
    fi
    if [[ ! -f frame-r-003063-4-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-r-003063-4-0052.fits.bz2
        bzip2 -d -c -k frame-r-003063-4-0052.fits.bz2 > frame-r-003063-4-0052.fits
    fi
    if [[ ! -f frame-r-003804-5-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0196.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0196.fits.bz2 > frame-r-003804-5-0196.fits
    fi
    if [[ ! -f frame-r-003063-5-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0049.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0049.fits.bz2 > frame-r-003063-5-0049.fits
    fi
    if [[ ! -f frame-r-003804-5-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0198.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0198.fits.bz2 > frame-r-003804-5-0198.fits
    fi
    if [[ ! -f frame-r-003804-5-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0199.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0199.fits.bz2 > frame-r-003804-5-0199.fits
    fi
    if [[ ! -f frame-r-003063-5-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0052.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0052.fits.bz2 > frame-r-003063-5-0052.fits
    fi
    if [[ ! -f frame-r-003836-4-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0256.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0256.fits.bz2 > frame-r-003836-4-0256.fits
    fi
    if [[ ! -f frame-r-003836-4-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0257.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0257.fits.bz2 > frame-r-003836-4-0257.fits
    fi
    if [[ ! -f frame-r-003836-4-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0258.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0258.fits.bz2 > frame-r-003836-4-0258.fits
    fi
    if [[ ! -f frame-r-003804-6-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/6/frame-r-003804-6-0199.fits.bz2
        bzip2 -d -c -k frame-r-003804-6-0199.fits.bz2 > frame-r-003804-6-0199.fits
    fi
    if [[ ! -f frame-r-003836-1-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-r-003836-1-0255.fits.bz2
        bzip2 -d -c -k frame-r-003836-1-0255.fits.bz2 > frame-r-003836-1-0255.fits
    fi
    if [[ ! -f frame-r-003063-3-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0046.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0046.fits.bz2 > frame-r-003063-3-0046.fits
    fi
    if [[ ! -f frame-r-003063-3-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0047.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0047.fits.bz2 > frame-r-003063-3-0047.fits
    fi
    if [[ ! -f frame-r-003063-3-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0048.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0048.fits.bz2 > frame-r-003063-3-0048.fits
    fi
    if [[ ! -f frame-r-003804-4-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0193.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0193.fits.bz2 > frame-r-003804-4-0193.fits
    fi
    if [[ ! -f frame-r-003836-2-0253.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0253.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0253.fits.bz2 > frame-r-003836-2-0253.fits
    fi
    if [[ ! -f frame-r-003836-2-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0255.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0255.fits.bz2 > frame-r-003836-2-0255.fits
    fi
    if [[ ! -f frame-r-003836-3-0252.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0252.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0252.fits.bz2 > frame-r-003836-3-0252.fits
    fi
    if [[ ! -f frame-r-003836-3-0254.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0254.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0254.fits.bz2 > frame-r-003836-3-0254.fits
    fi
    if [[ ! -f frame-r-003804-5-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0194.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0194.fits.bz2 > frame-r-003804-5-0194.fits
    fi
    if [[ ! -f frame-r-003836-4-0254.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0254.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0254.fits.bz2 > frame-r-003836-4-0254.fits
    fi
    if [[ ! -f frame-r-003836-4-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0255.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0255.fits.bz2 > frame-r-003836-4-0255.fits
    fi
    if [[ ! -f frame-r-003063-2-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0058.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0058.fits.bz2 > frame-r-003063-2-0058.fits
    fi
    if [[ ! -f frame-r-003063-3-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0057.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0057.fits.bz2 > frame-r-003063-3-0057.fits
    fi
    if [[ ! -f frame-r-003804-3-0205.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0205.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0205.fits.bz2 > frame-r-003804-3-0205.fits
    fi
    if [[ ! -f frame-r-003804-4-0205.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0205.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0205.fits.bz2 > frame-r-003804-4-0205.fits
    fi
    if [[ ! -f frame-r-003804-4-0206.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0206.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0206.fits.bz2 > frame-r-003804-4-0206.fits
    fi
    if [[ ! -f frame-r-003805-4-0011.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3805/4/frame-r-003805-4-0011.fits.bz2
        bzip2 -d -c -k frame-r-003805-4-0011.fits.bz2 > frame-r-003805-4-0011.fits
    fi
    if [[ ! -f frame-r-003836-2-0264.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0264.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0264.fits.bz2 > frame-r-003836-2-0264.fits
    fi
    if [[ ! -f frame-r-003836-3-0263.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0263.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0263.fits.bz2 > frame-r-003836-3-0263.fits
    fi
    if [[ ! -f frame-r-003063-3-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0059.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0059.fits.bz2 > frame-r-003063-3-0059.fits
    fi
    if [[ ! -f frame-r-003063-4-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-r-003063-4-0058.fits.bz2
        bzip2 -d -c -k frame-r-003063-4-0058.fits.bz2 > frame-r-003063-4-0058.fits
    fi
    if [[ ! -f frame-r-003804-5-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0204.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0204.fits.bz2 > frame-r-003804-5-0204.fits
    fi
    if [[ ! -f frame-r-003836-4-0263.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0263.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0263.fits.bz2 > frame-r-003836-4-0263.fits
    fi
    if [[ ! -f frame-r-003836-4-0264.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0264.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0264.fits.bz2 > frame-r-003836-4-0264.fits
    fi
    if [[ ! -f frame-r-003063-1-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-r-003063-1-0053.fits.bz2
        bzip2 -d -c -k frame-r-003063-1-0053.fits.bz2 > frame-r-003063-1-0053.fits
    fi
    if [[ ! -f frame-r-003804-2-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0200.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0200.fits.bz2 > frame-r-003804-2-0200.fits
    fi
    if [[ ! -f frame-r-003063-2-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0053.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0053.fits.bz2 > frame-r-003063-2-0053.fits
    fi
    if [[ ! -f frame-r-003804-2-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0201.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0201.fits.bz2 > frame-r-003804-2-0201.fits
    fi
    if [[ ! -f frame-r-003063-2-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0054.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0054.fits.bz2 > frame-r-003063-2-0054.fits
    fi
    if [[ ! -f frame-r-003836-1-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-r-003836-1-0261.fits.bz2
        bzip2 -d -c -k frame-r-003836-1-0261.fits.bz2 > frame-r-003836-1-0261.fits
    fi
    if [[ ! -f frame-r-003836-1-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-r-003836-1-0262.fits.bz2
        bzip2 -d -c -k frame-r-003836-1-0262.fits.bz2 > frame-r-003836-1-0262.fits
    fi
    if [[ ! -f frame-r-003804-3-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0200.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0200.fits.bz2 > frame-r-003804-3-0200.fits
    fi
    if [[ ! -f frame-r-003063-3-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-r-003063-3-0054.fits.bz2
        bzip2 -d -c -k frame-r-003063-3-0054.fits.bz2 > frame-r-003063-3-0054.fits
    fi
    if [[ ! -f frame-r-003804-3-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0202.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0202.fits.bz2 > frame-r-003804-3-0202.fits
    fi
    if [[ ! -f frame-r-003804-4-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0200.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0200.fits.bz2 > frame-r-003804-4-0200.fits
    fi
    if [[ ! -f frame-r-003804-4-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0203.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0203.fits.bz2 > frame-r-003804-4-0203.fits
    fi
    if [[ ! -f frame-r-003836-2-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0259.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0259.fits.bz2 > frame-r-003836-2-0259.fits
    fi
    if [[ ! -f frame-r-003836-2-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0262.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0262.fits.bz2 > frame-r-003836-2-0262.fits
    fi
    if [[ ! -f frame-r-003836-3-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0260.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0260.fits.bz2 > frame-r-003836-3-0260.fits
    fi
    if [[ ! -f frame-r-003836-3-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0261.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0261.fits.bz2 > frame-r-003836-3-0261.fits
    fi
    if [[ ! -f frame-r-003804-5-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0201.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0201.fits.bz2 > frame-r-003804-5-0201.fits
    fi
    if [[ ! -f frame-r-003804-5-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0202.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0202.fits.bz2 > frame-r-003804-5-0202.fits
    fi
    if [[ ! -f frame-r-003804-5-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0203.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0203.fits.bz2 > frame-r-003804-5-0203.fits
    fi
    if [[ ! -f frame-r-003063-5-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0056.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0056.fits.bz2 > frame-r-003063-5-0056.fits
    fi
    if [[ ! -f frame-r-003836-4-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0259.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0259.fits.bz2 > frame-r-003836-4-0259.fits
    fi
    if [[ ! -f frame-r-003836-5-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-r-003836-5-0261.fits.bz2
        bzip2 -d -c -k frame-r-003836-5-0261.fits.bz2 > frame-r-003836-5-0261.fits
    fi
    if [[ ! -f frame-r-003836-5-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-r-003836-5-0262.fits.bz2
        bzip2 -d -c -k frame-r-003836-5-0262.fits.bz2 > frame-r-003836-5-0262.fits
    fi
    if [[ ! -f frame-r-003804-2-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0196.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0196.fits.bz2 > frame-r-003804-2-0196.fits
    fi
    if [[ ! -f frame-r-003063-2-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0050.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0050.fits.bz2 > frame-r-003063-2-0050.fits
    fi
    if [[ ! -f frame-r-003804-2-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0198.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0198.fits.bz2 > frame-r-003804-2-0198.fits
    fi
    if [[ ! -f frame-r-003063-2-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0051.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0051.fits.bz2 > frame-r-003063-2-0051.fits
    fi
    if [[ ! -f frame-r-003063-2-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0052.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0052.fits.bz2 > frame-r-003063-2-0052.fits
    fi
    if [[ ! -f frame-r-003836-1-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-r-003836-1-0256.fits.bz2
        bzip2 -d -c -k frame-r-003836-1-0256.fits.bz2 > frame-r-003836-1-0256.fits
    fi
    if [[ ! -f frame-r-003836-1-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-r-003836-1-0257.fits.bz2
        bzip2 -d -c -k frame-r-003836-1-0257.fits.bz2 > frame-r-003836-1-0257.fits
    fi
    if [[ ! -f frame-r-003804-3-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0196.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0196.fits.bz2 > frame-r-003804-3-0196.fits
    fi
    if [[ ! -f frame-r-003804-3-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0199.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0199.fits.bz2 > frame-r-003804-3-0199.fits
    fi
    if [[ ! -f frame-r-003804-4-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0196.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0196.fits.bz2 > frame-r-003804-4-0196.fits
    fi
    if [[ ! -f frame-r-003804-4-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0198.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0198.fits.bz2 > frame-r-003804-4-0198.fits
    fi
    if [[ ! -f frame-r-003836-2-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0256.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0256.fits.bz2 > frame-r-003836-2-0256.fits
    fi
    if [[ ! -f frame-r-003836-2-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0258.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0258.fits.bz2 > frame-r-003836-2-0258.fits
    fi
    if [[ ! -f frame-r-003836-3-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0256.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0256.fits.bz2 > frame-r-003836-3-0256.fits
    fi
    if [[ ! -f frame-r-003804-5-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0197.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0197.fits.bz2 > frame-r-003804-5-0197.fits
    fi
    if [[ ! -f frame-r-003063-5-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0050.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0050.fits.bz2 > frame-r-003063-5-0050.fits
    fi
    if [[ ! -f frame-r-003063-5-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0051.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0051.fits.bz2 > frame-r-003063-5-0051.fits
    fi
    if [[ ! -f frame-r-003836-5-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-r-003836-5-0256.fits.bz2
        bzip2 -d -c -k frame-r-003836-5-0256.fits.bz2 > frame-r-003836-5-0256.fits
    fi
    if [[ ! -f frame-r-003836-5-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-r-003836-5-0257.fits.bz2
        bzip2 -d -c -k frame-r-003836-5-0257.fits.bz2 > frame-r-003836-5-0257.fits
    fi
    if [[ ! -f frame-r-003836-5-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-r-003836-5-0258.fits.bz2
        bzip2 -d -c -k frame-r-003836-5-0258.fits.bz2 > frame-r-003836-5-0258.fits
    fi
    if [[ ! -f frame-r-003804-2-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0194.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0194.fits.bz2 > frame-r-003804-2-0194.fits
    fi
    if [[ ! -f frame-r-003063-2-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0047.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0047.fits.bz2 > frame-r-003063-2-0047.fits
    fi
    if [[ ! -f frame-r-003804-2-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-r-003804-2-0195.fits.bz2
        bzip2 -d -c -k frame-r-003804-2-0195.fits.bz2 > frame-r-003804-2-0195.fits
    fi
    if [[ ! -f frame-r-003063-2-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-r-003063-2-0048.fits.bz2
        bzip2 -d -c -k frame-r-003063-2-0048.fits.bz2 > frame-r-003063-2-0048.fits
    fi
    if [[ ! -f frame-r-003804-3-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0193.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0193.fits.bz2 > frame-r-003804-3-0193.fits
    fi
    if [[ ! -f frame-r-003804-3-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0194.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0194.fits.bz2 > frame-r-003804-3-0194.fits
    fi
    if [[ ! -f frame-r-003804-3-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-r-003804-3-0195.fits.bz2
        bzip2 -d -c -k frame-r-003804-3-0195.fits.bz2 > frame-r-003804-3-0195.fits
    fi
    if [[ ! -f frame-r-003804-4-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0194.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0194.fits.bz2 > frame-r-003804-4-0194.fits
    fi
    if [[ ! -f frame-r-003804-4-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-r-003804-4-0195.fits.bz2
        bzip2 -d -c -k frame-r-003804-4-0195.fits.bz2 > frame-r-003804-4-0195.fits
    fi
    if [[ ! -f frame-r-003836-2-0254.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-r-003836-2-0254.fits.bz2
        bzip2 -d -c -k frame-r-003836-2-0254.fits.bz2 > frame-r-003836-2-0254.fits
    fi
    if [[ ! -f frame-r-003836-3-0253.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0253.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0253.fits.bz2 > frame-r-003836-3-0253.fits
    fi
    if [[ ! -f frame-r-003836-3-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-r-003836-3-0255.fits.bz2
        bzip2 -d -c -k frame-r-003836-3-0255.fits.bz2 > frame-r-003836-3-0255.fits
    fi
    if [[ ! -f frame-r-003804-5-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-r-003804-5-0195.fits.bz2
        bzip2 -d -c -k frame-r-003804-5-0195.fits.bz2 > frame-r-003804-5-0195.fits
    fi
    if [[ ! -f frame-r-003063-5-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-r-003063-5-0048.fits.bz2
        bzip2 -d -c -k frame-r-003063-5-0048.fits.bz2 > frame-r-003063-5-0048.fits
    fi
    if [[ ! -f frame-r-003836-4-0253.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-r-003836-4-0253.fits.bz2
        bzip2 -d -c -k frame-r-003836-4-0253.fits.bz2 > frame-r-003836-4-0253.fits
    fi
    if [[ ! -f frame-r-003836-5-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-r-003836-5-0255.fits.bz2
        bzip2 -d -c -k frame-r-003836-5-0255.fits.bz2 > frame-r-003836-5-0255.fits
    fi
    if [[ ! -f frame-g-003804-2-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0204.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0204.fits.bz2 > frame-g-003804-2-0204.fits
    fi
    if [[ ! -f frame-g-003063-2-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0057.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0057.fits.bz2 > frame-g-003063-2-0057.fits
    fi
    if [[ ! -f frame-g-003804-3-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0204.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0204.fits.bz2 > frame-g-003804-3-0204.fits
    fi
    if [[ ! -f frame-g-003063-3-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0058.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0058.fits.bz2 > frame-g-003063-3-0058.fits
    fi
    if [[ ! -f frame-g-003804-3-0206.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0206.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0206.fits.bz2 > frame-g-003804-3-0206.fits
    fi
    if [[ ! -f frame-g-003804-4-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0204.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0204.fits.bz2 > frame-g-003804-4-0204.fits
    fi
    if [[ ! -f frame-g-003805-3-0011.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3805/3/frame-g-003805-3-0011.fits.bz2
        bzip2 -d -c -k frame-g-003805-3-0011.fits.bz2 > frame-g-003805-3-0011.fits
    fi
    if [[ ! -f frame-g-003836-2-0263.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0263.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0263.fits.bz2 > frame-g-003836-2-0263.fits
    fi
    if [[ ! -f frame-g-003836-3-0264.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0264.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0264.fits.bz2 > frame-g-003836-3-0264.fits
    fi
    if [[ ! -f frame-g-003836-3-0265.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0265.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0265.fits.bz2 > frame-g-003836-3-0265.fits
    fi
    if [[ ! -f frame-g-003063-4-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-g-003063-4-0057.fits.bz2
        bzip2 -d -c -k frame-g-003063-4-0057.fits.bz2 > frame-g-003063-4-0057.fits
    fi
    if [[ ! -f frame-g-003063-5-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0057.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0057.fits.bz2 > frame-g-003063-5-0057.fits
    fi
    if [[ ! -f frame-g-003063-1-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-g-003063-1-0054.fits.bz2
        bzip2 -d -c -k frame-g-003063-1-0054.fits.bz2 > frame-g-003063-1-0054.fits
    fi
    if [[ ! -f frame-g-003063-1-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-g-003063-1-0055.fits.bz2
        bzip2 -d -c -k frame-g-003063-1-0055.fits.bz2 > frame-g-003063-1-0055.fits
    fi
    if [[ ! -f frame-g-003804-2-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0202.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0202.fits.bz2 > frame-g-003804-2-0202.fits
    fi
    if [[ ! -f frame-g-003063-2-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0055.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0055.fits.bz2 > frame-g-003063-2-0055.fits
    fi
    if [[ ! -f frame-g-003804-2-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0203.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0203.fits.bz2 > frame-g-003804-2-0203.fits
    fi
    if [[ ! -f frame-g-003063-2-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0056.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0056.fits.bz2 > frame-g-003063-2-0056.fits
    fi
    if [[ ! -f frame-g-003836-1-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-g-003836-1-0259.fits.bz2
        bzip2 -d -c -k frame-g-003836-1-0259.fits.bz2 > frame-g-003836-1-0259.fits
    fi
    if [[ ! -f frame-g-003836-1-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-g-003836-1-0260.fits.bz2
        bzip2 -d -c -k frame-g-003836-1-0260.fits.bz2 > frame-g-003836-1-0260.fits
    fi
    if [[ ! -f frame-g-003063-3-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0053.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0053.fits.bz2 > frame-g-003063-3-0053.fits
    fi
    if [[ ! -f frame-g-003804-3-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0201.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0201.fits.bz2 > frame-g-003804-3-0201.fits
    fi
    if [[ ! -f frame-g-003063-3-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0055.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0055.fits.bz2 > frame-g-003063-3-0055.fits
    fi
    if [[ ! -f frame-g-003804-3-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0203.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0203.fits.bz2 > frame-g-003804-3-0203.fits
    fi
    if [[ ! -f frame-g-003063-3-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0056.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0056.fits.bz2 > frame-g-003063-3-0056.fits
    fi
    if [[ ! -f frame-g-003804-4-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0201.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0201.fits.bz2 > frame-g-003804-4-0201.fits
    fi
    if [[ ! -f frame-g-003804-4-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0202.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0202.fits.bz2 > frame-g-003804-4-0202.fits
    fi
    if [[ ! -f frame-g-003836-2-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0260.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0260.fits.bz2 > frame-g-003836-2-0260.fits
    fi
    if [[ ! -f frame-g-003836-2-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0261.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0261.fits.bz2 > frame-g-003836-2-0261.fits
    fi
    if [[ ! -f frame-g-003836-3-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0259.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0259.fits.bz2 > frame-g-003836-3-0259.fits
    fi
    if [[ ! -f frame-g-003836-3-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0262.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0262.fits.bz2 > frame-g-003836-3-0262.fits
    fi
    if [[ ! -f frame-g-003063-4-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-g-003063-4-0053.fits.bz2
        bzip2 -d -c -k frame-g-003063-4-0053.fits.bz2 > frame-g-003063-4-0053.fits
    fi
    if [[ ! -f frame-g-003063-4-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-g-003063-4-0054.fits.bz2
        bzip2 -d -c -k frame-g-003063-4-0054.fits.bz2 > frame-g-003063-4-0054.fits
    fi
    if [[ ! -f frame-g-003063-4-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-g-003063-4-0055.fits.bz2
        bzip2 -d -c -k frame-g-003063-4-0055.fits.bz2 > frame-g-003063-4-0055.fits
    fi
    if [[ ! -f frame-g-003063-4-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-g-003063-4-0056.fits.bz2
        bzip2 -d -c -k frame-g-003063-4-0056.fits.bz2 > frame-g-003063-4-0056.fits
    fi
    if [[ ! -f frame-g-003804-5-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0200.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0200.fits.bz2 > frame-g-003804-5-0200.fits
    fi
    if [[ ! -f frame-g-003063-5-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0053.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0053.fits.bz2 > frame-g-003063-5-0053.fits
    fi
    if [[ ! -f frame-g-003063-5-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0054.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0054.fits.bz2 > frame-g-003063-5-0054.fits
    fi
    if [[ ! -f frame-g-003063-5-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0055.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0055.fits.bz2 > frame-g-003063-5-0055.fits
    fi
    if [[ ! -f frame-g-003836-4-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0260.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0260.fits.bz2 > frame-g-003836-4-0260.fits
    fi
    if [[ ! -f frame-g-003836-4-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0261.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0261.fits.bz2 > frame-g-003836-4-0261.fits
    fi
    if [[ ! -f frame-g-003836-4-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0262.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0262.fits.bz2 > frame-g-003836-4-0262.fits
    fi
    if [[ ! -f frame-g-003836-5-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-g-003836-5-0259.fits.bz2
        bzip2 -d -c -k frame-g-003836-5-0259.fits.bz2 > frame-g-003836-5-0259.fits
    fi
    if [[ ! -f frame-g-003836-5-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-g-003836-5-0260.fits.bz2
        bzip2 -d -c -k frame-g-003836-5-0260.fits.bz2 > frame-g-003836-5-0260.fits
    fi
    if [[ ! -f frame-g-003063-1-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-g-003063-1-0050.fits.bz2
        bzip2 -d -c -k frame-g-003063-1-0050.fits.bz2 > frame-g-003063-1-0050.fits
    fi
    if [[ ! -f frame-g-003063-1-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-g-003063-1-0051.fits.bz2
        bzip2 -d -c -k frame-g-003063-1-0051.fits.bz2 > frame-g-003063-1-0051.fits
    fi
    if [[ ! -f frame-g-003063-1-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-g-003063-1-0052.fits.bz2
        bzip2 -d -c -k frame-g-003063-1-0052.fits.bz2 > frame-g-003063-1-0052.fits
    fi
    if [[ ! -f frame-g-003063-2-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0049.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0049.fits.bz2 > frame-g-003063-2-0049.fits
    fi
    if [[ ! -f frame-g-003804-2-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0197.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0197.fits.bz2 > frame-g-003804-2-0197.fits
    fi
    if [[ ! -f frame-g-003804-2-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0199.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0199.fits.bz2 > frame-g-003804-2-0199.fits
    fi
    if [[ ! -f frame-g-003836-1-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-g-003836-1-0258.fits.bz2
        bzip2 -d -c -k frame-g-003836-1-0258.fits.bz2 > frame-g-003836-1-0258.fits
    fi
    if [[ ! -f frame-g-003063-3-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0049.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0049.fits.bz2 > frame-g-003063-3-0049.fits
    fi
    if [[ ! -f frame-g-003804-3-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0197.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0197.fits.bz2 > frame-g-003804-3-0197.fits
    fi
    if [[ ! -f frame-g-003063-3-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0050.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0050.fits.bz2 > frame-g-003063-3-0050.fits
    fi
    if [[ ! -f frame-g-003804-3-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0198.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0198.fits.bz2 > frame-g-003804-3-0198.fits
    fi
    if [[ ! -f frame-g-003063-3-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0051.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0051.fits.bz2 > frame-g-003063-3-0051.fits
    fi
    if [[ ! -f frame-g-003804-4-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0197.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0197.fits.bz2 > frame-g-003804-4-0197.fits
    fi
    if [[ ! -f frame-g-003804-4-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0199.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0199.fits.bz2 > frame-g-003804-4-0199.fits
    fi
    if [[ ! -f frame-g-003836-2-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0257.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0257.fits.bz2 > frame-g-003836-2-0257.fits
    fi
    if [[ ! -f frame-g-003836-3-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0257.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0257.fits.bz2 > frame-g-003836-3-0257.fits
    fi
    if [[ ! -f frame-g-003836-3-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0258.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0258.fits.bz2 > frame-g-003836-3-0258.fits
    fi
    if [[ ! -f frame-g-003063-4-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-g-003063-4-0052.fits.bz2
        bzip2 -d -c -k frame-g-003063-4-0052.fits.bz2 > frame-g-003063-4-0052.fits
    fi
    if [[ ! -f frame-g-003804-5-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0196.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0196.fits.bz2 > frame-g-003804-5-0196.fits
    fi
    if [[ ! -f frame-g-003063-5-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0049.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0049.fits.bz2 > frame-g-003063-5-0049.fits
    fi
    if [[ ! -f frame-g-003804-5-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0198.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0198.fits.bz2 > frame-g-003804-5-0198.fits
    fi
    if [[ ! -f frame-g-003804-5-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0199.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0199.fits.bz2 > frame-g-003804-5-0199.fits
    fi
    if [[ ! -f frame-g-003063-5-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0052.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0052.fits.bz2 > frame-g-003063-5-0052.fits
    fi
    if [[ ! -f frame-g-003836-4-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0256.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0256.fits.bz2 > frame-g-003836-4-0256.fits
    fi
    if [[ ! -f frame-g-003836-4-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0257.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0257.fits.bz2 > frame-g-003836-4-0257.fits
    fi
    if [[ ! -f frame-g-003836-4-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0258.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0258.fits.bz2 > frame-g-003836-4-0258.fits
    fi
    if [[ ! -f frame-g-003804-6-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/6/frame-g-003804-6-0199.fits.bz2
        bzip2 -d -c -k frame-g-003804-6-0199.fits.bz2 > frame-g-003804-6-0199.fits
    fi
    if [[ ! -f frame-g-003836-1-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-g-003836-1-0255.fits.bz2
        bzip2 -d -c -k frame-g-003836-1-0255.fits.bz2 > frame-g-003836-1-0255.fits
    fi
    if [[ ! -f frame-g-003063-3-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0046.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0046.fits.bz2 > frame-g-003063-3-0046.fits
    fi
    if [[ ! -f frame-g-003063-3-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0047.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0047.fits.bz2 > frame-g-003063-3-0047.fits
    fi
    if [[ ! -f frame-g-003063-3-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0048.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0048.fits.bz2 > frame-g-003063-3-0048.fits
    fi
    if [[ ! -f frame-g-003804-4-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0193.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0193.fits.bz2 > frame-g-003804-4-0193.fits
    fi
    if [[ ! -f frame-g-003836-2-0253.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0253.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0253.fits.bz2 > frame-g-003836-2-0253.fits
    fi
    if [[ ! -f frame-g-003836-2-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0255.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0255.fits.bz2 > frame-g-003836-2-0255.fits
    fi
    if [[ ! -f frame-g-003836-3-0252.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0252.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0252.fits.bz2 > frame-g-003836-3-0252.fits
    fi
    if [[ ! -f frame-g-003836-3-0254.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0254.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0254.fits.bz2 > frame-g-003836-3-0254.fits
    fi
    if [[ ! -f frame-g-003804-5-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0194.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0194.fits.bz2 > frame-g-003804-5-0194.fits
    fi
    if [[ ! -f frame-g-003836-4-0254.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0254.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0254.fits.bz2 > frame-g-003836-4-0254.fits
    fi
    if [[ ! -f frame-g-003836-4-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0255.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0255.fits.bz2 > frame-g-003836-4-0255.fits
    fi
    if [[ ! -f frame-g-003063-2-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0058.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0058.fits.bz2 > frame-g-003063-2-0058.fits
    fi
    if [[ ! -f frame-g-003063-3-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0057.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0057.fits.bz2 > frame-g-003063-3-0057.fits
    fi
    if [[ ! -f frame-g-003804-3-0205.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0205.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0205.fits.bz2 > frame-g-003804-3-0205.fits
    fi
    if [[ ! -f frame-g-003804-4-0205.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0205.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0205.fits.bz2 > frame-g-003804-4-0205.fits
    fi
    if [[ ! -f frame-g-003804-4-0206.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0206.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0206.fits.bz2 > frame-g-003804-4-0206.fits
    fi
    if [[ ! -f frame-g-003805-4-0011.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3805/4/frame-g-003805-4-0011.fits.bz2
        bzip2 -d -c -k frame-g-003805-4-0011.fits.bz2 > frame-g-003805-4-0011.fits
    fi
    if [[ ! -f frame-g-003836-2-0264.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0264.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0264.fits.bz2 > frame-g-003836-2-0264.fits
    fi
    if [[ ! -f frame-g-003836-3-0263.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0263.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0263.fits.bz2 > frame-g-003836-3-0263.fits
    fi
    if [[ ! -f frame-g-003063-3-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0059.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0059.fits.bz2 > frame-g-003063-3-0059.fits
    fi
    if [[ ! -f frame-g-003063-4-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/4/frame-g-003063-4-0058.fits.bz2
        bzip2 -d -c -k frame-g-003063-4-0058.fits.bz2 > frame-g-003063-4-0058.fits
    fi
    if [[ ! -f frame-g-003804-5-0204.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0204.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0204.fits.bz2 > frame-g-003804-5-0204.fits
    fi
    if [[ ! -f frame-g-003836-4-0263.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0263.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0263.fits.bz2 > frame-g-003836-4-0263.fits
    fi
    if [[ ! -f frame-g-003836-4-0264.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0264.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0264.fits.bz2 > frame-g-003836-4-0264.fits
    fi
    if [[ ! -f frame-g-003063-1-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/1/frame-g-003063-1-0053.fits.bz2
        bzip2 -d -c -k frame-g-003063-1-0053.fits.bz2 > frame-g-003063-1-0053.fits
    fi
    if [[ ! -f frame-g-003804-2-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0200.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0200.fits.bz2 > frame-g-003804-2-0200.fits
    fi
    if [[ ! -f frame-g-003063-2-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0053.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0053.fits.bz2 > frame-g-003063-2-0053.fits
    fi
    if [[ ! -f frame-g-003804-2-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0201.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0201.fits.bz2 > frame-g-003804-2-0201.fits
    fi
    if [[ ! -f frame-g-003063-2-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0054.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0054.fits.bz2 > frame-g-003063-2-0054.fits
    fi
    if [[ ! -f frame-g-003836-1-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-g-003836-1-0261.fits.bz2
        bzip2 -d -c -k frame-g-003836-1-0261.fits.bz2 > frame-g-003836-1-0261.fits
    fi
    if [[ ! -f frame-g-003836-1-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-g-003836-1-0262.fits.bz2
        bzip2 -d -c -k frame-g-003836-1-0262.fits.bz2 > frame-g-003836-1-0262.fits
    fi
    if [[ ! -f frame-g-003804-3-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0200.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0200.fits.bz2 > frame-g-003804-3-0200.fits
    fi
    if [[ ! -f frame-g-003063-3-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/3/frame-g-003063-3-0054.fits.bz2
        bzip2 -d -c -k frame-g-003063-3-0054.fits.bz2 > frame-g-003063-3-0054.fits
    fi
    if [[ ! -f frame-g-003804-3-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0202.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0202.fits.bz2 > frame-g-003804-3-0202.fits
    fi
    if [[ ! -f frame-g-003804-4-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0200.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0200.fits.bz2 > frame-g-003804-4-0200.fits
    fi
    if [[ ! -f frame-g-003804-4-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0203.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0203.fits.bz2 > frame-g-003804-4-0203.fits
    fi
    if [[ ! -f frame-g-003836-2-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0259.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0259.fits.bz2 > frame-g-003836-2-0259.fits
    fi
    if [[ ! -f frame-g-003836-2-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0262.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0262.fits.bz2 > frame-g-003836-2-0262.fits
    fi
    if [[ ! -f frame-g-003836-3-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0260.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0260.fits.bz2 > frame-g-003836-3-0260.fits
    fi
    if [[ ! -f frame-g-003836-3-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0261.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0261.fits.bz2 > frame-g-003836-3-0261.fits
    fi
    if [[ ! -f frame-g-003804-5-0201.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0201.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0201.fits.bz2 > frame-g-003804-5-0201.fits
    fi
    if [[ ! -f frame-g-003804-5-0202.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0202.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0202.fits.bz2 > frame-g-003804-5-0202.fits
    fi
    if [[ ! -f frame-g-003804-5-0203.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0203.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0203.fits.bz2 > frame-g-003804-5-0203.fits
    fi
    if [[ ! -f frame-g-003063-5-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0056.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0056.fits.bz2 > frame-g-003063-5-0056.fits
    fi
    if [[ ! -f frame-g-003836-4-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0259.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0259.fits.bz2 > frame-g-003836-4-0259.fits
    fi
    if [[ ! -f frame-g-003836-5-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-g-003836-5-0261.fits.bz2
        bzip2 -d -c -k frame-g-003836-5-0261.fits.bz2 > frame-g-003836-5-0261.fits
    fi
    if [[ ! -f frame-g-003836-5-0262.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-g-003836-5-0262.fits.bz2
        bzip2 -d -c -k frame-g-003836-5-0262.fits.bz2 > frame-g-003836-5-0262.fits
    fi
    if [[ ! -f frame-g-003804-2-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0196.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0196.fits.bz2 > frame-g-003804-2-0196.fits
    fi
    if [[ ! -f frame-g-003063-2-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0050.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0050.fits.bz2 > frame-g-003063-2-0050.fits
    fi
    if [[ ! -f frame-g-003804-2-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0198.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0198.fits.bz2 > frame-g-003804-2-0198.fits
    fi
    if [[ ! -f frame-g-003063-2-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0051.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0051.fits.bz2 > frame-g-003063-2-0051.fits
    fi
    if [[ ! -f frame-g-003063-2-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0052.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0052.fits.bz2 > frame-g-003063-2-0052.fits
    fi
    if [[ ! -f frame-g-003836-1-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-g-003836-1-0256.fits.bz2
        bzip2 -d -c -k frame-g-003836-1-0256.fits.bz2 > frame-g-003836-1-0256.fits
    fi
    if [[ ! -f frame-g-003836-1-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/1/frame-g-003836-1-0257.fits.bz2
        bzip2 -d -c -k frame-g-003836-1-0257.fits.bz2 > frame-g-003836-1-0257.fits
    fi
    if [[ ! -f frame-g-003804-3-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0196.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0196.fits.bz2 > frame-g-003804-3-0196.fits
    fi
    if [[ ! -f frame-g-003804-3-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0199.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0199.fits.bz2 > frame-g-003804-3-0199.fits
    fi
    if [[ ! -f frame-g-003804-4-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0196.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0196.fits.bz2 > frame-g-003804-4-0196.fits
    fi
    if [[ ! -f frame-g-003804-4-0198.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0198.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0198.fits.bz2 > frame-g-003804-4-0198.fits
    fi
    if [[ ! -f frame-g-003836-2-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0256.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0256.fits.bz2 > frame-g-003836-2-0256.fits
    fi
    if [[ ! -f frame-g-003836-2-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0258.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0258.fits.bz2 > frame-g-003836-2-0258.fits
    fi
    if [[ ! -f frame-g-003836-3-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0256.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0256.fits.bz2 > frame-g-003836-3-0256.fits
    fi
    if [[ ! -f frame-g-003804-5-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0197.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0197.fits.bz2 > frame-g-003804-5-0197.fits
    fi
    if [[ ! -f frame-g-003063-5-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0050.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0050.fits.bz2 > frame-g-003063-5-0050.fits
    fi
    if [[ ! -f frame-g-003063-5-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0051.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0051.fits.bz2 > frame-g-003063-5-0051.fits
    fi
    if [[ ! -f frame-g-003836-5-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-g-003836-5-0256.fits.bz2
        bzip2 -d -c -k frame-g-003836-5-0256.fits.bz2 > frame-g-003836-5-0256.fits
    fi
    if [[ ! -f frame-g-003836-5-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-g-003836-5-0257.fits.bz2
        bzip2 -d -c -k frame-g-003836-5-0257.fits.bz2 > frame-g-003836-5-0257.fits
    fi
    if [[ ! -f frame-g-003836-5-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-g-003836-5-0258.fits.bz2
        bzip2 -d -c -k frame-g-003836-5-0258.fits.bz2 > frame-g-003836-5-0258.fits
    fi
    if [[ ! -f frame-g-003804-2-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0194.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0194.fits.bz2 > frame-g-003804-2-0194.fits
    fi
    if [[ ! -f frame-g-003063-2-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0047.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0047.fits.bz2 > frame-g-003063-2-0047.fits
    fi
    if [[ ! -f frame-g-003804-2-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/2/frame-g-003804-2-0195.fits.bz2
        bzip2 -d -c -k frame-g-003804-2-0195.fits.bz2 > frame-g-003804-2-0195.fits
    fi
    if [[ ! -f frame-g-003063-2-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/2/frame-g-003063-2-0048.fits.bz2
        bzip2 -d -c -k frame-g-003063-2-0048.fits.bz2 > frame-g-003063-2-0048.fits
    fi
    if [[ ! -f frame-g-003804-3-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0193.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0193.fits.bz2 > frame-g-003804-3-0193.fits
    fi
    if [[ ! -f frame-g-003804-3-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0194.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0194.fits.bz2 > frame-g-003804-3-0194.fits
    fi
    if [[ ! -f frame-g-003804-3-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/3/frame-g-003804-3-0195.fits.bz2
        bzip2 -d -c -k frame-g-003804-3-0195.fits.bz2 > frame-g-003804-3-0195.fits
    fi
    if [[ ! -f frame-g-003804-4-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0194.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0194.fits.bz2 > frame-g-003804-4-0194.fits
    fi
    if [[ ! -f frame-g-003804-4-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/4/frame-g-003804-4-0195.fits.bz2
        bzip2 -d -c -k frame-g-003804-4-0195.fits.bz2 > frame-g-003804-4-0195.fits
    fi
    if [[ ! -f frame-g-003836-2-0254.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/2/frame-g-003836-2-0254.fits.bz2
        bzip2 -d -c -k frame-g-003836-2-0254.fits.bz2 > frame-g-003836-2-0254.fits
    fi
    if [[ ! -f frame-g-003836-3-0253.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0253.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0253.fits.bz2 > frame-g-003836-3-0253.fits
    fi
    if [[ ! -f frame-g-003836-3-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/3/frame-g-003836-3-0255.fits.bz2
        bzip2 -d -c -k frame-g-003836-3-0255.fits.bz2 > frame-g-003836-3-0255.fits
    fi
    if [[ ! -f frame-g-003804-5-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3804/5/frame-g-003804-5-0195.fits.bz2
        bzip2 -d -c -k frame-g-003804-5-0195.fits.bz2 > frame-g-003804-5-0195.fits
    fi
    if [[ ! -f frame-g-003063-5-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3063/5/frame-g-003063-5-0048.fits.bz2
        bzip2 -d -c -k frame-g-003063-5-0048.fits.bz2 > frame-g-003063-5-0048.fits
    fi
    if [[ ! -f frame-g-003836-4-0253.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/4/frame-g-003836-4-0253.fits.bz2
        bzip2 -d -c -k frame-g-003836-4-0253.fits.bz2 > frame-g-003836-4-0253.fits
    fi
    if [[ ! -f frame-g-003836-5-0255.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/3836/5/frame-g-003836-5-0255.fits.bz2
        bzip2 -d -c -k frame-g-003836-5-0255.fits.bz2 > frame-g-003836-5-0255.fits
    fi
else
    if [[ ! -f frame-i-003804-2-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0204.fits.bz2 > frame-i-003804-2-0204.fits
    fi
    if [[ ! -f frame-i-003063-2-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0057.fits.bz2 > frame-i-003063-2-0057.fits
    fi
    if [[ ! -f frame-i-003804-3-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0204.fits.bz2 > frame-i-003804-3-0204.fits
    fi
    if [[ ! -f frame-i-003063-3-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0058.fits.bz2 > frame-i-003063-3-0058.fits
    fi
    if [[ ! -f frame-i-003804-3-0206.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0206.fits.bz2 > frame-i-003804-3-0206.fits
    fi
    if [[ ! -f frame-i-003804-4-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0204.fits.bz2 > frame-i-003804-4-0204.fits
    fi
    if [[ ! -f frame-i-003805-3-0011.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3805/3/frame-i-003805-3-0011.fits.bz2 > frame-i-003805-3-0011.fits
    fi
    if [[ ! -f frame-i-003836-2-0263.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0263.fits.bz2 > frame-i-003836-2-0263.fits
    fi
    if [[ ! -f frame-i-003836-3-0264.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0264.fits.bz2 > frame-i-003836-3-0264.fits
    fi
    if [[ ! -f frame-i-003836-3-0265.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0265.fits.bz2 > frame-i-003836-3-0265.fits
    fi
    if [[ ! -f frame-i-003063-4-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-i-003063-4-0057.fits.bz2 > frame-i-003063-4-0057.fits
    fi
    if [[ ! -f frame-i-003063-5-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0057.fits.bz2 > frame-i-003063-5-0057.fits
    fi
    if [[ ! -f frame-i-003063-1-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-i-003063-1-0054.fits.bz2 > frame-i-003063-1-0054.fits
    fi
    if [[ ! -f frame-i-003063-1-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-i-003063-1-0055.fits.bz2 > frame-i-003063-1-0055.fits
    fi
    if [[ ! -f frame-i-003804-2-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0202.fits.bz2 > frame-i-003804-2-0202.fits
    fi
    if [[ ! -f frame-i-003063-2-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0055.fits.bz2 > frame-i-003063-2-0055.fits
    fi
    if [[ ! -f frame-i-003804-2-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0203.fits.bz2 > frame-i-003804-2-0203.fits
    fi
    if [[ ! -f frame-i-003063-2-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0056.fits.bz2 > frame-i-003063-2-0056.fits
    fi
    if [[ ! -f frame-i-003836-1-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-i-003836-1-0259.fits.bz2 > frame-i-003836-1-0259.fits
    fi
    if [[ ! -f frame-i-003836-1-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-i-003836-1-0260.fits.bz2 > frame-i-003836-1-0260.fits
    fi
    if [[ ! -f frame-i-003063-3-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0053.fits.bz2 > frame-i-003063-3-0053.fits
    fi
    if [[ ! -f frame-i-003804-3-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0201.fits.bz2 > frame-i-003804-3-0201.fits
    fi
    if [[ ! -f frame-i-003063-3-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0055.fits.bz2 > frame-i-003063-3-0055.fits
    fi
    if [[ ! -f frame-i-003804-3-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0203.fits.bz2 > frame-i-003804-3-0203.fits
    fi
    if [[ ! -f frame-i-003063-3-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0056.fits.bz2 > frame-i-003063-3-0056.fits
    fi
    if [[ ! -f frame-i-003804-4-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0201.fits.bz2 > frame-i-003804-4-0201.fits
    fi
    if [[ ! -f frame-i-003804-4-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0202.fits.bz2 > frame-i-003804-4-0202.fits
    fi
    if [[ ! -f frame-i-003836-2-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0260.fits.bz2 > frame-i-003836-2-0260.fits
    fi
    if [[ ! -f frame-i-003836-2-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0261.fits.bz2 > frame-i-003836-2-0261.fits
    fi
    if [[ ! -f frame-i-003836-3-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0259.fits.bz2 > frame-i-003836-3-0259.fits
    fi
    if [[ ! -f frame-i-003836-3-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0262.fits.bz2 > frame-i-003836-3-0262.fits
    fi
    if [[ ! -f frame-i-003063-4-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-i-003063-4-0053.fits.bz2 > frame-i-003063-4-0053.fits
    fi
    if [[ ! -f frame-i-003063-4-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-i-003063-4-0054.fits.bz2 > frame-i-003063-4-0054.fits
    fi
    if [[ ! -f frame-i-003063-4-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-i-003063-4-0055.fits.bz2 > frame-i-003063-4-0055.fits
    fi
    if [[ ! -f frame-i-003063-4-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-i-003063-4-0056.fits.bz2 > frame-i-003063-4-0056.fits
    fi
    if [[ ! -f frame-i-003804-5-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0200.fits.bz2 > frame-i-003804-5-0200.fits
    fi
    if [[ ! -f frame-i-003063-5-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0053.fits.bz2 > frame-i-003063-5-0053.fits
    fi
    if [[ ! -f frame-i-003063-5-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0054.fits.bz2 > frame-i-003063-5-0054.fits
    fi
    if [[ ! -f frame-i-003063-5-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0055.fits.bz2 > frame-i-003063-5-0055.fits
    fi
    if [[ ! -f frame-i-003836-4-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0260.fits.bz2 > frame-i-003836-4-0260.fits
    fi
    if [[ ! -f frame-i-003836-4-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0261.fits.bz2 > frame-i-003836-4-0261.fits
    fi
    if [[ ! -f frame-i-003836-4-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0262.fits.bz2 > frame-i-003836-4-0262.fits
    fi
    if [[ ! -f frame-i-003836-5-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-i-003836-5-0259.fits.bz2 > frame-i-003836-5-0259.fits
    fi
    if [[ ! -f frame-i-003836-5-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-i-003836-5-0260.fits.bz2 > frame-i-003836-5-0260.fits
    fi
    if [[ ! -f frame-i-003063-1-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-i-003063-1-0050.fits.bz2 > frame-i-003063-1-0050.fits
    fi
    if [[ ! -f frame-i-003063-1-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-i-003063-1-0051.fits.bz2 > frame-i-003063-1-0051.fits
    fi
    if [[ ! -f frame-i-003063-1-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-i-003063-1-0052.fits.bz2 > frame-i-003063-1-0052.fits
    fi
    if [[ ! -f frame-i-003063-2-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0049.fits.bz2 > frame-i-003063-2-0049.fits
    fi
    if [[ ! -f frame-i-003804-2-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0197.fits.bz2 > frame-i-003804-2-0197.fits
    fi
    if [[ ! -f frame-i-003804-2-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0199.fits.bz2 > frame-i-003804-2-0199.fits
    fi
    if [[ ! -f frame-i-003836-1-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-i-003836-1-0258.fits.bz2 > frame-i-003836-1-0258.fits
    fi
    if [[ ! -f frame-i-003063-3-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0049.fits.bz2 > frame-i-003063-3-0049.fits
    fi
    if [[ ! -f frame-i-003804-3-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0197.fits.bz2 > frame-i-003804-3-0197.fits
    fi
    if [[ ! -f frame-i-003063-3-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0050.fits.bz2 > frame-i-003063-3-0050.fits
    fi
    if [[ ! -f frame-i-003804-3-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0198.fits.bz2 > frame-i-003804-3-0198.fits
    fi
    if [[ ! -f frame-i-003063-3-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0051.fits.bz2 > frame-i-003063-3-0051.fits
    fi
    if [[ ! -f frame-i-003804-4-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0197.fits.bz2 > frame-i-003804-4-0197.fits
    fi
    if [[ ! -f frame-i-003804-4-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0199.fits.bz2 > frame-i-003804-4-0199.fits
    fi
    if [[ ! -f frame-i-003836-2-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0257.fits.bz2 > frame-i-003836-2-0257.fits
    fi
    if [[ ! -f frame-i-003836-3-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0257.fits.bz2 > frame-i-003836-3-0257.fits
    fi
    if [[ ! -f frame-i-003836-3-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0258.fits.bz2 > frame-i-003836-3-0258.fits
    fi
    if [[ ! -f frame-i-003063-4-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-i-003063-4-0052.fits.bz2 > frame-i-003063-4-0052.fits
    fi
    if [[ ! -f frame-i-003804-5-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0196.fits.bz2 > frame-i-003804-5-0196.fits
    fi
    if [[ ! -f frame-i-003063-5-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0049.fits.bz2 > frame-i-003063-5-0049.fits
    fi
    if [[ ! -f frame-i-003804-5-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0198.fits.bz2 > frame-i-003804-5-0198.fits
    fi
    if [[ ! -f frame-i-003804-5-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0199.fits.bz2 > frame-i-003804-5-0199.fits
    fi
    if [[ ! -f frame-i-003063-5-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0052.fits.bz2 > frame-i-003063-5-0052.fits
    fi
    if [[ ! -f frame-i-003836-4-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0256.fits.bz2 > frame-i-003836-4-0256.fits
    fi
    if [[ ! -f frame-i-003836-4-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0257.fits.bz2 > frame-i-003836-4-0257.fits
    fi
    if [[ ! -f frame-i-003836-4-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0258.fits.bz2 > frame-i-003836-4-0258.fits
    fi
    if [[ ! -f frame-i-003804-6-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/6/frame-i-003804-6-0199.fits.bz2 > frame-i-003804-6-0199.fits
    fi
    if [[ ! -f frame-i-003836-1-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-i-003836-1-0255.fits.bz2 > frame-i-003836-1-0255.fits
    fi
    if [[ ! -f frame-i-003063-3-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0046.fits.bz2 > frame-i-003063-3-0046.fits
    fi
    if [[ ! -f frame-i-003063-3-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0047.fits.bz2 > frame-i-003063-3-0047.fits
    fi
    if [[ ! -f frame-i-003063-3-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0048.fits.bz2 > frame-i-003063-3-0048.fits
    fi
    if [[ ! -f frame-i-003804-4-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0193.fits.bz2 > frame-i-003804-4-0193.fits
    fi
    if [[ ! -f frame-i-003836-2-0253.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0253.fits.bz2 > frame-i-003836-2-0253.fits
    fi
    if [[ ! -f frame-i-003836-2-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0255.fits.bz2 > frame-i-003836-2-0255.fits
    fi
    if [[ ! -f frame-i-003836-3-0252.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0252.fits.bz2 > frame-i-003836-3-0252.fits
    fi
    if [[ ! -f frame-i-003836-3-0254.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0254.fits.bz2 > frame-i-003836-3-0254.fits
    fi
    if [[ ! -f frame-i-003804-5-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0194.fits.bz2 > frame-i-003804-5-0194.fits
    fi
    if [[ ! -f frame-i-003836-4-0254.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0254.fits.bz2 > frame-i-003836-4-0254.fits
    fi
    if [[ ! -f frame-i-003836-4-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0255.fits.bz2 > frame-i-003836-4-0255.fits
    fi
    if [[ ! -f frame-i-003063-2-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0058.fits.bz2 > frame-i-003063-2-0058.fits
    fi
    if [[ ! -f frame-i-003063-3-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0057.fits.bz2 > frame-i-003063-3-0057.fits
    fi
    if [[ ! -f frame-i-003804-3-0205.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0205.fits.bz2 > frame-i-003804-3-0205.fits
    fi
    if [[ ! -f frame-i-003804-4-0205.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0205.fits.bz2 > frame-i-003804-4-0205.fits
    fi
    if [[ ! -f frame-i-003804-4-0206.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0206.fits.bz2 > frame-i-003804-4-0206.fits
    fi
    if [[ ! -f frame-i-003805-4-0011.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3805/4/frame-i-003805-4-0011.fits.bz2 > frame-i-003805-4-0011.fits
    fi
    if [[ ! -f frame-i-003836-2-0264.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0264.fits.bz2 > frame-i-003836-2-0264.fits
    fi
    if [[ ! -f frame-i-003836-3-0263.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0263.fits.bz2 > frame-i-003836-3-0263.fits
    fi
    if [[ ! -f frame-i-003063-3-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0059.fits.bz2 > frame-i-003063-3-0059.fits
    fi
    if [[ ! -f frame-i-003063-4-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-i-003063-4-0058.fits.bz2 > frame-i-003063-4-0058.fits
    fi
    if [[ ! -f frame-i-003804-5-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0204.fits.bz2 > frame-i-003804-5-0204.fits
    fi
    if [[ ! -f frame-i-003836-4-0263.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0263.fits.bz2 > frame-i-003836-4-0263.fits
    fi
    if [[ ! -f frame-i-003836-4-0264.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0264.fits.bz2 > frame-i-003836-4-0264.fits
    fi
    if [[ ! -f frame-i-003063-1-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-i-003063-1-0053.fits.bz2 > frame-i-003063-1-0053.fits
    fi
    if [[ ! -f frame-i-003804-2-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0200.fits.bz2 > frame-i-003804-2-0200.fits
    fi
    if [[ ! -f frame-i-003063-2-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0053.fits.bz2 > frame-i-003063-2-0053.fits
    fi
    if [[ ! -f frame-i-003804-2-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0201.fits.bz2 > frame-i-003804-2-0201.fits
    fi
    if [[ ! -f frame-i-003063-2-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0054.fits.bz2 > frame-i-003063-2-0054.fits
    fi
    if [[ ! -f frame-i-003836-1-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-i-003836-1-0261.fits.bz2 > frame-i-003836-1-0261.fits
    fi
    if [[ ! -f frame-i-003836-1-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-i-003836-1-0262.fits.bz2 > frame-i-003836-1-0262.fits
    fi
    if [[ ! -f frame-i-003804-3-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0200.fits.bz2 > frame-i-003804-3-0200.fits
    fi
    if [[ ! -f frame-i-003063-3-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-i-003063-3-0054.fits.bz2 > frame-i-003063-3-0054.fits
    fi
    if [[ ! -f frame-i-003804-3-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0202.fits.bz2 > frame-i-003804-3-0202.fits
    fi
    if [[ ! -f frame-i-003804-4-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0200.fits.bz2 > frame-i-003804-4-0200.fits
    fi
    if [[ ! -f frame-i-003804-4-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0203.fits.bz2 > frame-i-003804-4-0203.fits
    fi
    if [[ ! -f frame-i-003836-2-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0259.fits.bz2 > frame-i-003836-2-0259.fits
    fi
    if [[ ! -f frame-i-003836-2-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0262.fits.bz2 > frame-i-003836-2-0262.fits
    fi
    if [[ ! -f frame-i-003836-3-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0260.fits.bz2 > frame-i-003836-3-0260.fits
    fi
    if [[ ! -f frame-i-003836-3-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0261.fits.bz2 > frame-i-003836-3-0261.fits
    fi
    if [[ ! -f frame-i-003804-5-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0201.fits.bz2 > frame-i-003804-5-0201.fits
    fi
    if [[ ! -f frame-i-003804-5-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0202.fits.bz2 > frame-i-003804-5-0202.fits
    fi
    if [[ ! -f frame-i-003804-5-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0203.fits.bz2 > frame-i-003804-5-0203.fits
    fi
    if [[ ! -f frame-i-003063-5-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0056.fits.bz2 > frame-i-003063-5-0056.fits
    fi
    if [[ ! -f frame-i-003836-4-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0259.fits.bz2 > frame-i-003836-4-0259.fits
    fi
    if [[ ! -f frame-i-003836-5-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-i-003836-5-0261.fits.bz2 > frame-i-003836-5-0261.fits
    fi
    if [[ ! -f frame-i-003836-5-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-i-003836-5-0262.fits.bz2 > frame-i-003836-5-0262.fits
    fi
    if [[ ! -f frame-i-003804-2-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0196.fits.bz2 > frame-i-003804-2-0196.fits
    fi
    if [[ ! -f frame-i-003063-2-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0050.fits.bz2 > frame-i-003063-2-0050.fits
    fi
    if [[ ! -f frame-i-003804-2-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0198.fits.bz2 > frame-i-003804-2-0198.fits
    fi
    if [[ ! -f frame-i-003063-2-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0051.fits.bz2 > frame-i-003063-2-0051.fits
    fi
    if [[ ! -f frame-i-003063-2-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0052.fits.bz2 > frame-i-003063-2-0052.fits
    fi
    if [[ ! -f frame-i-003836-1-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-i-003836-1-0256.fits.bz2 > frame-i-003836-1-0256.fits
    fi
    if [[ ! -f frame-i-003836-1-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-i-003836-1-0257.fits.bz2 > frame-i-003836-1-0257.fits
    fi
    if [[ ! -f frame-i-003804-3-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0196.fits.bz2 > frame-i-003804-3-0196.fits
    fi
    if [[ ! -f frame-i-003804-3-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0199.fits.bz2 > frame-i-003804-3-0199.fits
    fi
    if [[ ! -f frame-i-003804-4-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0196.fits.bz2 > frame-i-003804-4-0196.fits
    fi
    if [[ ! -f frame-i-003804-4-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0198.fits.bz2 > frame-i-003804-4-0198.fits
    fi
    if [[ ! -f frame-i-003836-2-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0256.fits.bz2 > frame-i-003836-2-0256.fits
    fi
    if [[ ! -f frame-i-003836-2-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0258.fits.bz2 > frame-i-003836-2-0258.fits
    fi
    if [[ ! -f frame-i-003836-3-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0256.fits.bz2 > frame-i-003836-3-0256.fits
    fi
    if [[ ! -f frame-i-003804-5-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0197.fits.bz2 > frame-i-003804-5-0197.fits
    fi
    if [[ ! -f frame-i-003063-5-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0050.fits.bz2 > frame-i-003063-5-0050.fits
    fi
    if [[ ! -f frame-i-003063-5-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0051.fits.bz2 > frame-i-003063-5-0051.fits
    fi
    if [[ ! -f frame-i-003836-5-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-i-003836-5-0256.fits.bz2 > frame-i-003836-5-0256.fits
    fi
    if [[ ! -f frame-i-003836-5-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-i-003836-5-0257.fits.bz2 > frame-i-003836-5-0257.fits
    fi
    if [[ ! -f frame-i-003836-5-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-i-003836-5-0258.fits.bz2 > frame-i-003836-5-0258.fits
    fi
    if [[ ! -f frame-i-003804-2-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0194.fits.bz2 > frame-i-003804-2-0194.fits
    fi
    if [[ ! -f frame-i-003063-2-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0047.fits.bz2 > frame-i-003063-2-0047.fits
    fi
    if [[ ! -f frame-i-003804-2-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-i-003804-2-0195.fits.bz2 > frame-i-003804-2-0195.fits
    fi
    if [[ ! -f frame-i-003063-2-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-i-003063-2-0048.fits.bz2 > frame-i-003063-2-0048.fits
    fi
    if [[ ! -f frame-i-003804-3-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0193.fits.bz2 > frame-i-003804-3-0193.fits
    fi
    if [[ ! -f frame-i-003804-3-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0194.fits.bz2 > frame-i-003804-3-0194.fits
    fi
    if [[ ! -f frame-i-003804-3-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-i-003804-3-0195.fits.bz2 > frame-i-003804-3-0195.fits
    fi
    if [[ ! -f frame-i-003804-4-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0194.fits.bz2 > frame-i-003804-4-0194.fits
    fi
    if [[ ! -f frame-i-003804-4-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-i-003804-4-0195.fits.bz2 > frame-i-003804-4-0195.fits
    fi
    if [[ ! -f frame-i-003836-2-0254.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-i-003836-2-0254.fits.bz2 > frame-i-003836-2-0254.fits
    fi
    if [[ ! -f frame-i-003836-3-0253.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0253.fits.bz2 > frame-i-003836-3-0253.fits
    fi
    if [[ ! -f frame-i-003836-3-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-i-003836-3-0255.fits.bz2 > frame-i-003836-3-0255.fits
    fi
    if [[ ! -f frame-i-003804-5-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-i-003804-5-0195.fits.bz2 > frame-i-003804-5-0195.fits
    fi
    if [[ ! -f frame-i-003063-5-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-i-003063-5-0048.fits.bz2 > frame-i-003063-5-0048.fits
    fi
    if [[ ! -f frame-i-003836-4-0253.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-i-003836-4-0253.fits.bz2 > frame-i-003836-4-0253.fits
    fi
    if [[ ! -f frame-i-003836-5-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-i-003836-5-0255.fits.bz2 > frame-i-003836-5-0255.fits
    fi
    if [[ ! -f frame-r-003804-2-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0204.fits.bz2 > frame-r-003804-2-0204.fits
    fi
    if [[ ! -f frame-r-003063-2-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0057.fits.bz2 > frame-r-003063-2-0057.fits
    fi
    if [[ ! -f frame-r-003804-3-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0204.fits.bz2 > frame-r-003804-3-0204.fits
    fi
    if [[ ! -f frame-r-003063-3-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0058.fits.bz2 > frame-r-003063-3-0058.fits
    fi
    if [[ ! -f frame-r-003804-3-0206.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0206.fits.bz2 > frame-r-003804-3-0206.fits
    fi
    if [[ ! -f frame-r-003804-4-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0204.fits.bz2 > frame-r-003804-4-0204.fits
    fi
    if [[ ! -f frame-r-003805-3-0011.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3805/3/frame-r-003805-3-0011.fits.bz2 > frame-r-003805-3-0011.fits
    fi
    if [[ ! -f frame-r-003836-2-0263.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0263.fits.bz2 > frame-r-003836-2-0263.fits
    fi
    if [[ ! -f frame-r-003836-3-0264.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0264.fits.bz2 > frame-r-003836-3-0264.fits
    fi
    if [[ ! -f frame-r-003836-3-0265.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0265.fits.bz2 > frame-r-003836-3-0265.fits
    fi
    if [[ ! -f frame-r-003063-4-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-r-003063-4-0057.fits.bz2 > frame-r-003063-4-0057.fits
    fi
    if [[ ! -f frame-r-003063-5-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0057.fits.bz2 > frame-r-003063-5-0057.fits
    fi
    if [[ ! -f frame-r-003063-1-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-r-003063-1-0054.fits.bz2 > frame-r-003063-1-0054.fits
    fi
    if [[ ! -f frame-r-003063-1-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-r-003063-1-0055.fits.bz2 > frame-r-003063-1-0055.fits
    fi
    if [[ ! -f frame-r-003804-2-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0202.fits.bz2 > frame-r-003804-2-0202.fits
    fi
    if [[ ! -f frame-r-003063-2-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0055.fits.bz2 > frame-r-003063-2-0055.fits
    fi
    if [[ ! -f frame-r-003804-2-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0203.fits.bz2 > frame-r-003804-2-0203.fits
    fi
    if [[ ! -f frame-r-003063-2-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0056.fits.bz2 > frame-r-003063-2-0056.fits
    fi
    if [[ ! -f frame-r-003836-1-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-r-003836-1-0259.fits.bz2 > frame-r-003836-1-0259.fits
    fi
    if [[ ! -f frame-r-003836-1-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-r-003836-1-0260.fits.bz2 > frame-r-003836-1-0260.fits
    fi
    if [[ ! -f frame-r-003063-3-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0053.fits.bz2 > frame-r-003063-3-0053.fits
    fi
    if [[ ! -f frame-r-003804-3-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0201.fits.bz2 > frame-r-003804-3-0201.fits
    fi
    if [[ ! -f frame-r-003063-3-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0055.fits.bz2 > frame-r-003063-3-0055.fits
    fi
    if [[ ! -f frame-r-003804-3-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0203.fits.bz2 > frame-r-003804-3-0203.fits
    fi
    if [[ ! -f frame-r-003063-3-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0056.fits.bz2 > frame-r-003063-3-0056.fits
    fi
    if [[ ! -f frame-r-003804-4-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0201.fits.bz2 > frame-r-003804-4-0201.fits
    fi
    if [[ ! -f frame-r-003804-4-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0202.fits.bz2 > frame-r-003804-4-0202.fits
    fi
    if [[ ! -f frame-r-003836-2-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0260.fits.bz2 > frame-r-003836-2-0260.fits
    fi
    if [[ ! -f frame-r-003836-2-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0261.fits.bz2 > frame-r-003836-2-0261.fits
    fi
    if [[ ! -f frame-r-003836-3-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0259.fits.bz2 > frame-r-003836-3-0259.fits
    fi
    if [[ ! -f frame-r-003836-3-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0262.fits.bz2 > frame-r-003836-3-0262.fits
    fi
    if [[ ! -f frame-r-003063-4-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-r-003063-4-0053.fits.bz2 > frame-r-003063-4-0053.fits
    fi
    if [[ ! -f frame-r-003063-4-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-r-003063-4-0054.fits.bz2 > frame-r-003063-4-0054.fits
    fi
    if [[ ! -f frame-r-003063-4-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-r-003063-4-0055.fits.bz2 > frame-r-003063-4-0055.fits
    fi
    if [[ ! -f frame-r-003063-4-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-r-003063-4-0056.fits.bz2 > frame-r-003063-4-0056.fits
    fi
    if [[ ! -f frame-r-003804-5-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0200.fits.bz2 > frame-r-003804-5-0200.fits
    fi
    if [[ ! -f frame-r-003063-5-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0053.fits.bz2 > frame-r-003063-5-0053.fits
    fi
    if [[ ! -f frame-r-003063-5-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0054.fits.bz2 > frame-r-003063-5-0054.fits
    fi
    if [[ ! -f frame-r-003063-5-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0055.fits.bz2 > frame-r-003063-5-0055.fits
    fi
    if [[ ! -f frame-r-003836-4-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0260.fits.bz2 > frame-r-003836-4-0260.fits
    fi
    if [[ ! -f frame-r-003836-4-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0261.fits.bz2 > frame-r-003836-4-0261.fits
    fi
    if [[ ! -f frame-r-003836-4-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0262.fits.bz2 > frame-r-003836-4-0262.fits
    fi
    if [[ ! -f frame-r-003836-5-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-r-003836-5-0259.fits.bz2 > frame-r-003836-5-0259.fits
    fi
    if [[ ! -f frame-r-003836-5-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-r-003836-5-0260.fits.bz2 > frame-r-003836-5-0260.fits
    fi
    if [[ ! -f frame-r-003063-1-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-r-003063-1-0050.fits.bz2 > frame-r-003063-1-0050.fits
    fi
    if [[ ! -f frame-r-003063-1-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-r-003063-1-0051.fits.bz2 > frame-r-003063-1-0051.fits
    fi
    if [[ ! -f frame-r-003063-1-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-r-003063-1-0052.fits.bz2 > frame-r-003063-1-0052.fits
    fi
    if [[ ! -f frame-r-003063-2-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0049.fits.bz2 > frame-r-003063-2-0049.fits
    fi
    if [[ ! -f frame-r-003804-2-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0197.fits.bz2 > frame-r-003804-2-0197.fits
    fi
    if [[ ! -f frame-r-003804-2-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0199.fits.bz2 > frame-r-003804-2-0199.fits
    fi
    if [[ ! -f frame-r-003836-1-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-r-003836-1-0258.fits.bz2 > frame-r-003836-1-0258.fits
    fi
    if [[ ! -f frame-r-003063-3-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0049.fits.bz2 > frame-r-003063-3-0049.fits
    fi
    if [[ ! -f frame-r-003804-3-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0197.fits.bz2 > frame-r-003804-3-0197.fits
    fi
    if [[ ! -f frame-r-003063-3-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0050.fits.bz2 > frame-r-003063-3-0050.fits
    fi
    if [[ ! -f frame-r-003804-3-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0198.fits.bz2 > frame-r-003804-3-0198.fits
    fi
    if [[ ! -f frame-r-003063-3-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0051.fits.bz2 > frame-r-003063-3-0051.fits
    fi
    if [[ ! -f frame-r-003804-4-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0197.fits.bz2 > frame-r-003804-4-0197.fits
    fi
    if [[ ! -f frame-r-003804-4-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0199.fits.bz2 > frame-r-003804-4-0199.fits
    fi
    if [[ ! -f frame-r-003836-2-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0257.fits.bz2 > frame-r-003836-2-0257.fits
    fi
    if [[ ! -f frame-r-003836-3-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0257.fits.bz2 > frame-r-003836-3-0257.fits
    fi
    if [[ ! -f frame-r-003836-3-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0258.fits.bz2 > frame-r-003836-3-0258.fits
    fi
    if [[ ! -f frame-r-003063-4-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-r-003063-4-0052.fits.bz2 > frame-r-003063-4-0052.fits
    fi
    if [[ ! -f frame-r-003804-5-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0196.fits.bz2 > frame-r-003804-5-0196.fits
    fi
    if [[ ! -f frame-r-003063-5-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0049.fits.bz2 > frame-r-003063-5-0049.fits
    fi
    if [[ ! -f frame-r-003804-5-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0198.fits.bz2 > frame-r-003804-5-0198.fits
    fi
    if [[ ! -f frame-r-003804-5-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0199.fits.bz2 > frame-r-003804-5-0199.fits
    fi
    if [[ ! -f frame-r-003063-5-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0052.fits.bz2 > frame-r-003063-5-0052.fits
    fi
    if [[ ! -f frame-r-003836-4-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0256.fits.bz2 > frame-r-003836-4-0256.fits
    fi
    if [[ ! -f frame-r-003836-4-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0257.fits.bz2 > frame-r-003836-4-0257.fits
    fi
    if [[ ! -f frame-r-003836-4-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0258.fits.bz2 > frame-r-003836-4-0258.fits
    fi
    if [[ ! -f frame-r-003804-6-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/6/frame-r-003804-6-0199.fits.bz2 > frame-r-003804-6-0199.fits
    fi
    if [[ ! -f frame-r-003836-1-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-r-003836-1-0255.fits.bz2 > frame-r-003836-1-0255.fits
    fi
    if [[ ! -f frame-r-003063-3-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0046.fits.bz2 > frame-r-003063-3-0046.fits
    fi
    if [[ ! -f frame-r-003063-3-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0047.fits.bz2 > frame-r-003063-3-0047.fits
    fi
    if [[ ! -f frame-r-003063-3-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0048.fits.bz2 > frame-r-003063-3-0048.fits
    fi
    if [[ ! -f frame-r-003804-4-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0193.fits.bz2 > frame-r-003804-4-0193.fits
    fi
    if [[ ! -f frame-r-003836-2-0253.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0253.fits.bz2 > frame-r-003836-2-0253.fits
    fi
    if [[ ! -f frame-r-003836-2-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0255.fits.bz2 > frame-r-003836-2-0255.fits
    fi
    if [[ ! -f frame-r-003836-3-0252.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0252.fits.bz2 > frame-r-003836-3-0252.fits
    fi
    if [[ ! -f frame-r-003836-3-0254.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0254.fits.bz2 > frame-r-003836-3-0254.fits
    fi
    if [[ ! -f frame-r-003804-5-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0194.fits.bz2 > frame-r-003804-5-0194.fits
    fi
    if [[ ! -f frame-r-003836-4-0254.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0254.fits.bz2 > frame-r-003836-4-0254.fits
    fi
    if [[ ! -f frame-r-003836-4-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0255.fits.bz2 > frame-r-003836-4-0255.fits
    fi
    if [[ ! -f frame-r-003063-2-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0058.fits.bz2 > frame-r-003063-2-0058.fits
    fi
    if [[ ! -f frame-r-003063-3-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0057.fits.bz2 > frame-r-003063-3-0057.fits
    fi
    if [[ ! -f frame-r-003804-3-0205.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0205.fits.bz2 > frame-r-003804-3-0205.fits
    fi
    if [[ ! -f frame-r-003804-4-0205.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0205.fits.bz2 > frame-r-003804-4-0205.fits
    fi
    if [[ ! -f frame-r-003804-4-0206.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0206.fits.bz2 > frame-r-003804-4-0206.fits
    fi
    if [[ ! -f frame-r-003805-4-0011.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3805/4/frame-r-003805-4-0011.fits.bz2 > frame-r-003805-4-0011.fits
    fi
    if [[ ! -f frame-r-003836-2-0264.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0264.fits.bz2 > frame-r-003836-2-0264.fits
    fi
    if [[ ! -f frame-r-003836-3-0263.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0263.fits.bz2 > frame-r-003836-3-0263.fits
    fi
    if [[ ! -f frame-r-003063-3-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0059.fits.bz2 > frame-r-003063-3-0059.fits
    fi
    if [[ ! -f frame-r-003063-4-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-r-003063-4-0058.fits.bz2 > frame-r-003063-4-0058.fits
    fi
    if [[ ! -f frame-r-003804-5-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0204.fits.bz2 > frame-r-003804-5-0204.fits
    fi
    if [[ ! -f frame-r-003836-4-0263.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0263.fits.bz2 > frame-r-003836-4-0263.fits
    fi
    if [[ ! -f frame-r-003836-4-0264.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0264.fits.bz2 > frame-r-003836-4-0264.fits
    fi
    if [[ ! -f frame-r-003063-1-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-r-003063-1-0053.fits.bz2 > frame-r-003063-1-0053.fits
    fi
    if [[ ! -f frame-r-003804-2-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0200.fits.bz2 > frame-r-003804-2-0200.fits
    fi
    if [[ ! -f frame-r-003063-2-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0053.fits.bz2 > frame-r-003063-2-0053.fits
    fi
    if [[ ! -f frame-r-003804-2-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0201.fits.bz2 > frame-r-003804-2-0201.fits
    fi
    if [[ ! -f frame-r-003063-2-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0054.fits.bz2 > frame-r-003063-2-0054.fits
    fi
    if [[ ! -f frame-r-003836-1-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-r-003836-1-0261.fits.bz2 > frame-r-003836-1-0261.fits
    fi
    if [[ ! -f frame-r-003836-1-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-r-003836-1-0262.fits.bz2 > frame-r-003836-1-0262.fits
    fi
    if [[ ! -f frame-r-003804-3-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0200.fits.bz2 > frame-r-003804-3-0200.fits
    fi
    if [[ ! -f frame-r-003063-3-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-r-003063-3-0054.fits.bz2 > frame-r-003063-3-0054.fits
    fi
    if [[ ! -f frame-r-003804-3-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0202.fits.bz2 > frame-r-003804-3-0202.fits
    fi
    if [[ ! -f frame-r-003804-4-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0200.fits.bz2 > frame-r-003804-4-0200.fits
    fi
    if [[ ! -f frame-r-003804-4-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0203.fits.bz2 > frame-r-003804-4-0203.fits
    fi
    if [[ ! -f frame-r-003836-2-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0259.fits.bz2 > frame-r-003836-2-0259.fits
    fi
    if [[ ! -f frame-r-003836-2-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0262.fits.bz2 > frame-r-003836-2-0262.fits
    fi
    if [[ ! -f frame-r-003836-3-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0260.fits.bz2 > frame-r-003836-3-0260.fits
    fi
    if [[ ! -f frame-r-003836-3-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0261.fits.bz2 > frame-r-003836-3-0261.fits
    fi
    if [[ ! -f frame-r-003804-5-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0201.fits.bz2 > frame-r-003804-5-0201.fits
    fi
    if [[ ! -f frame-r-003804-5-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0202.fits.bz2 > frame-r-003804-5-0202.fits
    fi
    if [[ ! -f frame-r-003804-5-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0203.fits.bz2 > frame-r-003804-5-0203.fits
    fi
    if [[ ! -f frame-r-003063-5-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0056.fits.bz2 > frame-r-003063-5-0056.fits
    fi
    if [[ ! -f frame-r-003836-4-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0259.fits.bz2 > frame-r-003836-4-0259.fits
    fi
    if [[ ! -f frame-r-003836-5-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-r-003836-5-0261.fits.bz2 > frame-r-003836-5-0261.fits
    fi
    if [[ ! -f frame-r-003836-5-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-r-003836-5-0262.fits.bz2 > frame-r-003836-5-0262.fits
    fi
    if [[ ! -f frame-r-003804-2-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0196.fits.bz2 > frame-r-003804-2-0196.fits
    fi
    if [[ ! -f frame-r-003063-2-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0050.fits.bz2 > frame-r-003063-2-0050.fits
    fi
    if [[ ! -f frame-r-003804-2-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0198.fits.bz2 > frame-r-003804-2-0198.fits
    fi
    if [[ ! -f frame-r-003063-2-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0051.fits.bz2 > frame-r-003063-2-0051.fits
    fi
    if [[ ! -f frame-r-003063-2-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0052.fits.bz2 > frame-r-003063-2-0052.fits
    fi
    if [[ ! -f frame-r-003836-1-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-r-003836-1-0256.fits.bz2 > frame-r-003836-1-0256.fits
    fi
    if [[ ! -f frame-r-003836-1-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-r-003836-1-0257.fits.bz2 > frame-r-003836-1-0257.fits
    fi
    if [[ ! -f frame-r-003804-3-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0196.fits.bz2 > frame-r-003804-3-0196.fits
    fi
    if [[ ! -f frame-r-003804-3-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0199.fits.bz2 > frame-r-003804-3-0199.fits
    fi
    if [[ ! -f frame-r-003804-4-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0196.fits.bz2 > frame-r-003804-4-0196.fits
    fi
    if [[ ! -f frame-r-003804-4-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0198.fits.bz2 > frame-r-003804-4-0198.fits
    fi
    if [[ ! -f frame-r-003836-2-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0256.fits.bz2 > frame-r-003836-2-0256.fits
    fi
    if [[ ! -f frame-r-003836-2-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0258.fits.bz2 > frame-r-003836-2-0258.fits
    fi
    if [[ ! -f frame-r-003836-3-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0256.fits.bz2 > frame-r-003836-3-0256.fits
    fi
    if [[ ! -f frame-r-003804-5-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0197.fits.bz2 > frame-r-003804-5-0197.fits
    fi
    if [[ ! -f frame-r-003063-5-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0050.fits.bz2 > frame-r-003063-5-0050.fits
    fi
    if [[ ! -f frame-r-003063-5-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0051.fits.bz2 > frame-r-003063-5-0051.fits
    fi
    if [[ ! -f frame-r-003836-5-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-r-003836-5-0256.fits.bz2 > frame-r-003836-5-0256.fits
    fi
    if [[ ! -f frame-r-003836-5-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-r-003836-5-0257.fits.bz2 > frame-r-003836-5-0257.fits
    fi
    if [[ ! -f frame-r-003836-5-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-r-003836-5-0258.fits.bz2 > frame-r-003836-5-0258.fits
    fi
    if [[ ! -f frame-r-003804-2-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0194.fits.bz2 > frame-r-003804-2-0194.fits
    fi
    if [[ ! -f frame-r-003063-2-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0047.fits.bz2 > frame-r-003063-2-0047.fits
    fi
    if [[ ! -f frame-r-003804-2-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-r-003804-2-0195.fits.bz2 > frame-r-003804-2-0195.fits
    fi
    if [[ ! -f frame-r-003063-2-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-r-003063-2-0048.fits.bz2 > frame-r-003063-2-0048.fits
    fi
    if [[ ! -f frame-r-003804-3-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0193.fits.bz2 > frame-r-003804-3-0193.fits
    fi
    if [[ ! -f frame-r-003804-3-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0194.fits.bz2 > frame-r-003804-3-0194.fits
    fi
    if [[ ! -f frame-r-003804-3-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-r-003804-3-0195.fits.bz2 > frame-r-003804-3-0195.fits
    fi
    if [[ ! -f frame-r-003804-4-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0194.fits.bz2 > frame-r-003804-4-0194.fits
    fi
    if [[ ! -f frame-r-003804-4-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-r-003804-4-0195.fits.bz2 > frame-r-003804-4-0195.fits
    fi
    if [[ ! -f frame-r-003836-2-0254.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-r-003836-2-0254.fits.bz2 > frame-r-003836-2-0254.fits
    fi
    if [[ ! -f frame-r-003836-3-0253.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0253.fits.bz2 > frame-r-003836-3-0253.fits
    fi
    if [[ ! -f frame-r-003836-3-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-r-003836-3-0255.fits.bz2 > frame-r-003836-3-0255.fits
    fi
    if [[ ! -f frame-r-003804-5-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-r-003804-5-0195.fits.bz2 > frame-r-003804-5-0195.fits
    fi
    if [[ ! -f frame-r-003063-5-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-r-003063-5-0048.fits.bz2 > frame-r-003063-5-0048.fits
    fi
    if [[ ! -f frame-r-003836-4-0253.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-r-003836-4-0253.fits.bz2 > frame-r-003836-4-0253.fits
    fi
    if [[ ! -f frame-r-003836-5-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-r-003836-5-0255.fits.bz2 > frame-r-003836-5-0255.fits
    fi
    if [[ ! -f frame-g-003804-2-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0204.fits.bz2 > frame-g-003804-2-0204.fits
    fi
    if [[ ! -f frame-g-003063-2-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0057.fits.bz2 > frame-g-003063-2-0057.fits
    fi
    if [[ ! -f frame-g-003804-3-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0204.fits.bz2 > frame-g-003804-3-0204.fits
    fi
    if [[ ! -f frame-g-003063-3-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0058.fits.bz2 > frame-g-003063-3-0058.fits
    fi
    if [[ ! -f frame-g-003804-3-0206.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0206.fits.bz2 > frame-g-003804-3-0206.fits
    fi
    if [[ ! -f frame-g-003804-4-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0204.fits.bz2 > frame-g-003804-4-0204.fits
    fi
    if [[ ! -f frame-g-003805-3-0011.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3805/3/frame-g-003805-3-0011.fits.bz2 > frame-g-003805-3-0011.fits
    fi
    if [[ ! -f frame-g-003836-2-0263.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0263.fits.bz2 > frame-g-003836-2-0263.fits
    fi
    if [[ ! -f frame-g-003836-3-0264.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0264.fits.bz2 > frame-g-003836-3-0264.fits
    fi
    if [[ ! -f frame-g-003836-3-0265.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0265.fits.bz2 > frame-g-003836-3-0265.fits
    fi
    if [[ ! -f frame-g-003063-4-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-g-003063-4-0057.fits.bz2 > frame-g-003063-4-0057.fits
    fi
    if [[ ! -f frame-g-003063-5-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0057.fits.bz2 > frame-g-003063-5-0057.fits
    fi
    if [[ ! -f frame-g-003063-1-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-g-003063-1-0054.fits.bz2 > frame-g-003063-1-0054.fits
    fi
    if [[ ! -f frame-g-003063-1-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-g-003063-1-0055.fits.bz2 > frame-g-003063-1-0055.fits
    fi
    if [[ ! -f frame-g-003804-2-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0202.fits.bz2 > frame-g-003804-2-0202.fits
    fi
    if [[ ! -f frame-g-003063-2-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0055.fits.bz2 > frame-g-003063-2-0055.fits
    fi
    if [[ ! -f frame-g-003804-2-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0203.fits.bz2 > frame-g-003804-2-0203.fits
    fi
    if [[ ! -f frame-g-003063-2-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0056.fits.bz2 > frame-g-003063-2-0056.fits
    fi
    if [[ ! -f frame-g-003836-1-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-g-003836-1-0259.fits.bz2 > frame-g-003836-1-0259.fits
    fi
    if [[ ! -f frame-g-003836-1-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-g-003836-1-0260.fits.bz2 > frame-g-003836-1-0260.fits
    fi
    if [[ ! -f frame-g-003063-3-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0053.fits.bz2 > frame-g-003063-3-0053.fits
    fi
    if [[ ! -f frame-g-003804-3-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0201.fits.bz2 > frame-g-003804-3-0201.fits
    fi
    if [[ ! -f frame-g-003063-3-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0055.fits.bz2 > frame-g-003063-3-0055.fits
    fi
    if [[ ! -f frame-g-003804-3-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0203.fits.bz2 > frame-g-003804-3-0203.fits
    fi
    if [[ ! -f frame-g-003063-3-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0056.fits.bz2 > frame-g-003063-3-0056.fits
    fi
    if [[ ! -f frame-g-003804-4-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0201.fits.bz2 > frame-g-003804-4-0201.fits
    fi
    if [[ ! -f frame-g-003804-4-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0202.fits.bz2 > frame-g-003804-4-0202.fits
    fi
    if [[ ! -f frame-g-003836-2-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0260.fits.bz2 > frame-g-003836-2-0260.fits
    fi
    if [[ ! -f frame-g-003836-2-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0261.fits.bz2 > frame-g-003836-2-0261.fits
    fi
    if [[ ! -f frame-g-003836-3-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0259.fits.bz2 > frame-g-003836-3-0259.fits
    fi
    if [[ ! -f frame-g-003836-3-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0262.fits.bz2 > frame-g-003836-3-0262.fits
    fi
    if [[ ! -f frame-g-003063-4-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-g-003063-4-0053.fits.bz2 > frame-g-003063-4-0053.fits
    fi
    if [[ ! -f frame-g-003063-4-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-g-003063-4-0054.fits.bz2 > frame-g-003063-4-0054.fits
    fi
    if [[ ! -f frame-g-003063-4-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-g-003063-4-0055.fits.bz2 > frame-g-003063-4-0055.fits
    fi
    if [[ ! -f frame-g-003063-4-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-g-003063-4-0056.fits.bz2 > frame-g-003063-4-0056.fits
    fi
    if [[ ! -f frame-g-003804-5-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0200.fits.bz2 > frame-g-003804-5-0200.fits
    fi
    if [[ ! -f frame-g-003063-5-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0053.fits.bz2 > frame-g-003063-5-0053.fits
    fi
    if [[ ! -f frame-g-003063-5-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0054.fits.bz2 > frame-g-003063-5-0054.fits
    fi
    if [[ ! -f frame-g-003063-5-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0055.fits.bz2 > frame-g-003063-5-0055.fits
    fi
    if [[ ! -f frame-g-003836-4-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0260.fits.bz2 > frame-g-003836-4-0260.fits
    fi
    if [[ ! -f frame-g-003836-4-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0261.fits.bz2 > frame-g-003836-4-0261.fits
    fi
    if [[ ! -f frame-g-003836-4-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0262.fits.bz2 > frame-g-003836-4-0262.fits
    fi
    if [[ ! -f frame-g-003836-5-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-g-003836-5-0259.fits.bz2 > frame-g-003836-5-0259.fits
    fi
    if [[ ! -f frame-g-003836-5-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-g-003836-5-0260.fits.bz2 > frame-g-003836-5-0260.fits
    fi
    if [[ ! -f frame-g-003063-1-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-g-003063-1-0050.fits.bz2 > frame-g-003063-1-0050.fits
    fi
    if [[ ! -f frame-g-003063-1-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-g-003063-1-0051.fits.bz2 > frame-g-003063-1-0051.fits
    fi
    if [[ ! -f frame-g-003063-1-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-g-003063-1-0052.fits.bz2 > frame-g-003063-1-0052.fits
    fi
    if [[ ! -f frame-g-003063-2-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0049.fits.bz2 > frame-g-003063-2-0049.fits
    fi
    if [[ ! -f frame-g-003804-2-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0197.fits.bz2 > frame-g-003804-2-0197.fits
    fi
    if [[ ! -f frame-g-003804-2-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0199.fits.bz2 > frame-g-003804-2-0199.fits
    fi
    if [[ ! -f frame-g-003836-1-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-g-003836-1-0258.fits.bz2 > frame-g-003836-1-0258.fits
    fi
    if [[ ! -f frame-g-003063-3-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0049.fits.bz2 > frame-g-003063-3-0049.fits
    fi
    if [[ ! -f frame-g-003804-3-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0197.fits.bz2 > frame-g-003804-3-0197.fits
    fi
    if [[ ! -f frame-g-003063-3-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0050.fits.bz2 > frame-g-003063-3-0050.fits
    fi
    if [[ ! -f frame-g-003804-3-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0198.fits.bz2 > frame-g-003804-3-0198.fits
    fi
    if [[ ! -f frame-g-003063-3-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0051.fits.bz2 > frame-g-003063-3-0051.fits
    fi
    if [[ ! -f frame-g-003804-4-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0197.fits.bz2 > frame-g-003804-4-0197.fits
    fi
    if [[ ! -f frame-g-003804-4-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0199.fits.bz2 > frame-g-003804-4-0199.fits
    fi
    if [[ ! -f frame-g-003836-2-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0257.fits.bz2 > frame-g-003836-2-0257.fits
    fi
    if [[ ! -f frame-g-003836-3-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0257.fits.bz2 > frame-g-003836-3-0257.fits
    fi
    if [[ ! -f frame-g-003836-3-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0258.fits.bz2 > frame-g-003836-3-0258.fits
    fi
    if [[ ! -f frame-g-003063-4-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-g-003063-4-0052.fits.bz2 > frame-g-003063-4-0052.fits
    fi
    if [[ ! -f frame-g-003804-5-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0196.fits.bz2 > frame-g-003804-5-0196.fits
    fi
    if [[ ! -f frame-g-003063-5-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0049.fits.bz2 > frame-g-003063-5-0049.fits
    fi
    if [[ ! -f frame-g-003804-5-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0198.fits.bz2 > frame-g-003804-5-0198.fits
    fi
    if [[ ! -f frame-g-003804-5-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0199.fits.bz2 > frame-g-003804-5-0199.fits
    fi
    if [[ ! -f frame-g-003063-5-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0052.fits.bz2 > frame-g-003063-5-0052.fits
    fi
    if [[ ! -f frame-g-003836-4-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0256.fits.bz2 > frame-g-003836-4-0256.fits
    fi
    if [[ ! -f frame-g-003836-4-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0257.fits.bz2 > frame-g-003836-4-0257.fits
    fi
    if [[ ! -f frame-g-003836-4-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0258.fits.bz2 > frame-g-003836-4-0258.fits
    fi
    if [[ ! -f frame-g-003804-6-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/6/frame-g-003804-6-0199.fits.bz2 > frame-g-003804-6-0199.fits
    fi
    if [[ ! -f frame-g-003836-1-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-g-003836-1-0255.fits.bz2 > frame-g-003836-1-0255.fits
    fi
    if [[ ! -f frame-g-003063-3-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0046.fits.bz2 > frame-g-003063-3-0046.fits
    fi
    if [[ ! -f frame-g-003063-3-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0047.fits.bz2 > frame-g-003063-3-0047.fits
    fi
    if [[ ! -f frame-g-003063-3-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0048.fits.bz2 > frame-g-003063-3-0048.fits
    fi
    if [[ ! -f frame-g-003804-4-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0193.fits.bz2 > frame-g-003804-4-0193.fits
    fi
    if [[ ! -f frame-g-003836-2-0253.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0253.fits.bz2 > frame-g-003836-2-0253.fits
    fi
    if [[ ! -f frame-g-003836-2-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0255.fits.bz2 > frame-g-003836-2-0255.fits
    fi
    if [[ ! -f frame-g-003836-3-0252.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0252.fits.bz2 > frame-g-003836-3-0252.fits
    fi
    if [[ ! -f frame-g-003836-3-0254.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0254.fits.bz2 > frame-g-003836-3-0254.fits
    fi
    if [[ ! -f frame-g-003804-5-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0194.fits.bz2 > frame-g-003804-5-0194.fits
    fi
    if [[ ! -f frame-g-003836-4-0254.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0254.fits.bz2 > frame-g-003836-4-0254.fits
    fi
    if [[ ! -f frame-g-003836-4-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0255.fits.bz2 > frame-g-003836-4-0255.fits
    fi
    if [[ ! -f frame-g-003063-2-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0058.fits.bz2 > frame-g-003063-2-0058.fits
    fi
    if [[ ! -f frame-g-003063-3-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0057.fits.bz2 > frame-g-003063-3-0057.fits
    fi
    if [[ ! -f frame-g-003804-3-0205.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0205.fits.bz2 > frame-g-003804-3-0205.fits
    fi
    if [[ ! -f frame-g-003804-4-0205.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0205.fits.bz2 > frame-g-003804-4-0205.fits
    fi
    if [[ ! -f frame-g-003804-4-0206.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0206.fits.bz2 > frame-g-003804-4-0206.fits
    fi
    if [[ ! -f frame-g-003805-4-0011.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3805/4/frame-g-003805-4-0011.fits.bz2 > frame-g-003805-4-0011.fits
    fi
    if [[ ! -f frame-g-003836-2-0264.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0264.fits.bz2 > frame-g-003836-2-0264.fits
    fi
    if [[ ! -f frame-g-003836-3-0263.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0263.fits.bz2 > frame-g-003836-3-0263.fits
    fi
    if [[ ! -f frame-g-003063-3-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0059.fits.bz2 > frame-g-003063-3-0059.fits
    fi
    if [[ ! -f frame-g-003063-4-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/4/frame-g-003063-4-0058.fits.bz2 > frame-g-003063-4-0058.fits
    fi
    if [[ ! -f frame-g-003804-5-0204.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0204.fits.bz2 > frame-g-003804-5-0204.fits
    fi
    if [[ ! -f frame-g-003836-4-0263.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0263.fits.bz2 > frame-g-003836-4-0263.fits
    fi
    if [[ ! -f frame-g-003836-4-0264.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0264.fits.bz2 > frame-g-003836-4-0264.fits
    fi
    if [[ ! -f frame-g-003063-1-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/1/frame-g-003063-1-0053.fits.bz2 > frame-g-003063-1-0053.fits
    fi
    if [[ ! -f frame-g-003804-2-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0200.fits.bz2 > frame-g-003804-2-0200.fits
    fi
    if [[ ! -f frame-g-003063-2-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0053.fits.bz2 > frame-g-003063-2-0053.fits
    fi
    if [[ ! -f frame-g-003804-2-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0201.fits.bz2 > frame-g-003804-2-0201.fits
    fi
    if [[ ! -f frame-g-003063-2-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0054.fits.bz2 > frame-g-003063-2-0054.fits
    fi
    if [[ ! -f frame-g-003836-1-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-g-003836-1-0261.fits.bz2 > frame-g-003836-1-0261.fits
    fi
    if [[ ! -f frame-g-003836-1-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-g-003836-1-0262.fits.bz2 > frame-g-003836-1-0262.fits
    fi
    if [[ ! -f frame-g-003804-3-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0200.fits.bz2 > frame-g-003804-3-0200.fits
    fi
    if [[ ! -f frame-g-003063-3-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/3/frame-g-003063-3-0054.fits.bz2 > frame-g-003063-3-0054.fits
    fi
    if [[ ! -f frame-g-003804-3-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0202.fits.bz2 > frame-g-003804-3-0202.fits
    fi
    if [[ ! -f frame-g-003804-4-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0200.fits.bz2 > frame-g-003804-4-0200.fits
    fi
    if [[ ! -f frame-g-003804-4-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0203.fits.bz2 > frame-g-003804-4-0203.fits
    fi
    if [[ ! -f frame-g-003836-2-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0259.fits.bz2 > frame-g-003836-2-0259.fits
    fi
    if [[ ! -f frame-g-003836-2-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0262.fits.bz2 > frame-g-003836-2-0262.fits
    fi
    if [[ ! -f frame-g-003836-3-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0260.fits.bz2 > frame-g-003836-3-0260.fits
    fi
    if [[ ! -f frame-g-003836-3-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0261.fits.bz2 > frame-g-003836-3-0261.fits
    fi
    if [[ ! -f frame-g-003804-5-0201.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0201.fits.bz2 > frame-g-003804-5-0201.fits
    fi
    if [[ ! -f frame-g-003804-5-0202.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0202.fits.bz2 > frame-g-003804-5-0202.fits
    fi
    if [[ ! -f frame-g-003804-5-0203.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0203.fits.bz2 > frame-g-003804-5-0203.fits
    fi
    if [[ ! -f frame-g-003063-5-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0056.fits.bz2 > frame-g-003063-5-0056.fits
    fi
    if [[ ! -f frame-g-003836-4-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0259.fits.bz2 > frame-g-003836-4-0259.fits
    fi
    if [[ ! -f frame-g-003836-5-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-g-003836-5-0261.fits.bz2 > frame-g-003836-5-0261.fits
    fi
    if [[ ! -f frame-g-003836-5-0262.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-g-003836-5-0262.fits.bz2 > frame-g-003836-5-0262.fits
    fi
    if [[ ! -f frame-g-003804-2-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0196.fits.bz2 > frame-g-003804-2-0196.fits
    fi
    if [[ ! -f frame-g-003063-2-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0050.fits.bz2 > frame-g-003063-2-0050.fits
    fi
    if [[ ! -f frame-g-003804-2-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0198.fits.bz2 > frame-g-003804-2-0198.fits
    fi
    if [[ ! -f frame-g-003063-2-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0051.fits.bz2 > frame-g-003063-2-0051.fits
    fi
    if [[ ! -f frame-g-003063-2-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0052.fits.bz2 > frame-g-003063-2-0052.fits
    fi
    if [[ ! -f frame-g-003836-1-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-g-003836-1-0256.fits.bz2 > frame-g-003836-1-0256.fits
    fi
    if [[ ! -f frame-g-003836-1-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/1/frame-g-003836-1-0257.fits.bz2 > frame-g-003836-1-0257.fits
    fi
    if [[ ! -f frame-g-003804-3-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0196.fits.bz2 > frame-g-003804-3-0196.fits
    fi
    if [[ ! -f frame-g-003804-3-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0199.fits.bz2 > frame-g-003804-3-0199.fits
    fi
    if [[ ! -f frame-g-003804-4-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0196.fits.bz2 > frame-g-003804-4-0196.fits
    fi
    if [[ ! -f frame-g-003804-4-0198.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0198.fits.bz2 > frame-g-003804-4-0198.fits
    fi
    if [[ ! -f frame-g-003836-2-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0256.fits.bz2 > frame-g-003836-2-0256.fits
    fi
    if [[ ! -f frame-g-003836-2-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0258.fits.bz2 > frame-g-003836-2-0258.fits
    fi
    if [[ ! -f frame-g-003836-3-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0256.fits.bz2 > frame-g-003836-3-0256.fits
    fi
    if [[ ! -f frame-g-003804-5-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0197.fits.bz2 > frame-g-003804-5-0197.fits
    fi
    if [[ ! -f frame-g-003063-5-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0050.fits.bz2 > frame-g-003063-5-0050.fits
    fi
    if [[ ! -f frame-g-003063-5-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0051.fits.bz2 > frame-g-003063-5-0051.fits
    fi
    if [[ ! -f frame-g-003836-5-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-g-003836-5-0256.fits.bz2 > frame-g-003836-5-0256.fits
    fi
    if [[ ! -f frame-g-003836-5-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-g-003836-5-0257.fits.bz2 > frame-g-003836-5-0257.fits
    fi
    if [[ ! -f frame-g-003836-5-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-g-003836-5-0258.fits.bz2 > frame-g-003836-5-0258.fits
    fi
    if [[ ! -f frame-g-003804-2-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0194.fits.bz2 > frame-g-003804-2-0194.fits
    fi
    if [[ ! -f frame-g-003063-2-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0047.fits.bz2 > frame-g-003063-2-0047.fits
    fi
    if [[ ! -f frame-g-003804-2-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/2/frame-g-003804-2-0195.fits.bz2 > frame-g-003804-2-0195.fits
    fi
    if [[ ! -f frame-g-003063-2-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/2/frame-g-003063-2-0048.fits.bz2 > frame-g-003063-2-0048.fits
    fi
    if [[ ! -f frame-g-003804-3-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0193.fits.bz2 > frame-g-003804-3-0193.fits
    fi
    if [[ ! -f frame-g-003804-3-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0194.fits.bz2 > frame-g-003804-3-0194.fits
    fi
    if [[ ! -f frame-g-003804-3-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/3/frame-g-003804-3-0195.fits.bz2 > frame-g-003804-3-0195.fits
    fi
    if [[ ! -f frame-g-003804-4-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0194.fits.bz2 > frame-g-003804-4-0194.fits
    fi
    if [[ ! -f frame-g-003804-4-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/4/frame-g-003804-4-0195.fits.bz2 > frame-g-003804-4-0195.fits
    fi
    if [[ ! -f frame-g-003836-2-0254.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/2/frame-g-003836-2-0254.fits.bz2 > frame-g-003836-2-0254.fits
    fi
    if [[ ! -f frame-g-003836-3-0253.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0253.fits.bz2 > frame-g-003836-3-0253.fits
    fi
    if [[ ! -f frame-g-003836-3-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/3/frame-g-003836-3-0255.fits.bz2 > frame-g-003836-3-0255.fits
    fi
    if [[ ! -f frame-g-003804-5-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3804/5/frame-g-003804-5-0195.fits.bz2 > frame-g-003804-5-0195.fits
    fi
    if [[ ! -f frame-g-003063-5-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3063/5/frame-g-003063-5-0048.fits.bz2 > frame-g-003063-5-0048.fits
    fi
    if [[ ! -f frame-g-003836-4-0253.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/4/frame-g-003836-4-0253.fits.bz2 > frame-g-003836-4-0253.fits
    fi
    if [[ ! -f frame-g-003836-5-0255.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/3836/5/frame-g-003836-5-0255.fits.bz2 > frame-g-003836-5-0255.fits
    fi
fi
#
# Filter = i
#
/bin/rm -f default.swarp
cat > default.swarp <<EOT
IMAGEOUT_NAME          J123048.00+122319.0-i.fits      # Output filename
WEIGHTOUT_NAME       J123048.00+122319.0-i.weight.fits # Output weight-map filename

HEADER_ONLY            N               # Only a header as an output file (Y/N)?
HEADER_SUFFIX          .head           # Filename extension for additional headers

#------------------------------- Input Weights --------------------------------

WEIGHT_TYPE            NONE            # BACKGROUND,MAP_RMS,MAP_VARIANCE
                                       # or MAP_WEIGHT
WEIGHT_SUFFIX          weight.fits     # Suffix to use for weight-maps
WEIGHT_IMAGE                           # Weightmap filename if suffix not used
                                       # (all or for each weight-map)

#------------------------------- Co-addition ----------------------------------

COMBINE                Y               # Combine resampled images (Y/N)?
COMBINE_TYPE           MEDIAN          # MEDIAN,AVERAGE,MIN,MAX,WEIGHTED,CHI2
                                       # or SUM

#-------------------------------- Astrometry ----------------------------------

CELESTIAL_TYPE         NATIVE          # NATIVE, PIXEL, EQUATORIAL,
                                       # GALACTIC,ECLIPTIC, or SUPERGALACTIC
PROJECTION_TYPE        TAN             # Any WCS projection code or NONE
PROJECTION_ERR         0.001           # Maximum projection error (in output
                                       # pixels), or 0 for no approximation
CENTER_TYPE            MANUAL          # MANUAL, ALL or MOST
CENTER                       187.7027000000,       12.3887000000 # Image Center
PIXELSCALE_TYPE        MANUAL          # MANUAL,FIT,MIN,MAX or MEDIAN
PIXEL_SCALE            0.396000  # Pixel scale
IMAGE_SIZE             9090,9090 # scale = 0.396127 arcsec/pixel

#-------------------------------- Resampling ----------------------------------

RESAMPLE               Y               # Resample input images (Y/N)?
RESAMPLE_DIR           .               # Directory path for resampled images
RESAMPLE_SUFFIX        .resamp.fits    # filename extension for resampled images

RESAMPLING_TYPE        LANCZOS3        # NEAREST,BILINEAR,LANCZOS2,LANCZOS3
                                       # or LANCZOS4 (1 per axis)
OVERSAMPLING           0               # Oversampling in each dimension
                                       # (0 = automatic)
INTERPOLATE            N               # Interpolate bad input pixels (Y/N)?
                                       # (all or for each image)

FSCALASTRO_TYPE        FIXED           # NONE,FIXED, or VARIABLE
FSCALE_KEYWORD         FLXSCALE        # FITS keyword for the multiplicative
                                       # factor applied to each input image
FSCALE_DEFAULT         1.0             # Default FSCALE value if not in header

GAIN_KEYWORD           GAIN            # FITS keyword for effect. gain (e-/ADU)
GAIN_DEFAULT           0.0             # Default gain if no FITS keyword found

#--------------------------- Background subtraction ---------------------------

SUBTRACT_BACK          N               # Subtraction sky background (Y/N)?
                                       # (all or for each image)

BACK_TYPE              AUTO            # AUTO or MANUAL
                                       # (all or for each image)
BACK_DEFAULT           0.0             # Default background value in MANUAL
                                       # (all or for each image)
BACK_SIZE              128             # Background mesh size (pixels)
                                       # (all or for each image)
BACK_FILTERSIZE        3               # Background map filter range (meshes)
                                       # (all or for each image)

#------------------------------ Memory management -----------------------------

VMEM_DIR               .               # Directory path for swap files
VMEM_MAX               2047            # Maximum amount of virtual memory (MB)
MEM_MAX                2048            # Maximum amount of usable RAM (MB)
COMBINE_BUFSIZE        1024            # Buffer size for combine (MB)

#------------------------------ Miscellaneous ---------------------------------

DELETE_TMPFILES        Y               # Delete temporary resampled FITS files
                                       # (Y/N)?
COPY_KEYWORDS          OBJECT          # List of FITS keywords to propagate
                                       # from the input to the output headers
WRITE_FILEINFO         Y               # Write information about each input
                                       # file in the output image header?
WRITE_XML              N               # Write XML file (Y/N)?
XML_NAME               swarp.xml       # Filename for XML output
VERBOSE_TYPE           QUIET           # QUIET,NORMAL or FULL

NTHREADS               0               # Number of simultaneous threads for
                                       # the SMP version of SWarp
                                       # 0 = automatic

EOT
#
swarp frame-i-003804-2-0204.fits frame-i-003063-2-0057.fits frame-i-003804-3-0204.fits frame-i-003063-3-0058.fits frame-i-003804-3-0206.fits frame-i-003804-4-0204.fits frame-i-003805-3-0011.fits frame-i-003836-2-0263.fits frame-i-003836-3-0264.fits frame-i-003836-3-0265.fits frame-i-003063-4-0057.fits frame-i-003063-5-0057.fits frame-i-003063-1-0054.fits frame-i-003063-1-0055.fits frame-i-003804-2-0202.fits frame-i-003063-2-0055.fits frame-i-003804-2-0203.fits frame-i-003063-2-0056.fits frame-i-003836-1-0259.fits frame-i-003836-1-0260.fits frame-i-003063-3-0053.fits frame-i-003804-3-0201.fits frame-i-003063-3-0055.fits frame-i-003804-3-0203.fits frame-i-003063-3-0056.fits frame-i-003804-4-0201.fits frame-i-003804-4-0202.fits frame-i-003836-2-0260.fits frame-i-003836-2-0261.fits frame-i-003836-3-0259.fits frame-i-003836-3-0262.fits frame-i-003063-4-0053.fits frame-i-003063-4-0054.fits frame-i-003063-4-0055.fits frame-i-003063-4-0056.fits frame-i-003804-5-0200.fits frame-i-003063-5-0053.fits frame-i-003063-5-0054.fits frame-i-003063-5-0055.fits frame-i-003836-4-0260.fits frame-i-003836-4-0261.fits frame-i-003836-4-0262.fits frame-i-003836-5-0259.fits frame-i-003836-5-0260.fits frame-i-003063-1-0050.fits frame-i-003063-1-0051.fits frame-i-003063-1-0052.fits frame-i-003063-2-0049.fits frame-i-003804-2-0197.fits frame-i-003804-2-0199.fits frame-i-003836-1-0258.fits frame-i-003063-3-0049.fits frame-i-003804-3-0197.fits frame-i-003063-3-0050.fits frame-i-003804-3-0198.fits frame-i-003063-3-0051.fits frame-i-003804-4-0197.fits frame-i-003804-4-0199.fits frame-i-003836-2-0257.fits frame-i-003836-3-0257.fits frame-i-003836-3-0258.fits frame-i-003063-4-0052.fits frame-i-003804-5-0196.fits frame-i-003063-5-0049.fits frame-i-003804-5-0198.fits frame-i-003804-5-0199.fits frame-i-003063-5-0052.fits frame-i-003836-4-0256.fits frame-i-003836-4-0257.fits frame-i-003836-4-0258.fits frame-i-003804-6-0199.fits frame-i-003836-1-0255.fits frame-i-003063-3-0046.fits frame-i-003063-3-0047.fits frame-i-003063-3-0048.fits frame-i-003804-4-0193.fits frame-i-003836-2-0253.fits frame-i-003836-2-0255.fits frame-i-003836-3-0252.fits frame-i-003836-3-0254.fits frame-i-003804-5-0194.fits frame-i-003836-4-0254.fits frame-i-003836-4-0255.fits frame-i-003063-2-0058.fits frame-i-003063-3-0057.fits frame-i-003804-3-0205.fits frame-i-003804-4-0205.fits frame-i-003804-4-0206.fits frame-i-003805-4-0011.fits frame-i-003836-2-0264.fits frame-i-003836-3-0263.fits frame-i-003063-3-0059.fits frame-i-003063-4-0058.fits frame-i-003804-5-0204.fits frame-i-003836-4-0263.fits frame-i-003836-4-0264.fits frame-i-003063-1-0053.fits frame-i-003804-2-0200.fits frame-i-003063-2-0053.fits frame-i-003804-2-0201.fits frame-i-003063-2-0054.fits frame-i-003836-1-0261.fits frame-i-003836-1-0262.fits frame-i-003804-3-0200.fits frame-i-003063-3-0054.fits frame-i-003804-3-0202.fits frame-i-003804-4-0200.fits frame-i-003804-4-0203.fits frame-i-003836-2-0259.fits frame-i-003836-2-0262.fits frame-i-003836-3-0260.fits frame-i-003836-3-0261.fits frame-i-003804-5-0201.fits frame-i-003804-5-0202.fits frame-i-003804-5-0203.fits frame-i-003063-5-0056.fits frame-i-003836-4-0259.fits frame-i-003836-5-0261.fits frame-i-003836-5-0262.fits frame-i-003804-2-0196.fits frame-i-003063-2-0050.fits frame-i-003804-2-0198.fits frame-i-003063-2-0051.fits frame-i-003063-2-0052.fits frame-i-003836-1-0256.fits frame-i-003836-1-0257.fits frame-i-003804-3-0196.fits frame-i-003804-3-0199.fits frame-i-003804-4-0196.fits frame-i-003804-4-0198.fits frame-i-003836-2-0256.fits frame-i-003836-2-0258.fits frame-i-003836-3-0256.fits frame-i-003804-5-0197.fits frame-i-003063-5-0050.fits frame-i-003063-5-0051.fits frame-i-003836-5-0256.fits frame-i-003836-5-0257.fits frame-i-003836-5-0258.fits frame-i-003804-2-0194.fits frame-i-003063-2-0047.fits frame-i-003804-2-0195.fits frame-i-003063-2-0048.fits frame-i-003804-3-0193.fits frame-i-003804-3-0194.fits frame-i-003804-3-0195.fits frame-i-003804-4-0194.fits frame-i-003804-4-0195.fits frame-i-003836-2-0254.fits frame-i-003836-3-0253.fits frame-i-003836-3-0255.fits frame-i-003804-5-0195.fits frame-i-003063-5-0048.fits frame-i-003836-4-0253.fits frame-i-003836-5-0255.fits
#
# Filter = r
#
/bin/rm -f default.swarp
cat > default.swarp <<EOT
IMAGEOUT_NAME          J123048.00+122319.0-r.fits      # Output filename
WEIGHTOUT_NAME       J123048.00+122319.0-r.weight.fits # Output weight-map filename

HEADER_ONLY            N               # Only a header as an output file (Y/N)?
HEADER_SUFFIX          .head           # Filename extension for additional headers

#------------------------------- Input Weights --------------------------------

WEIGHT_TYPE            NONE            # BACKGROUND,MAP_RMS,MAP_VARIANCE
                                       # or MAP_WEIGHT
WEIGHT_SUFFIX          weight.fits     # Suffix to use for weight-maps
WEIGHT_IMAGE                           # Weightmap filename if suffix not used
                                       # (all or for each weight-map)

#------------------------------- Co-addition ----------------------------------

COMBINE                Y               # Combine resampled images (Y/N)?
COMBINE_TYPE           MEDIAN          # MEDIAN,AVERAGE,MIN,MAX,WEIGHTED,CHI2
                                       # or SUM

#-------------------------------- Astrometry ----------------------------------

CELESTIAL_TYPE         NATIVE          # NATIVE, PIXEL, EQUATORIAL,
                                       # GALACTIC,ECLIPTIC, or SUPERGALACTIC
PROJECTION_TYPE        TAN             # Any WCS projection code or NONE
PROJECTION_ERR         0.001           # Maximum projection error (in output
                                       # pixels), or 0 for no approximation
CENTER_TYPE            MANUAL          # MANUAL, ALL or MOST
CENTER                       187.7027000000,       12.3887000000 # Image Center
PIXELSCALE_TYPE        MANUAL          # MANUAL,FIT,MIN,MAX or MEDIAN
PIXEL_SCALE            0.396000  # Pixel scale
IMAGE_SIZE             9090,9090 # scale = 0.396127 arcsec/pixel

#-------------------------------- Resampling ----------------------------------

RESAMPLE               Y               # Resample input images (Y/N)?
RESAMPLE_DIR           .               # Directory path for resampled images
RESAMPLE_SUFFIX        .resamp.fits    # filename extension for resampled images

RESAMPLING_TYPE        LANCZOS3        # NEAREST,BILINEAR,LANCZOS2,LANCZOS3
                                       # or LANCZOS4 (1 per axis)
OVERSAMPLING           0               # Oversampling in each dimension
                                       # (0 = automatic)
INTERPOLATE            N               # Interpolate bad input pixels (Y/N)?
                                       # (all or for each image)

FSCALASTRO_TYPE        FIXED           # NONE,FIXED, or VARIABLE
FSCALE_KEYWORD         FLXSCALE        # FITS keyword for the multiplicative
                                       # factor applied to each input image
FSCALE_DEFAULT         1.0             # Default FSCALE value if not in header

GAIN_KEYWORD           GAIN            # FITS keyword for effect. gain (e-/ADU)
GAIN_DEFAULT           0.0             # Default gain if no FITS keyword found

#--------------------------- Background subtraction ---------------------------

SUBTRACT_BACK          N               # Subtraction sky background (Y/N)?
                                       # (all or for each image)

BACK_TYPE              AUTO            # AUTO or MANUAL
                                       # (all or for each image)
BACK_DEFAULT           0.0             # Default background value in MANUAL
                                       # (all or for each image)
BACK_SIZE              128             # Background mesh size (pixels)
                                       # (all or for each image)
BACK_FILTERSIZE        3               # Background map filter range (meshes)
                                       # (all or for each image)

#------------------------------ Memory management -----------------------------

VMEM_DIR               .               # Directory path for swap files
VMEM_MAX               2047            # Maximum amount of virtual memory (MB)
MEM_MAX                2048            # Maximum amount of usable RAM (MB)
COMBINE_BUFSIZE        1024            # Buffer size for combine (MB)

#------------------------------ Miscellaneous ---------------------------------

DELETE_TMPFILES        Y               # Delete temporary resampled FITS files
                                       # (Y/N)?
COPY_KEYWORDS          OBJECT          # List of FITS keywords to propagate
                                       # from the input to the output headers
WRITE_FILEINFO         Y               # Write information about each input
                                       # file in the output image header?
WRITE_XML              N               # Write XML file (Y/N)?
XML_NAME               swarp.xml       # Filename for XML output
VERBOSE_TYPE           QUIET           # QUIET,NORMAL or FULL

NTHREADS               0               # Number of simultaneous threads for
                                       # the SMP version of SWarp
                                       # 0 = automatic

EOT
#
swarp frame-r-003804-2-0204.fits frame-r-003063-2-0057.fits frame-r-003804-3-0204.fits frame-r-003063-3-0058.fits frame-r-003804-3-0206.fits frame-r-003804-4-0204.fits frame-r-003805-3-0011.fits frame-r-003836-2-0263.fits frame-r-003836-3-0264.fits frame-r-003836-3-0265.fits frame-r-003063-4-0057.fits frame-r-003063-5-0057.fits frame-r-003063-1-0054.fits frame-r-003063-1-0055.fits frame-r-003804-2-0202.fits frame-r-003063-2-0055.fits frame-r-003804-2-0203.fits frame-r-003063-2-0056.fits frame-r-003836-1-0259.fits frame-r-003836-1-0260.fits frame-r-003063-3-0053.fits frame-r-003804-3-0201.fits frame-r-003063-3-0055.fits frame-r-003804-3-0203.fits frame-r-003063-3-0056.fits frame-r-003804-4-0201.fits frame-r-003804-4-0202.fits frame-r-003836-2-0260.fits frame-r-003836-2-0261.fits frame-r-003836-3-0259.fits frame-r-003836-3-0262.fits frame-r-003063-4-0053.fits frame-r-003063-4-0054.fits frame-r-003063-4-0055.fits frame-r-003063-4-0056.fits frame-r-003804-5-0200.fits frame-r-003063-5-0053.fits frame-r-003063-5-0054.fits frame-r-003063-5-0055.fits frame-r-003836-4-0260.fits frame-r-003836-4-0261.fits frame-r-003836-4-0262.fits frame-r-003836-5-0259.fits frame-r-003836-5-0260.fits frame-r-003063-1-0050.fits frame-r-003063-1-0051.fits frame-r-003063-1-0052.fits frame-r-003063-2-0049.fits frame-r-003804-2-0197.fits frame-r-003804-2-0199.fits frame-r-003836-1-0258.fits frame-r-003063-3-0049.fits frame-r-003804-3-0197.fits frame-r-003063-3-0050.fits frame-r-003804-3-0198.fits frame-r-003063-3-0051.fits frame-r-003804-4-0197.fits frame-r-003804-4-0199.fits frame-r-003836-2-0257.fits frame-r-003836-3-0257.fits frame-r-003836-3-0258.fits frame-r-003063-4-0052.fits frame-r-003804-5-0196.fits frame-r-003063-5-0049.fits frame-r-003804-5-0198.fits frame-r-003804-5-0199.fits frame-r-003063-5-0052.fits frame-r-003836-4-0256.fits frame-r-003836-4-0257.fits frame-r-003836-4-0258.fits frame-r-003804-6-0199.fits frame-r-003836-1-0255.fits frame-r-003063-3-0046.fits frame-r-003063-3-0047.fits frame-r-003063-3-0048.fits frame-r-003804-4-0193.fits frame-r-003836-2-0253.fits frame-r-003836-2-0255.fits frame-r-003836-3-0252.fits frame-r-003836-3-0254.fits frame-r-003804-5-0194.fits frame-r-003836-4-0254.fits frame-r-003836-4-0255.fits frame-r-003063-2-0058.fits frame-r-003063-3-0057.fits frame-r-003804-3-0205.fits frame-r-003804-4-0205.fits frame-r-003804-4-0206.fits frame-r-003805-4-0011.fits frame-r-003836-2-0264.fits frame-r-003836-3-0263.fits frame-r-003063-3-0059.fits frame-r-003063-4-0058.fits frame-r-003804-5-0204.fits frame-r-003836-4-0263.fits frame-r-003836-4-0264.fits frame-r-003063-1-0053.fits frame-r-003804-2-0200.fits frame-r-003063-2-0053.fits frame-r-003804-2-0201.fits frame-r-003063-2-0054.fits frame-r-003836-1-0261.fits frame-r-003836-1-0262.fits frame-r-003804-3-0200.fits frame-r-003063-3-0054.fits frame-r-003804-3-0202.fits frame-r-003804-4-0200.fits frame-r-003804-4-0203.fits frame-r-003836-2-0259.fits frame-r-003836-2-0262.fits frame-r-003836-3-0260.fits frame-r-003836-3-0261.fits frame-r-003804-5-0201.fits frame-r-003804-5-0202.fits frame-r-003804-5-0203.fits frame-r-003063-5-0056.fits frame-r-003836-4-0259.fits frame-r-003836-5-0261.fits frame-r-003836-5-0262.fits frame-r-003804-2-0196.fits frame-r-003063-2-0050.fits frame-r-003804-2-0198.fits frame-r-003063-2-0051.fits frame-r-003063-2-0052.fits frame-r-003836-1-0256.fits frame-r-003836-1-0257.fits frame-r-003804-3-0196.fits frame-r-003804-3-0199.fits frame-r-003804-4-0196.fits frame-r-003804-4-0198.fits frame-r-003836-2-0256.fits frame-r-003836-2-0258.fits frame-r-003836-3-0256.fits frame-r-003804-5-0197.fits frame-r-003063-5-0050.fits frame-r-003063-5-0051.fits frame-r-003836-5-0256.fits frame-r-003836-5-0257.fits frame-r-003836-5-0258.fits frame-r-003804-2-0194.fits frame-r-003063-2-0047.fits frame-r-003804-2-0195.fits frame-r-003063-2-0048.fits frame-r-003804-3-0193.fits frame-r-003804-3-0194.fits frame-r-003804-3-0195.fits frame-r-003804-4-0194.fits frame-r-003804-4-0195.fits frame-r-003836-2-0254.fits frame-r-003836-3-0253.fits frame-r-003836-3-0255.fits frame-r-003804-5-0195.fits frame-r-003063-5-0048.fits frame-r-003836-4-0253.fits frame-r-003836-5-0255.fits
#
# Filter = g
#
/bin/rm -f default.swarp
cat > default.swarp <<EOT
IMAGEOUT_NAME          J123048.00+122319.0-g.fits      # Output filename
WEIGHTOUT_NAME       J123048.00+122319.0-g.weight.fits # Output weight-map filename

HEADER_ONLY            N               # Only a header as an output file (Y/N)?
HEADER_SUFFIX          .head           # Filename extension for additional headers

#------------------------------- Input Weights --------------------------------

WEIGHT_TYPE            NONE            # BACKGROUND,MAP_RMS,MAP_VARIANCE
                                       # or MAP_WEIGHT
WEIGHT_SUFFIX          weight.fits     # Suffix to use for weight-maps
WEIGHT_IMAGE                           # Weightmap filename if suffix not used
                                       # (all or for each weight-map)

#------------------------------- Co-addition ----------------------------------

COMBINE                Y               # Combine resampled images (Y/N)?
COMBINE_TYPE           MEDIAN          # MEDIAN,AVERAGE,MIN,MAX,WEIGHTED,CHI2
                                       # or SUM

#-------------------------------- Astrometry ----------------------------------

CELESTIAL_TYPE         NATIVE          # NATIVE, PIXEL, EQUATORIAL,
                                       # GALACTIC,ECLIPTIC, or SUPERGALACTIC
PROJECTION_TYPE        TAN             # Any WCS projection code or NONE
PROJECTION_ERR         0.001           # Maximum projection error (in output
                                       # pixels), or 0 for no approximation
CENTER_TYPE            MANUAL          # MANUAL, ALL or MOST
CENTER                       187.7027000000,       12.3887000000 # Image Center
PIXELSCALE_TYPE        MANUAL          # MANUAL,FIT,MIN,MAX or MEDIAN
PIXEL_SCALE            0.396000  # Pixel scale
IMAGE_SIZE             9090,9090 # scale = 0.396127 arcsec/pixel

#-------------------------------- Resampling ----------------------------------

RESAMPLE               Y               # Resample input images (Y/N)?
RESAMPLE_DIR           .               # Directory path for resampled images
RESAMPLE_SUFFIX        .resamp.fits    # filename extension for resampled images

RESAMPLING_TYPE        LANCZOS3        # NEAREST,BILINEAR,LANCZOS2,LANCZOS3
                                       # or LANCZOS4 (1 per axis)
OVERSAMPLING           0               # Oversampling in each dimension
                                       # (0 = automatic)
INTERPOLATE            N               # Interpolate bad input pixels (Y/N)?
                                       # (all or for each image)

FSCALASTRO_TYPE        FIXED           # NONE,FIXED, or VARIABLE
FSCALE_KEYWORD         FLXSCALE        # FITS keyword for the multiplicative
                                       # factor applied to each input image
FSCALE_DEFAULT         1.0             # Default FSCALE value if not in header

GAIN_KEYWORD           GAIN            # FITS keyword for effect. gain (e-/ADU)
GAIN_DEFAULT           0.0             # Default gain if no FITS keyword found

#--------------------------- Background subtraction ---------------------------

SUBTRACT_BACK          N               # Subtraction sky background (Y/N)?
                                       # (all or for each image)

BACK_TYPE              AUTO            # AUTO or MANUAL
                                       # (all or for each image)
BACK_DEFAULT           0.0             # Default background value in MANUAL
                                       # (all or for each image)
BACK_SIZE              128             # Background mesh size (pixels)
                                       # (all or for each image)
BACK_FILTERSIZE        3               # Background map filter range (meshes)
                                       # (all or for each image)

#------------------------------ Memory management -----------------------------

VMEM_DIR               .               # Directory path for swap files
VMEM_MAX               2047            # Maximum amount of virtual memory (MB)
MEM_MAX                2048            # Maximum amount of usable RAM (MB)
COMBINE_BUFSIZE        1024            # Buffer size for combine (MB)

#------------------------------ Miscellaneous ---------------------------------

DELETE_TMPFILES        Y               # Delete temporary resampled FITS files
                                       # (Y/N)?
COPY_KEYWORDS          OBJECT          # List of FITS keywords to propagate
                                       # from the input to the output headers
WRITE_FILEINFO         Y               # Write information about each input
                                       # file in the output image header?
WRITE_XML              N               # Write XML file (Y/N)?
XML_NAME               swarp.xml       # Filename for XML output
VERBOSE_TYPE           QUIET           # QUIET,NORMAL or FULL

NTHREADS               0               # Number of simultaneous threads for
                                       # the SMP version of SWarp
                                       # 0 = automatic

EOT
#
swarp frame-g-003804-2-0204.fits frame-g-003063-2-0057.fits frame-g-003804-3-0204.fits frame-g-003063-3-0058.fits frame-g-003804-3-0206.fits frame-g-003804-4-0204.fits frame-g-003805-3-0011.fits frame-g-003836-2-0263.fits frame-g-003836-3-0264.fits frame-g-003836-3-0265.fits frame-g-003063-4-0057.fits frame-g-003063-5-0057.fits frame-g-003063-1-0054.fits frame-g-003063-1-0055.fits frame-g-003804-2-0202.fits frame-g-003063-2-0055.fits frame-g-003804-2-0203.fits frame-g-003063-2-0056.fits frame-g-003836-1-0259.fits frame-g-003836-1-0260.fits frame-g-003063-3-0053.fits frame-g-003804-3-0201.fits frame-g-003063-3-0055.fits frame-g-003804-3-0203.fits frame-g-003063-3-0056.fits frame-g-003804-4-0201.fits frame-g-003804-4-0202.fits frame-g-003836-2-0260.fits frame-g-003836-2-0261.fits frame-g-003836-3-0259.fits frame-g-003836-3-0262.fits frame-g-003063-4-0053.fits frame-g-003063-4-0054.fits frame-g-003063-4-0055.fits frame-g-003063-4-0056.fits frame-g-003804-5-0200.fits frame-g-003063-5-0053.fits frame-g-003063-5-0054.fits frame-g-003063-5-0055.fits frame-g-003836-4-0260.fits frame-g-003836-4-0261.fits frame-g-003836-4-0262.fits frame-g-003836-5-0259.fits frame-g-003836-5-0260.fits frame-g-003063-1-0050.fits frame-g-003063-1-0051.fits frame-g-003063-1-0052.fits frame-g-003063-2-0049.fits frame-g-003804-2-0197.fits frame-g-003804-2-0199.fits frame-g-003836-1-0258.fits frame-g-003063-3-0049.fits frame-g-003804-3-0197.fits frame-g-003063-3-0050.fits frame-g-003804-3-0198.fits frame-g-003063-3-0051.fits frame-g-003804-4-0197.fits frame-g-003804-4-0199.fits frame-g-003836-2-0257.fits frame-g-003836-3-0257.fits frame-g-003836-3-0258.fits frame-g-003063-4-0052.fits frame-g-003804-5-0196.fits frame-g-003063-5-0049.fits frame-g-003804-5-0198.fits frame-g-003804-5-0199.fits frame-g-003063-5-0052.fits frame-g-003836-4-0256.fits frame-g-003836-4-0257.fits frame-g-003836-4-0258.fits frame-g-003804-6-0199.fits frame-g-003836-1-0255.fits frame-g-003063-3-0046.fits frame-g-003063-3-0047.fits frame-g-003063-3-0048.fits frame-g-003804-4-0193.fits frame-g-003836-2-0253.fits frame-g-003836-2-0255.fits frame-g-003836-3-0252.fits frame-g-003836-3-0254.fits frame-g-003804-5-0194.fits frame-g-003836-4-0254.fits frame-g-003836-4-0255.fits frame-g-003063-2-0058.fits frame-g-003063-3-0057.fits frame-g-003804-3-0205.fits frame-g-003804-4-0205.fits frame-g-003804-4-0206.fits frame-g-003805-4-0011.fits frame-g-003836-2-0264.fits frame-g-003836-3-0263.fits frame-g-003063-3-0059.fits frame-g-003063-4-0058.fits frame-g-003804-5-0204.fits frame-g-003836-4-0263.fits frame-g-003836-4-0264.fits frame-g-003063-1-0053.fits frame-g-003804-2-0200.fits frame-g-003063-2-0053.fits frame-g-003804-2-0201.fits frame-g-003063-2-0054.fits frame-g-003836-1-0261.fits frame-g-003836-1-0262.fits frame-g-003804-3-0200.fits frame-g-003063-3-0054.fits frame-g-003804-3-0202.fits frame-g-003804-4-0200.fits frame-g-003804-4-0203.fits frame-g-003836-2-0259.fits frame-g-003836-2-0262.fits frame-g-003836-3-0260.fits frame-g-003836-3-0261.fits frame-g-003804-5-0201.fits frame-g-003804-5-0202.fits frame-g-003804-5-0203.fits frame-g-003063-5-0056.fits frame-g-003836-4-0259.fits frame-g-003836-5-0261.fits frame-g-003836-5-0262.fits frame-g-003804-2-0196.fits frame-g-003063-2-0050.fits frame-g-003804-2-0198.fits frame-g-003063-2-0051.fits frame-g-003063-2-0052.fits frame-g-003836-1-0256.fits frame-g-003836-1-0257.fits frame-g-003804-3-0196.fits frame-g-003804-3-0199.fits frame-g-003804-4-0196.fits frame-g-003804-4-0198.fits frame-g-003836-2-0256.fits frame-g-003836-2-0258.fits frame-g-003836-3-0256.fits frame-g-003804-5-0197.fits frame-g-003063-5-0050.fits frame-g-003063-5-0051.fits frame-g-003836-5-0256.fits frame-g-003836-5-0257.fits frame-g-003836-5-0258.fits frame-g-003804-2-0194.fits frame-g-003063-2-0047.fits frame-g-003804-2-0195.fits frame-g-003063-2-0048.fits frame-g-003804-3-0193.fits frame-g-003804-3-0194.fits frame-g-003804-3-0195.fits frame-g-003804-4-0194.fits frame-g-003804-4-0195.fits frame-g-003836-2-0254.fits frame-g-003836-3-0253.fits frame-g-003836-3-0255.fits frame-g-003804-5-0195.fits frame-g-003063-5-0048.fits frame-g-003836-4-0253.fits frame-g-003836-5-0255.fits
