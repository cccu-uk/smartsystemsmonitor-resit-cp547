#!/bin/sh

LOGD=//10.150.200.120:media\hydra\NAS\3DPrinterImages\Node4\ #instructs which directory to log

MAX=1500 #max number of logs to keep

files=(access.log error.log) #informs what logs to keep

for LOGF in "${files[@]}" 
do 

if [ -f $LOGD/$LOGF.$MAX.gz ]; then
rm $LOGD/$LOGF.$MAX.gz
fi

NUM=$(($MAX - 1))

while [ $NUM -ge 0 ]
do
NUM1=$(($NUM + 1))
if [ -f $LOGD/$LOGF.$NUM.gz ]; then
mv $LOGD/$LOGF.$NUM.gz $LOGD/$LOGF.$NUM1.gz
fi #ensures only one of each log file is kept and deletes frommain file when kept

NUM=$(($NUM - 1))
done

if [ -f $LOGD/$LOGF ]; then
cat $LOGD/$LOGF | gzip > $LOGD/$LOGF.0.gz
cat /dev/null > $LOGD/$LOGF
fi

done
