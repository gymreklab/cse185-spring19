#!/bin/bash

### Extract fastq for a genomic region 
### in NA12878/NA12891/NA12892 trio
### See table of mutations Table S1 https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3322360/
### e.g. de novo coding mutation chr6:128505804-128505805

OUTDIR=/storage/mgymrek/cse-185-spring19/lab1_NGS/data

## 1. Extract BAM region (+/- 100kb)
REGION="chr6:128405804-128605805"
samtools view -bS /storage/nmmsv/plat_genome/NA12878_S1.bam $REGION > ${OUTDIR}/NA12878_child.bam
samtools view -bS /storage/nmmsv/plat_genome/NA12891_S1.bam $REGION > ${OUTDIR}/NA12891_father.bam
samtools view -bS /storage/nmmsv/plat_genome/NA12892_S1.bam $REGION > ${OUTDIR}/NA12892_mother.bam

## 2. Sort by query name
for f in $(ls ${OUTDIR}/*.bam)
do 
    samtools sort -n -o ${OUTDIR}/$(basename $f .bam).sorted.bam $f
done

## 3. Convert back to fastq
for f in $(ls ${OUTDIR}/*.sorted.bam)
do
    bamToFastq -i $f \
	-fq ${OUTDIR}/$(basename $f .sorted.bam)_1.fq \
	-fq2 ${OUTDIR}/$(basename $f .sorted.bam)_2.fq
done

