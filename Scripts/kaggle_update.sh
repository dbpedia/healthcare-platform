#!/bin/bash

# Login first to be able to use Kaggle API
export KAGGLE_USERNAME=guangkzhang
export KAGGLE_KEY=4f3a7afad17c162423d8eacd8c2469c7

# Step1: check if there is newer version of Kaggle dataset

# Step2: if version is updated, then create new folder based on the date

# Step3: download newer version of Kaggle to the folder named by the date

# Step4: upload to the Databus

# Cronjob for running the pipeline for updating all

#kaggle datasets download -d zillow/zecon --unzip

pwd
#/d/DBpedia2021/healthcare-platform/Data
cd covid-world-vaccination-progress/
mkdir "$(date +"%Y.%m.%d")"
cd "$(date +"%Y.%m.%d")"
kaggle datasets download -d gpreda/covid-world-vaccination-progress --unzip
kaggle datasets files gpreda/covid-world-vaccination-progress > dataset-info.txt
kaggle datasets metadata -p . gpreda/covid-world-vaccination-progress


cd kaggle_Covid19TrackingGermany/
mkdir "$(date +"%Y.%m.%d")"
cd "$(date +"%Y.%m.%d")"
kaggle datasets download -d headsortails/covid19-tracking-germany --unzip


# Download Covid19 Variants World
cd kaggle_Covid19VariantsWorldwideEvolution/
mkdir "$(date +"%Y.%m.%d")"
cd "$(date +"%Y.%m.%d")"
kaggle datasets download -d gpreda/covid19-variants --unzip
bzip2 covid19-variants.csv


kaggle datasets version -d gpreda/covid-world-vaccination-progress


mkdir "$(date +"%Y.%m.%d")"
cd "$(date +"%Y.%m.%d")"


kaggle datasets files gpreda/covid-world-vaccination-progress > dataset-info.txt
olddate=$(cat info.txt | head -3 | tail -1 | awk '{print $3}')
kaggle datasets files gpreda/covid-world-vaccination-progress > new-dataset-info.txt
newdate=$(cat new-dataset-info.txt | head -3 | tail -1 | awk '{print $3}')


kaggle datasets files gpreda/covid19-variants > cov19-dataset-info.txt
olddate=$(cat cov19-dataset-info.txt | head -3 | tail -1 | awk '{print $3}')


kaggle datasets status gpreda/covid-world-vaccination-progress
kaggle datasets metadata -p . gpreda/covid-world-vaccination-progress

# //*[contains(concat( " ", @class, " " ), concat( " ", "jurgSy", " " ))]