#!/bin/bash

# Login first to be able to use Kaggle API
export KAGGLE_USERNAME=guangkzhang
export KAGGLE_KEY=4f3a7afad17c162423d8eacd8c2469c7


# git pull for getting updated version
git pull


# Kaggle API for downloading datasets
cd databus-upload
cd raw
cd covid19-world-vaccination-progress/
mkdir "$(date +"%Y.%m.%d")"
cd "$(date +"%Y.%m.%d")"
kaggle datasets download -d gpreda/covid-world-vaccination-progress --unzip
kaggle datasets files gpreda/covid-world-vaccination-progress > covid19-world-vaccination-progress-downloadinfo.txt
kaggle datasets metadata -p . gpreda/covid-world-vaccination-progress
ls
cd ../../
cd covid19-tracking-germany/
mkdir "$(date +"%Y.%m.%d")"
cd "$(date +"%Y.%m.%d")"
kaggle datasets download -d headsortails/covid19-tracking-germany --unzip
kaggle datasets files headsortails/covid19-tracking-germany > covid19-tracking-germany-downloadinfo.txt
rm -rf $(find . -type f ! -name "*.csv")
kaggle datasets metadata -p . headsortails/covid19-tracking-germany
ls
cd ../../
cd covid19-world-vaccine-adverse-reactions/
mkdir "$(date +"%Y.%m.%d")"
cd "$(date +"%Y.%m.%d")"
kaggle datasets download -d ayushggarg/covid19-vaccine-adverse-reactions --unzip
kaggle datasets files ayushggarg/covid19-vaccine-adverse-reactions > covid19-vaccine-adverse-reactions-downloadinfo.txt
kaggle datasets metadata -p . ayushggarg/covid19-vaccine-adverse-reactions
ls
cd ../../
cd covid19-variants-worldwide-evolution/
mkdir "$(date +"%Y.%m.%d")"
cd "$(date +"%Y.%m.%d")"
kaggle datasets download -d gpreda/covid19-variants --unzip
kaggle datasets files gpreda/covid19-variants > covid19-variants-worldwide-evolution-downloadinfo.txt
kaggle datasets metadata -p . gpreda/covid19-variants
ls
cd ../../../../

# Tarql mapping CSV files to RDF triples
./tarql/bin/tarql --ntriples databus-upload/mappings/covid19-tracking-germany/covid_de_sparql.sparql databus-upload/raw/covid19-tracking-germany/"$(date +"%Y.%m.%d")"/covid_de.csv > databus-upload/input/covid19-tracking-germany/covid_de_triples.nt
./tarql/bin/tarql --ntriples databus-upload/mappings/covid19-tracking-germany/covid_de_vaccines_sparql.sparql databus-upload/raw/covid19-tracking-germany/"$(date +"%Y.%m.%d")"/covid_de_vaccines.csv > databus-upload/input/covid19-tracking-germany/covid_de_vaccines_triples.nt
./tarql/bin/tarql --ntriples databus-upload/mappings/covid19-tracking-germany/demographics_de_sparql.sparql databus-upload/raw/covid19-tracking-germany/"$(date +"%Y.%m.%d")"/demographics_de.csv > databus-upload/input/covid19-tracking-germany/demographics_de_triples.nt

./tarql/bin/tarql --ntriples databus-upload/mappings/covid19-variants-worldwide-evolution/covid-variants_sparql.sparql databus-upload/raw/covid19-variants-worldwide-evolution/"$(date +"%Y.%m.%d")"/covid-variants.csv > databus-upload/input/covid19-variants-worldwide-evolution/covid-variants_triples.nt

./tarql/bin/tarql --ntriples databus-upload/mappings/covid19-world-vaccination-progress/country_vaccinations_sparql.sparql databus-upload/raw/covid19-world-vaccination-progress/"$(date +"%Y.%m.%d")"/country_vaccinations.csv > databus-upload/input/covid19-world-vaccination-progress/country_vaccinations_triples.nt
./tarql/bin/tarql --ntriples databus-upload/mappings/covid19-world-vaccination-progress/country_vaccinations_by_manufacturer_sparql.sparql databus-upload/raw/covid19-world-vaccination-progress/"$(date +"%Y.%m.%d")"/country_vaccinations_by_manufacturer.csv > databus-upload/input/covid19-world-vaccination-progress/country_vaccinations_by_manufacturer_triples.nt

./tarql/bin/tarql --ntriples databus-upload/mappings/covid19-world-vaccine-adverse-reactions/2021VAERSDATA_sparql.sparql databus-upload/raw/covid19-world-vaccine-adverse-reactions/"$(date +"%Y.%m.%d")"/2021VAERSDATA.csv > databus-upload/input/covid19-world-vaccine-adverse-reactions/2021VAERSDATA_triples.nt
./tarql/bin/tarql --ntriples databus-upload/mappings/covid19-world-vaccine-adverse-reactions/2021VAERSSYMPTOMS_sparql.sparql databus-upload/raw/covid19-world-vaccine-adverse-reactions/"$(date +"%Y.%m.%d")"/2021VAERSSYMPTOMS.csv > databus-upload/input/covid19-world-vaccine-adverse-reactions/2021VAERSSYMTOMS_triples.nt
./tarql/bin/tarql --ntriples databus-upload/mappings/covid19-world-vaccine-adverse-reactions/2021VAERSVAX_sparql.sparql databus-upload/raw/covid19-world-vaccine-adverse-reactions/"$(date +"%Y.%m.%d")"/2021VAERSVAX.csv > databus-upload/input/covid19-world-vaccine-adverse-reactions/2021VAERSVAX_triples.nt


