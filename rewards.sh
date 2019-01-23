#!/bin/bash
tzclient=./tezos-client
file="./payments";
log="./payments.log";

date=`date "+%Y-%m-%d %H:%M:%S"`;

IFS=$'\n' read  -d'' -r -a lines  < $file
counter=0

        printf "NEW PAYMENTS:\n" >> payments.log;
cat $file | while read line; 
do
        address=`echo ${lines[$counter]}|awk '{print $1}'`;
        amount=`echo ${lines[$counter]}|awk '{print $2}'`;

        #debug
        cmd_debug="$tzclient transfer $amount from fenix to $address --burn-cap 0.257";
        echo $cmd_debug;

        printf  "%s %s %s %s\n" $date $address $amount >> payments.log;
        counter=$(($counter+1));
done

#all lines
#echo "${lines[@]}"
