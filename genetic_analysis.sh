## Exam
mkdir genomics2025_exam
cd genomics2025_exam/
mkdir AD
cd AD
mkdir case731
mkdir case593
mkdir case671
cd genomics2025_exam/
mkdir AR
cd AR
mkdir case732
mkdir case739
cd AD

#Case731

cd case731
ln -s /home/BCG2025_genomics_exam/case731_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case731_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case731_mother.fq.gz
fastqc *.fq.gz

nohup bowtie2 -U case731_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case731_child.bam &
nohup bowtie2 -U case731_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case731_father.bam &
nohup bowtie2 -U case731_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case731_mother.bam &

samtools index case731_child.bam
samtools index case731_father.bam
samtools index case731_mother.bam

nohup freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case731_child.bam case731_father.bam case731_mother.bam > Trio731.vcf &

bcftools view -i 'GT[2]="0/1" && GT[0]="0/0" && GT[1]="0/0" && QUAL>=20' Trio731.vcf > candidates731.vcf

Then e! and:
https://grch37.ensembl.org/Homo_sapiens/Tools/VEP/Results?field1=IMPACT;from=1;operator1=is;size=37;tl=8Z57E8H81aJbnwp7-10915062;to=37;value1=HIGH#Results

TOWNES-BROCKS SYNDROME 1

#Case732
cd case 732
ln -s /home/BCG2025_genomics_exam/case732_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case732_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case732_mother.fq.gz
fastqc *.fq.gz

nohup bowtie2 -U case732_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case732_child.bam &
nohup bowtie2 -U case732_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case732_father.bam &
nohup bowtie2 -U case732_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case732_mother.bam &

samtools index case732_child.bam
samtools index case732_father.bam
samtools index case732_mother.bam

nohup freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case732_child.bam case732_father.bam case732_mother.bam > Trio732.vcf &

bcftools view -i 'GT[2]="1/1" && GT[0]="0/1" && GT[1]="0/1" && QUAL>=20' Trio732.vcf > candidates732.vcf
No dio ningun resultado asi que probamos con 
bcftools view -i 'GT[2]="0/0" && GT[0]="0/1" && GT[1]="0/1" && QUAL>=20' Trio732.vcf > candidates732.vcf

bcftools view -i 'GT[2]="1/1" && GT[0]="0/0" && GT[1]="0/0" && QUAL>=20' Trio732.vcf > candidates732.vcf
REVISAAAAR!!!!!!!!!
https://grch37.ensembl.org/Homo_sapiens/Tools/VEP/Results?field1=PHENO;from=1;operator1=is;size=167;tl=cYkiKVSQf5HNoAfc-10915065;to=167;value1=#Results

#Case593
cd case593
ln -s /home/BCG2025_genomics_exam/case593_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case593_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case593_mother.fq.gz
fastqc *.fq.gz

nohup bowtie2 -U case593_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case593_child.bam &
nohup bowtie2 -U case593_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case593_father.bam &
nohup bowtie2 -U case593_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case593_mother.bam &

samtools index case593_child.bam
samtools index case593_father.bam
samtools index case593_mother.bam

nohup freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case593_child.bam case593_father.bam case593_mother.bam > Trio593.vcf &

bcftools view -i 'GT[2]="0/1" && GT[0]="0/0" && GT[1]="0/0" && QUAL>=20' Trio593.vcf > candidates593.vcf

https://grch37.ensembl.org/Homo_sapiens/Tools/VEP/Results?field1=IMPACT;operator1=is;time=1743002605227.227;tl=Y3hL2VvwrNQhbNb7-10915059;value1=HIGH#Results
Autosomal dominant polycystic kidney disease adult type

#case739
cd case 739
ln -s /home/BCG2025_genomics_exam/case739_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case739_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case739_mother.fq.gz
fastqc *.fq.gz

nohup bowtie2 -U case739_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case739_child.bam &
nohup bowtie2 -U case739_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case739_father.bam &
nohup bowtie2 -U case739_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case739_mother.bam &

samtools index case739_child.bam
samtools index case739_father.bam
samtools index case739_mother.bam

nohup freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case739_child.bam case739_father.bam case739_mother.bam > Trio739.vcf &

bcftools view -i 'GT[2]="1/1" && GT[0]="0/1" && GT[1]="0/1" && QUAL>=20' Trio739.vcf > candidates739.vcf


https://grch37.ensembl.org/Homo_sapiens/Tools/VEP/Results?field1=IMPACT;from=1;operator1=is;size=653;tl=qL4QIc9xEiQF4VMN-10915067;to=653;value1=HIGH#Results

Fanconi anemia

#Case671
cd case671
ln -s /home/BCG2025_genomics_exam/case671_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case671_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case671_mother.fq.gz
fastqc *.fq.gz

