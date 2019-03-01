#!/bin/bash

####### qual steps ##########
# fastqc
#/storage/resources/source/FastQC/fastqc -o . \
#    ../data/shortfrag_1.fq ../data/shortfrag_2.fq \
#    ../data/EcMG1_S7_L001_R1_001.fastq ../data/EcMG1_S7_L001_R2_001.fastq

# See adaptor issue in the mate pair library
#nxtrim -1 ../data/EcMG1_S7_L001_R1_001.fastq \
#    -2 ../data/EcMG1_S7_L001_R2_001.fastq \
#    --justmp \
#    -O EcMG1 --separate
#/storage/resources/source/FastQC/fastqc -o . EcMG1_R1.mp.fastq.gz EcMG1_R2.mp.fastq.gz

# Sickle trim
sickle pe -f ../data/shortfrag_1.fq -r ../data/shortfrag_2.fq \
    -o shortfrag_1_trim.fq -p shortfrag_2_trim.fq \
    -s shortfrag_s_trim.fq -t sanger


# Testing ability to get genome size for e coli from kmer dist
k=15
jellyfish count -t 8 -C -m ${k} -s 1000000000 \
    -o jellyfish_${k}_out \
    ../data/shortfrag_1.fq \
    ../data/shortfrag_2.fq

jellyfish histo -o jellyfish_${k}_histo jellyfish_${k}_out_0 

k=15
jellyfish count -t 8 -C -m ${k} -s 1000000000 \
    -o jellyfish_${k}_out2 \
    ../data/EcMG1_S7_L001_R1_001.fastq \
    ../data/EcMG1_S7_L001_R2_001.fastq

jellyfish histo -o jellyfish_${k}_histo2 jellyfish_${k}_out2_0 

#### kmer genie
echo "../data/EcMG1_S7_L001_R1_001.fastq" > readfile.txt
echo "../data/EcMG1_S7_L001_R2_001.fastq" >> readfile.txt

kmergenie ../data/shortfrag_1.fq
kmergenie readfile.txt
