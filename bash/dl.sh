#!/bin/bash
#SBATCH -n 1 #Number of cores
#SBATCH -t 1400  #Runtime in minutes
#SBATCH -p irizarry,serial_requeue #Partition to submit to
#SBATCH --mem=1000
#SBATCH --mail-type=ALL      #Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=michaelisaiahlove@gmail.com  #Email to which notifications will be sent

wget -i tsi.files -o wgetlog --no-clobber --progress=dot:giga --random-wait -P /n/irizarryfs01/mlove/geuvadis/fastq
