# healthcare-platform
Repository for the GSoC 2021 project 'Update DBpedia SPARQL for Wiki Resources Related to Pandemic, Healthcare, and Health AI Fields'.

## Blog URL
[DBpedia-GSoC2021](https://guang-zh.github.io/dbpedia-GSoC2021/)

## Proposal
[Proposal for Healthcare Platform](https://docs.google.com/document/d/1kGc_-2c9FV_pjw5Y0rD3VW8jecGz4Q5MlsqZKiIYpZ8/edit#)

## Contributions to DBpedia by Guang with help from mentor Marvin in DBpedia:
- Healthcare Research and Datasets Finding: [#Potential Healthcare Datasets](https://guang-zh.github.io/dbpedia-GSoC2021/)
- [Convert Kaggle CSV files to RDF using Tarql](https://tarql.github.io/)
- [Release on DBpedia databus as DBpedia extension](https://databus.dbpedia.org/hckg/) (raw for csv files, mappings for sparql queries, input for rdf triples converted by tarql)
- [Auto updating datasets using Shell Scripts](https://github.com/dbpedia/healthcare-platform/blob/main/databus-upload-update.sh)
- [Add DBpedia Ontology mappings related to Healthcare and COVID19](http://mappings.dbpedia.org/index.php/Special:Contributions/Guangzhang) (e.g. vaccination statistics, vaccine, doses, pfizer, moderna, astrazenca, doses)
- [dbpedia/healthcare-platform github repo: >100 commits by Guang](https://github.com/dbpedia/healthcare-platform)

## COVID Mapping using Tarql (guang-zh) and Datasets uploaded to Databus using maven-databus (Marvin)
[Diagram on Google Drive for the datasets](https://drive.google.com/file/d/148L6tIGYblEgEZtLZ-LThCvaYY_jla29/view?usp=sharing)
- [COVID19-world-vaccination-progress](https://www.kaggle.com/gpreda/covid-world-vaccination-progress)
- [COVID19-world-vaccine-adverse-reactions](https://www.kaggle.com/ayushggarg/covid19-vaccine-adverse-reactions)
- [COVID19-variants-worldwide-evolution](https://www.kaggle.com/gpreda/covid19-variants)
- [COVID19-tracking-germany](https://www.kaggle.com/headsortails/covid19-tracking-germany)
![alt text](https://github.com/dbpedia/healthcare-platform/blob/main/COVID-Mapping.png)

## Federated Queries for COVID19 Vaccination Statistics

[COVID19 Vaccination Doses By Date in Germany](https://api.triplydb.com/s/BY_zZWLNH)
```
PREFIX dbo: <http://dbpedia.org/ontology/>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT DISTINCT ?date ?dose WHERE {
  Service <http://dbpedia.org/sparql> {
    <http://dbpedia.org/resource/Germany> rdfs:label ?label ;
                                        dbo:populationTotal ?pupTotal .
  }
  ?s dbo:dose ?dose .
  ?s dbo:date ?date .
} ORDER BY DESC(?date)
```
![alt text](https://github.com/dbpedia/healthcare-platform/blob/main/Scripts/dosesByDateGermany.PNG)

## Tasks to do:
- Run Federated Queries on DBpedia Live for retrieving COVID19 and Healthcare datasets and information
- Make the datasets auto-checking datasets versions and auto-updating the DBpedia datasets on Databus
- Research more healthcare datasets and add them to the DBpedia databus as extension
- Build healthcare platform for retrieving the healthcare and COVID19 datasets and information
