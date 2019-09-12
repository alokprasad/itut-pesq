#for i in ../asr_cli_sounds/mix-48-all-pad-pcm/*.pcm
#do
#file=`basename $i`
#filename=`echo "$file" | cut -d'.' -f-1`
#echo $file
#./rnnoise_demo $i rnnoise_$filename.s16
#sox -r 48000 -c 1 $filename.s16 -r 16000 -c 1 rnnoise_$filename.wav
#done

#exit 

echo "==========People============="
for i in rnnoise_people*.wav
do
file=`basename $i`
filename=`echo "$file" | cut -d'.' -f-1`
original=`echo $file | awk -Frnnoise_people_ '{print $2}'`
#echo $original
score=`./bin/pesq +16000 +wb ../asr_cli_sounds/org-16k/$original $file |grep MOS`
echo $score
done

echo "==========Street============="
for i in rnnoise_street*.wav
do
file=`basename $i`
#filename=`echo "$file" | cut -d'.' -f-1`
original=`echo $file | awk -Frnnoise_street_ '{print $2}'`
score=`./bin/pesq +16000 +wb ../asr_cli_sounds/org-16k/$original $file | grep MOS`
echo $score
done


echo "==========Car============="
for i in rnnoise_car*.wav
do
file=`basename $i`
filename=`echo "$file" | cut -d'.' -f-1`
#echo $filename
original=`echo $file | awk -Frnnoise_car_ '{print $2}'`
score=`./bin/pesq +16000 +wb ../asr_cli_sounds/org-16k/$original $file | grep MOS`
#./rnnoise_demo $i rnnoise_$file
echo $score
done
