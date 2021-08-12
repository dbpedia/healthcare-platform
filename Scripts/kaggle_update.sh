#!/bin/bash

# Step1: check if there is newer version of Kaggle dataset

# Step2: if version is updated, then create new folder based on the date

# Step3: download newer version of Kaggle to the folder named by the date

# Step4: upload to the Databus

# Cronjob for running the pipeline for updating all

#kaggle datasets download -d zillow/zecon --unzip

pwd
#/d/DBpedia2021/healthcare-platform/Data
cd kaggle_CovidWorldVaccinationProgress/
mkdir "$(date +"%Y.%m.%d")"
cd "$(date +"%Y.%m.%d")"
kaggle datasets download -d gpreda/covid-world-vaccination-progress --unzip


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