bowtie2 -U case671_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case671_child.bam
bowtie2 -U case671_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case671_father.bam
bowtie2 -U case671_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case671_mother.bam

samtools index case671_child.bam
samtools index case671_father.bam
samtools index case671_mother.bam

freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case671_child.bam case671_father.bam case671_mother.bam > Trio671.vcf

bcftools view -i 'GT[2]="0/1" && GT[0]="0/0" && GT[1]="0/0" && QUAL>=20' Trio671.vcf > candidates671.vcf

https://grch37.ensembl.org/Homo_sapiens/Tools/VEP/Results?from=1;size=35;tl=t7iEBif6QbgDNGQS-10915061;to=35#Results
Tuberous sclerosis syndrome


#########################################################################
Mazza
#Case697 AR
cd case697
ln -s /home/BCG2025_genomics_exam/case697_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case697_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case697_mother.fq.gz
fastqc *.fq.gz

bowtie2 -U case697_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case697_child.bam
bowtie2 -U case697_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case697_father.bam
bowtie2 -U case697_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case697_mother.bam

samtools index case697_child.bam
samtools index case697_father.bam
samtools index case697_mother.bam

freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case697_child.bam case697_father.bam case697_mother.bam > Trio697.vcf

bcftools view -i 'GT[2]="1/1" && GT[0]="0/1" && GT[1]="0/1" && QUAL>=20' Trio697.vcf > candidates697.vcf


#case738 AD
cd case738
ln -s /home/BCG2025_genomics_exam/case738_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case738_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case738_mother.fq.gz
fastqc *.fq.gz

bowtie2 -U case738_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case738_child.bam
bowtie2 -U case738_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case738_father.bam
bowtie2 -U case738_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case738_mother.bam

samtools index case738_child.bam
samtools index case738_father.bam
samtools index case738_mother.bam

freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case738_child.bam case738_father.bam case738_mother.bam > Trio738.vcf

bcftools view -i 'GT[2]="0/1" && GT[0]="0/0" && GT[1]="0/0" && QUAL>=20' Trio738.vcf > candidates738.vcf


#Case641 AR
cd case641
ln -s /home/BCG2025_genomics_exam/case641_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case641_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case641_mother.fq.gz
fastqc *.fq.gz

bowtie2 -U case641_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case641_child.bam
bowtie2 -U case641_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case641_father.bam
bowtie2 -U case641_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case641_mother.bam

samtools index case641_child.bam
samtools index case641_father.bam
samtools index case641_mother.bam

freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case641_child.bam case641_father.bam case641_mother.bam > Trio641.vcf

bcftools view -i 'GT[2]="1/1" && GT[0]="0/1" && GT[1]="0/1" && QUAL>=20' Trio641.vcf > candidates641.vcf


#Case628 AR
cd case628
ln -s /home/BCG2025_genomics_exam/case628_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case628_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case628_mother.fq.gz
fastqc *.fq.gz

bowtie2 -U case628_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case628_child.bam
bowtie2 -U case628_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case628_father.bam
bowtie2 -U case628_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case628_mother.bam

samtools index case628_child.bam
samtools index case628_father.bam
samtools index case628_mother.bam

freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case628_child.bam case628_father.bam case628_mother.bam > Trio628.vcf

bcftools view -i 'GT[2]="1/1" && GT[0]="0/1" && GT[1]="0/1" && QUAL>=20' Trio628.vcf > candidates628.vcf


#Case689 AD

cd case689
ln -s /home/BCG2025_genomics_exam/case689_child.fq.gz
ln -s /home/BCG2025_genomics_exam/case689_father.fq.gz
ln -s /home/BCG2025_genomics_exam/case689_mother.fq.gz
fastqc *.fq.gz

bowtie2 -U case689_child.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SC' --rg 'SM:Child' |samtools view -Sb |samtools sort -o case738_child.bam
bowtie2 -U case689_father.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SF' --rg 'SM:Father' |samtools view -Sb |samtools sort -o case738_father.bam
bowtie2 -U case689_mother.fq.gz -x /home/BCG2025_genomics_exam/uni --rg-id 'SM' --rg 'SM:Mother' |samtools view -Sb |samtools sort -o case738_mother.bam

samtools index case689_child.bam
samtools index case689_father.bam
samtools index case689_mother.bam

freebayes -f /home/BCG2025_genomics_exam/universe.fasta -t /home/BCG2025_genomics_exam/exons16Padded_sorted.bed -m 20 -C 5 -Q 10 --min-coverage 10 case689_child.bam case689_father.bam case689_mother.bam > Trio689.vcf

bcftools view -i 'GT[2]="0/1" && GT[0]="0/0" && GT[1]="0/0" && QUAL>=20' Trio689.vcf > candidates689.vcf
