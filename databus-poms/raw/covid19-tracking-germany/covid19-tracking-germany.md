# covid19-tracking-germany
2021.08.19==version 487
- Daily updated cases and deaths - augmented with geospatial and demographics info.
- kaggle datasets download -d headsortails/covid19-tracking-germany. 
- Source: https://www.kaggle.com/headsortails/covid19-tracking-germany


# Context
The 2019 Novel Coronavirus (COVID-19) continues to spread in countries around the world. This dataset provides daily updated number of reported cases & deaths in Germany on the federal state (Bundesland) and county (Landkreis/Stadtkreis) level. In April 2021 I added a dataset on vaccination progress. In addition, I provide geospatial shape files and general state-level population demographics to aid the analysis.

# Content
The dataset consists of thre main csv files: covid_de.csv, demgraphics_de.csv, and covid_de_vaccines.csv. The geospatial shapes are included in the de_state.* files. See the column descriptions below for more detailed information.

covid_de.csv: COVID-19 cases and deaths which will be updated daily. The original data are being collected by Germany's Robert Koch Institute and can be download through the National Platform for Geographic Data (the latter site also hosts an interactive dashboard). I reshaped and translated the data (using R tidyverse tools) to make it better accessible. This blogpost explains how I prepared the data, and describes how to produces animated maps.

demographics_de.csv: General Demographic Data about Germany on the federal state level. Those have been downloaded from Germany's Federal Office for Statistics (Statistisches Bundesamt) through their Open Data platform GENESIS. The data reflect the (most recent available) estimates on 2018-12-31. You can find the corresponding table here.

covid_de_vaccines.csv: In April 2021 I added this file that contains the Covid-19 vaccination progress for Germany as a whole. It details daily doses, broken down cumulatively by manufacturer, as well as the cumulative number of people having received their first and full vaccination. The earliest data are from 2020-12-27.

de_state.*: Geospatial shape files for Germany's 16 federal states. Downloaded via Germany's Federal Agency for Cartography and Geodesy . Specifically, the shape file was obtained from this link.

# Column Description
COVID-19 dataset covid_de.csv:

state: Name of the German federal state. Germany has 16 federal states. I removed converted special characters from the original data.

county: The name of the German Landkreis (LK) or Stadtkreis (SK), which correspond roughly to US counties.

age_group: The COVID-19 data is being reported for 6 age groups: 0-4, 5-14, 15-34, 35-59, 60-79, and above 80 years old. As a shortcut the last category I'm using "80-99", but there might well be persons above 99 years old in this dataset. This column has a few NA entries.

gender: Reported as male (M) or female (F). This column has a few NA entries.

date: The calendar date of when a case or death were reported. There might be delays that will be corrected by retroactively assigning cases to earlier dates.

cases: COVID-19 cases that have been confirmed through laboratory work. This and the following 2 columns are counts per day, not cumulative counts.

deaths: COVID-19 related deaths.

recovered: Recovered cases.

Demographic dataset demographics_de.csv:

state, gender, age_group: same as above. The demographic data is available in higher age resolution, but I have binned it here to match the corresponding age groups in the covid_de.csv file.

population: Population counts for the respective categories. These numbers reflect the (most recent available) estimates on 2018-12-31.

Vaccination progress dataset covid_de_vaccines.csv:

date: calendar date of vaccination

doses, doses_first, doses_second: Daily count of administered doses: total, 1st shot, 2nd shot.

pfizer_cumul, moderna_cumul, astrazeneca_cumul: Daily cumulative number of administered vaccinations by manufacturer.

persons_first_cumul, persons_full_cumul: Daily cumulative number of people having received their 1st shot and full vaccination, respectively.

# Acknowledgements
All the data have been extracted from open data sources which are being gratefully acknowledged:

The Robert Koch Institute for collecting, verifying, and publishing the COVID-19 cases.

The National Platform for Geographic Data provided by ESRI Germany for the COVID-19 dashboard and data access.

The Statistisches Bundesamt) and their open data platform GENESIS for providing access to detailed demographic information about Germany.

The Federal Agency for Cartography and Geodesy for providing geospatial shape files.

The website Impfdashboard.de for providing up-to-date vaccination numbers.

# Licence
The demographic data & geospatial shape files are being licensed via the "Data licence Germany – attribution – Version 2.0" available here.

# Version Notes
Version 8: The source data was incomplete on 2020-04-04, therefore the file covid_de.csv remained unchanged. I added county-level shape files.

Version 11: A recovered column was added to the main covid_de.csv file. This reflects the addition of daily counts of recovered cases to the source data. In addition, the 2020-04-07 source data was incomplete and I didn't upload a new update that day.

Version 13: The previous day 2020-04-10 had incomplete source data and I didn't upload a new update that day.
