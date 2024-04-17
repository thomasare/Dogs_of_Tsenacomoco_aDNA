#!/bin/bash

## Last Updated: 2023 December 04, Ariane Thomas

########################################################
############ Create fasta file of all seqs #############
########################################################

#path=/home/ariane/Documents/Dissertation/Analysis/DNA_projects/colonial_dogs/
MINDEPTH=2

echo "********************************************"
echo "******** Copying select fasta files ***********"
echo "********************************************"

mtDNA=("JR_114709" "JR_135138" "JR_135140" "JR_135142" "JR_135143" "JR_135144" "JR_135786" "JR_22647" "JR_23799" "JR_52695" "JR_57981_135777" "JR_74222")


for a in *; do
 if [[ " ${mtDNA[@]} " =~ " ${a} " ]]; then
  cd $a
  NAME=$(basename $a)
  FINAL=${NAME//_/}
  #/home/ariane/Programs/angsd/./angsd -out ${FINAL}_angsd_${MINDEPTH} -i ${FINAL}_mtDNA_sorted.bam -doFasta 2 -doCounts 1 -trim 5 -minMapQ 25 -minQ 20 -setMinDepth ${MINDEPTH}
  #gunzip ${FINAL}_angsd_${MINDEPTH}.fa.gz
  #sed -i "1s/.*/>${FINAL}_angsd_${MINDEPTH}/" ${FINAL}_angsd_${MINDEPTH}.fa
  cp ${FINAL}_angsd_${MINDEPTH}.fa ../lowmappingjamestownfastas/
  echo "Fasta file in folder $NAME copied."
  cd ..
 else
  NAME=$(basename $a)
  echo "Folder $NAME skipped."
 fi
done
echo "**********************************************"
echo "******** Concatenating fasta files ***********"
echo "**********************************************"

cd lowmappingjamestownfastas/
cat *.fa > jamestown_minMap25_$MINDEPTH.fasta

echo "**********************************************"
echo "************ Pipeline Finished ***************"
echo "**********************************************"
