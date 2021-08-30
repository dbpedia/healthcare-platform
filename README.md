# healthcare-platform
Repository for the GSoC 2021 project 'Update DBpedia SPARQL for Wiki Resources Related to Pandemic, Healthcare, and Health AI Fields'.

## Blog URL
[DBpedia-GSoC2021](https://guang-zh.github.io/dbpedia-GSoC2021/)

## Proposal
[Proposal for Healthcare Platform](https://docs.google.com/document/d/1kGc_-2c9FV_pjw5Y0rD3VW8jecGz4Q5MlsqZKiIYpZ8/edit#)

## Contributions to DBpedia:
- [Datasets deployed to DBpedia databus](https://databus.dbpedia.org/hckg/) (raw for csv files, mappings for sparql queries, input for rdf triples converted by tarql)
- [DBpedia Ontology mappings](http://mappings.dbpedia.org/index.php/Special:Contributions/Guangzhang) (e.g. vaccination statistics, vaccine, doses, pfizer, moderna, astrazenca, doses)
- [dbpedia/healthcare-platform github repo: >100 commits](https://github.com/dbpedia/healthcare-platform)

## COVID Mapping using Tarql (guang-zh) and Datasets uploaded to Databus using maven-databus (Marvin)
[Diagram on Google Drive for the datasets](https://drive.google.com/file/d/148L6tIGYblEgEZtLZ-LThCvaYY_jla29/view?usp=sharing)
- COVID19-world-vaccination-progress
- COVID19-world-vaccine-adverse-reactions
- COVID19-variants-worldwide-evolution
- COVID19-tracking-germany
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
