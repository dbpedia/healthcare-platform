#!/bin/bash

# Convert JSON to RDF using JSON2RDF

# cat ordinary-json-document.json | java -jar json2rdf-jar-with-dependencies.jar 
# https://localhost/ -> json2rdf-example.rdf


cat ordinary-json-document.json | java -jar json2rdf-jar-with-dependencies.jar https://localhost/ > json2rdf-example.rdf
