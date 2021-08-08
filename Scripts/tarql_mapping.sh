# Mapping with Tarql for the CSV files

pwd
# /d/DBpedia2021/healthcare-platform/databus-upload/kaggle_CovidWorldVaccinationProgress/2021.08.05

# mapping for Covid World Vaccination Progress https://www.kaggle.com/gpreda/covid-world-vaccination-progress
../../../tarql/bin/tarql --ntriples country_vaccinations_sparql.sparql country_vaccinations.csv > country_vaccinations_triples_rerun.nt
../../../tarql/bin/tarql --ntriples country_vaccinations_by_manufacturer_sparql.sparql country_vaccinations_by_manufacturer.csv > country_vaccinations_by_manufacturer_triples.nt


# compress files with bzip2
bzip2 country_vaccinations.csv