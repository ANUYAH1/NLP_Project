#$ cat arraymanip.sh
#! /bin/bash
for myfile in *.txt;do
filename=${myfile##*/}
echo "$filename"
#echo "$myfile"
#echo "Script executed from: ${PWD}"
ngram -lm 6-9_1.lm  -order 1 -ppl $myfile >>result_6-9_1.txt
ngram -lm 10-13_1.lm -order 1 -ppl $myfile >>result_6-9_1.txt
ngram -lm 14-17_1.lm -order 1 -ppl $myfile >>result_6-9_1.txt
ngram -lm 18-80_1.lm -order 1 -ppl $myfile >>result_6-9_1.txt
echo "***************************" >>result_6-9_1.txt
done
for mmfile in 10-13/*.txt;do
filename=${mmfile##*/}
echo "$filename"
#echo "$myfile2"
#echo "Script executed from: ${PWD}"
ngram -lm 6-9_1.lm  -order 1 -ppl $mmfile >>result_10-13_1.txt
ngram -lm 10-13_1.lm -order 1 -ppl $mmfile >>result_10-13_1.txt
ngram -lm 14-17_1.lm -order 1 -ppl $mmfile >>result_10-13_1.txt
ngram -lm 18-80_1.lm -order 1 -ppl $mmfile >>result_10-13_1.txt
echo "***************************" >>result_10-13_1.txt
done
for myfile3 in tests/14-17/*.txt;do
filename=${myfile3##*/}
echo "$filename"
#echo "$myfile"
#echo "Script executed from: ${PWD}"
ngram -lm 6-9_1.lm   -order 1 -ppl $myfile3 >>result_14-17_1.txt
ngram -lm 10-13_1.lm -order 1 -ppl $myfile3 >>result_14-17_1.txt
ngram -lm 14-17_1.lm -order 1 -ppl $myfile3 >>result_14-17_1.txt
ngram -lm 18-80_1.lm -order 1 -ppl $myfile3 >>result_14-17_1.txt
echo "***************************" >>result_14-17_1.txt
done
for myfile4 in tests/18-80/*.txt;do
filename=${myfile4##*/}
echo "$filename"
#echo "$myfile"
#echo "Script executed from: ${PWD}"
ngram -lm 6-9_ch.lm -order 3 -ppl $myfile4 >>result_18-80_ch1.txt
ngram -lm 10-13_ch.lm -order 3  -ppl $myfile4 >>result_18-80_ch1.txt
ngram -lm 14-17_ch.lm -order 3 -ppl $myfile4 >>result_18-80_ch1.txt
ngram -lm 18-80_ch.lm -order 3 -ppl $myfile4 >>result_18-80_ch1.txt
echo "***************************" >>result_18-80_ch1.txt
done