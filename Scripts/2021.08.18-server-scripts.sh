 bash
    2  zsh
    3  sh
    4  ls
    5  htop
    6  ls
    7  cd healthcare-platform/
    8  ls
    9  cd databus-releases/
   10  ls
   11  mkdir healthcare
   12  cd healthcare/
   13  ls
   14  mkdir covid-world-vaccination-progress
   15  mkdir covid-world-vaccine-adverse-reactions
   16  ls
   17  cd covid-world-vaccin
   18  ls
   19  cd covid-world-vaccination-progress/
   20  ls
   21  mkdir 2021.08.02
   22  cd 2021.08.02/
   23  ls
   24  cp ../../../../Data/kaggle_CovidWorldVaccinationProgress/*.bz2 .
   25  ls
   26  cd ..
   27  ls
   28  cd covid-world-vaccination-progress/
   29  ls
   30  cd 2021.08.02/
   31  ls
   32  rm country_vaccinations_by_manufacturer_triples.nt.bz2
   33  ls
   34  mv country_vaccinations_by_manufacturer.csv.bz2 covid-world-vaccination-progress.csv.bz2
   35  ls
   36  cd ..
   37  nano covid-world-vaccination-progress.md
   38  ls
   39  cd ..
   40  nano pom.xml
   41  cd covid-world-vaccin
   42  cd covid-world-vaccination-progress/
   43  ls
   44  nano po
   45  nano pom.xml
   46  cat covid-world-vaccination-progress.md
   47  nano pom.xml
   48  ll
   49  cd ..
   50  ls
 51  nano pom.xml
   52  cat covid-world-vaccination-progress/
   53  nano pom.xml
   54  ls
   55  mvn deploy
   56  nano pom.xml
   57  mvn deploy
   58  nano pom.xml
   59  mvn deploy
   60  cat pom.xml
   61  mvn deploy
   62  ls
   63  cd ..
   64  ls
   65  ll
   66  mv healthcare-input
   67  mv healthcare healthcare-input
   68  mv healthcare-input/ healthcare-raw
   69  mkdir healthcare-input
   70  ll
   71  cd healthcare-
   72  cd healthcare-raw/
   73  ls
   74  cd ..
   75  tree .
   76  git status
   77  cd ..
   78  ls
   79  cat .gitattributes
   80  ls
   81  cd Data/
   82  l
   83  scd kaggle_CovidWorldVaccinationProgress/
   84  ls
   85  cd kaggle_Covid19WorldVaccineAdverseReactions/
   86  ls
   87  cd ..
   88  cd kaggle_CovidWorldVaccinationProgress/
   89  ls
   90  ll
   91  pwd
   92  cd ..
   93  cd databus-releases/
   94  ls
   95  ll
   96  tree
   97  cd healthcare-raw/covid-world-vaccin
   98  ls
   99  cd healthcare-raw/
  100  ls
 cd covid-world-vaccine-adverse-reactions/
  102  ls
  103  mkdir 2021.08.03
  104  ls
  105  mv *.bz2 2021.08.03/
  106  ls
  107  cd ..
  108  ls
  109  cd healthcare-input/
  110  sl
  111  cd ..
  112  tree
  113  cd healthcare-
  114  cd healthcare-input/
  115  ls
  116  cat pom.xml
  117  cd ..
  118  ls
  119  cd ..
  120  cd databus-upload/
  121  ls
  122  tree
  123  cat pom.xml
  124  cat kaggle_CovidWorldVaccinationProgress/pom.xml
  125  cd ..
  126  ls
  127  tree
  128  cd databus-upload/
  129  ls
  130  tree
  131  cd kaggle_CovidWorldVaccinationProgress/2021.07.29/
  132  ls
  133  lbzcat country_vaccinations_triples.nt.bz2
  134  lbzcat country_vaccinations_triples.nt.bz2 | rapper - urn:base -o turtle
  135  lbzcat country_vaccinations_triples.nt.bz2 | rapper - urn:base -o ttl
  136  lbzcat country_vaccinations_triples.nt.bz2 | rapper - urn:base -o turtle
  137  lbzcat country_vaccinations_triples.nt.bz2 |less
  138  lbzcat country_vaccinations_triples.nt.bz2 | rapper - urn:base -i ntriples -o turtle
  139  ls
  140  cd ..
  141  l
  142  git pull
  143  ls
  144  cd databus-upload/
  145  ls
  146  nano pom.xml
  147  ls
  148  cd raw/
  149  ls
150  cd ..
  151  mv pom.xml raw/
  152  ls
  153  cd raw/
  154  ls
  155  nano pom.xml
  156  ls
  157  mv kaggle_Covid19TrackingGermany/ covid-tracking-germany
  158  nano covid-tracking-germany/covid-tracking-germany.md
  159  nano pom.xml
  160  nano covid-tracking-germany/pom.xml
  161  mvn deploy
  162  nano pom.xml
  163  nano covid-tracking-germany/
  164  nano covid-tracking-germany/pom.xml
  165  nano pom.xml
  166  nano covid-tracking-germany/pom.xml
  167  nano pom.xml
  168  mvn deploy
  169  nano covid-tracking-germany/pom.xml
  170  nano covid-tracking-germany/covid-tracking-germany.md
  171  cd covid-tracking-germany/
  172  ls
  173  cd ..
  174  nano pom.xml
  175  nano covid-tracking-germany/pom.xml
  176  cd covid-tracking-germany/2021.08.09/
  177  ls
  178  mv covid_de.csv.bz2 covid-tracking-germany.csv.bz2
  179  mv covid_de_vaccines.csv.bz2 covid-tracking-germany_tag=vaccines.csv.bz2
  180  cd ..
  181  mvn deploy
  182  mvn deploy -e
  183  nano pom.xml
  184  mvn deploy -e
  185  nano pom.xml
  186  bash
  187  zsh
  188  ls
  189  cd ..
  190  ls
  191  cd databus-
  192  cd databus-upload/
  193  ls
  194  git pull
  195  ls
  196  cd raw/
  197  ls
  198  cat pom.xml
  199  ls
  200  cd ..
  201  ls
  202  cd covid19-
  203  cd covid19-tracking-germany/
  204  ls
  205  cd 2021.08.09/
  206  ls
  207  cd ..
  208  ls
  209  cd ..
  210  ls
  211  cd raw/
  212  s
  213  ls
  214  cd covid-tracking-germany/
  215  ls
  216  cd 2021.08.09/
  217  ls
  218  cd ..
  219  tree
  220  cd covid-tracking-germany/2021.08.12/
  221  ls
  222  mv covid_de.csv.bz2 covid-tracking-germant.csv.bz2
  223  ls
  224  mv covid_de_vaccines.csv.bz2 covid-tracking-germany_tag=vaccines.csv.bz2
  225  ls
  226  mv covid-tracking-germant.csv.bz2 covid-tracking-germany.csv.bz2
  227  ls
  228  cd ..
  229  mvn versions:set -DnewVersion="2021.08.12"
  230  ls
  231  nano pom.xml
  232  cd covid-tracking-germany/po
  233  nano covid-tracking-germany/pom.xml
  234  mvn deploy
  235  ls
  236  cd ..
  237  ls
  238  cd covid19-
  239  cd covid19-tracking-germany/
  240  ls
  241  cd 2021.08.09/
  242  ls
  243  cd ..
  244  ls
  245  cd ..
  246  ls
  247  history
