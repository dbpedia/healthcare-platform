# Mapping with Tarql for the CSV files

pwd
# /d/DBpedia2021/healthcare-platform/databus-upload/kaggle_CovidWorldVaccinationProgress/2021.08.05

# mapping for Covid World Vaccination Progress https://www.kaggle.com/gpreda/covid-world-vaccination-progress
../../../tarql/bin/tarql --ntriples country_vaccinations_sparql.sparql country_vaccinations.csv > country_vaccinations_triples_rerun.nt
../../../tarql/bin/tarql --ntriples country_vaccinations_by_manufacturer_sparql.sparql country_vaccinations_by_manufacturer.csv > country_vaccinations_by_manufacturer_triples.nt

# mapping for Covid 19 Tracking Germany
../../tarql/bin/tarql --ntriples covid_de_vaccines_sparql.sparql covid_de_vaccines.csv > covid_de_vaccines_triples.nt
../../tarql/bin/tarql --ntriples covid_de_sparql.sparql covid_de.csv > covid_de_triples.nt


bin/tarql --ntriples covid_de_vaccines_sparql.sparql covid_de_vaccines.csv > covid_de_vaccines_triples.nt


# compress files with bzip2
bzip2 country_vaccinations.csv
# decompress files with bzip2
bzip2 -d country_vaccinations.csv.bz2


 ../../../../tarql/target/appassembler/bin/tarql -ntriples country_vaccinations_by_manufacturer_sparql.sparql country_vaccinations_by_manufacturer.csv > country_vaccinations_by_manufacturer_triples.nt

 ../../../../tarql/target/appassembler/bin/tarql -ntriples 2021VAERSDATA_sparql.sparql 2021VAERSDATA.csv > 2021VAERSDATA_triples.nt
 ../../../../tarql/target/appassembler/bin/tarql -ntriples covid-variants_sparql.sparql covid-variants.csv > covid-variants_triples.nt
