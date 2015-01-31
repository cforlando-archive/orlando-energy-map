for line in `cat addresses.txt`
do
	pid=`echo $line | sed "s/|.*$//g"`;
	address=`echo $line | sed "s/^.*|//g"`;
	filename=$pid".json";
	curl -S -o $filename https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=AIzaSyAUDsNmxSkOXsrCsn5Rjoqy1iN3hGwkhDg
	sleep 5
done
