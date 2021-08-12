#!/bin/bash

#kaggle datasets download -d zillow/zecon --unzip

pwd
#/d/DBpedia2021/healthcare-platform/Data
cd kaggle_CovidWorldVaccinationProgress/
mkdir "$(date +"%Y-%m-%d")"
cd "$(date +"%Y-%m-%d")"
kaggle datasets download -d gpreda/covid-world-vaccination-progress --unzip


cd kaggle_Covid19TrackingGermany/
mkdir "$(date +"%Y-%m-%d")"
cd "$(date +"%Y-%m-%d")"
kaggle datasets download -d headsortails/covid19-tracking-germany --unzip