# Compress csv files and rename
cd databus-upload
cd raw
cd covid19-world-vaccination-progress/
cd "$(date +"%Y.%m.%d")"
ls
bzip2 country_vaccinations.csv 
mv country_vaccinations.csv.bz2 covid19-world-vaccination-progress_tag=default.csv.bz2
bzip2 country_vaccinations_by_manufacturer.csv 
mv country_vaccinations_by_manufacturer.csv.bz2 covid19-world-vaccination-progress_tag=vaccinationsByManufacturer.csv.bz2
cd ../../
cd covid19-tracking-germany/
cd "$(date +"%Y.%m.%d")"
ls
bzip2 covid_de.csv 
mv covid_de.csv.bz2 covid19-tracking-germany_tag=default.csv.bz2
bzip2 covid_de_vaccines.csv 
mv covid_de_vaccines.csv.bz2 covid19-tracking-germany_tag=vaccines.csv.bz2
cd ../../
cd covid19-world-vaccine-adverse-reactions/
cd "$(date +"%Y.%m.%d")"
ls
bzip2 2021VAERSDATA.csv 
mv 2021VAERSDATA.csv.bz2 covid19-world-vaccine-adverse-reactions_tag=default.csv.bz2
bzip2 2021VAERSSYMPTOMS.csv 
mv 2021VAERSSYMPTOMS.csv.bz2 covid19-world-vaccine-adverse-reactions_tag=symptoms.csv.bz2
bzip2 2021VAERSVAX.csv 
mv 2021VAERSVAX.csv.bz2 covid19-world-vaccine-adverse-reactions_tag=vax.csv.bz2
cd ../../
cd covid19-variants-worldwide-evolution/
cd "$(date +"%Y.%m.%d")"
ls
bzip2 covid-variants.csv 
mv covid-variants.csv.bz2 covid19-variants-worldwide-evolution_tag=default.csv.bz2
cd ../../



# Compress mappings/triples files .nt to .nt.bz2
cd ../input
cd covid19-world-vaccination-progress/
bzip2 country_vaccinations_triples.nt
bzip2 country_vaccinations_by_manufacturer_triples.nt
cd ../
cd covid19-tracking-germany/
bzip2 covid_de_triples.nt
bzip2 covid_de_vaccines_triples.nt
bzip2 demographics_de_triples.nt
cd ../
cd covid19-world-vaccine-adverse-reactions/
bzip2 2021VAERSDATA_triples.nt
bzip2 2021VAERSSYMTOMS_triples.nt
bzip2 2021VAERSVAX_triples.nt
cd ../
cd covid19-variants-worldwide-evolution/
bzip2 covid-variants_triples.nt
cd ../../


# Future task to check version:
# Step1: check if there is newer version of Kaggle dataset
# Step2: if version is updated, then create new folder based on the date
# Step3: download newer version of Kaggle to the folder named by the date
# Step4: upload to the Databus
# Cronjob for running the pipeline for updating all


# pwd
# #/d/DBpedia2021/healthcare-platform/Data
# cd covid-world-vaccination-progress/
# mkdir "$(date +"%Y.%m.%d")"
# cd "$(date +"%Y.%m.%d")"
# kaggle datasets download -d gpreda/covid-world-vaccination-progress --unzip
# kaggle datasets files gpreda/covid-world-vaccination-progress > dataset-info.txt
# kaggle datasets metadata -p . gpreda/covid-world-vaccination-progress


# cd kaggle_Covid19TrackingGermany/
# mkdir "$(date +"%Y.%m.%d")"
# cd "$(date +"%Y.%m.%d")"
# kaggle datasets download -d headsortails/covid19-tracking-germany --unzip


# # Download Covid19 Variants World
# cd kaggle_Covid19VariantsWorldwideEvolution/
# mkdir "$(date +"%Y.%m.%d")"
# cd "$(date +"%Y.%m.%d")"
# kaggle datasets download -d gpreda/covid19-variants --unzip
# bzip2 covid19-variants.csv


# kaggle datasets version -d gpreda/covid-world-vaccination-progress


# mkdir "$(date +"%Y.%m.%d")"
# cd "$(date +"%Y.%m.%d")"


# kaggle datasets files gpreda/covid-world-vaccination-progress > dataset-info.txt
# olddate=$(cat info.txt | head -3 | tail -1 | awk '{print $3}')
# kaggle datasets files gpreda/covid-world-vaccination-progress > new-dataset-info.txt
# newdate=$(cat new-dataset-info.txt | head -3 | tail -1 | awk '{print $3}')


# kaggle datasets files gpreda/covid19-variants > cov19-dataset-info.txt
# olddate=$(cat cov19-dataset-info.txt | head -3 | tail -1 | awk '{print $3}')


# kaggle datasets status gpreda/covid-world-vaccination-progress
# kaggle datasets metadata -p . gpreda/covid-world-vaccination-progress

# # //*[contains(concat( " ", @class, " " ), concat( " ", "jurgSy", " " ))]