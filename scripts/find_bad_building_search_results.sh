for file in `ls -1 *.json`
do
	num=`echo $file | sed "s/\.json//g"`;
	len=`cat $file | jq '.results | length'`;
	re='^[0-9]+$'; 
	if ! [[ $len =~ $re ]]; then
		echo $num;
	fi 
	if [ $len -gt 1 ]; then 
	 	echo $num >> weird.txt;
	else
	 	echo $num >> good.txt;
	fi
done

