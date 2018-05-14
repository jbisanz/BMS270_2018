#Script to install all requirements for Microbiome tutorial

#Now get required packages
if(!require(devtools)){install.packages("devtools")}

if(!require(tidyverse)){install.packages("tidyverse")}
if(!require(vegan)){install.packages("vegan")}
if(!require(DT)){install.packages("DT")}
if(!require(plotly)){install.packages("plotly")}

source("https://bioconductor.org/biocLite.R") #install bioconductor
if(!require(phyloseq)){biocLite("phyloseq")}
if(!require(genefilter)){biocLite("genefilter")}
if(!require(DECIPHER)){biocLite("DECIPHER")}
if(!require(phangorn)){biocLite("phangorn")}
if(!require(ggtree)){biocLite("ggtree")}
if(!require(DESeq2)){biocLite("DESeq2")}
if(!require(dada2)){biocLite("dada2")}
if(!require(philr)){biocLite("philr")}
if(!require(picante)){biocLite("picante")}
if(!require(ape)){biocLite("ape")}


devtools::install_github("jbisanz/MicrobeR") #always resinstall this as it is in development phase

if(.Platform$OS.type=="unix"){
  print("Downloading raw for OSX and Ubuntu using curl")
  
download.file("https://zenodo.org/record/158955/files/rdp_train_set_14.fa.gz", "rdp_train_set_14.fa.gz", method="curl", quiet=F)
download.file("https://zenodo.org/record/158955/files/rdp_species_assignment_14.fa.gz", "rdp_species_assignment_14.fa.gz", method="curl", quiet=F)
download.file("https://raw.githubusercontent.com/jbisanz/BMS270_2018/master/Tutorial_metadata.txt","Tutorial_metadata.txt", method="curl", quiet=F)
}