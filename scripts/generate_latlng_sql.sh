for file in `ls -1 *.json`
do
	num=`echo $file | sed "s/\.json//g"`;
	data=`cat $file | jq '.results[0].geometry | {location_type: .location_type, latitude: .location.lat, longitude: .location.lng}' | sed "s/[{}]//g" | sed "s/\"\: /\=/g" | sed "s/ \"/ /g"`;
	echo "update buildings set "$data" where building="$num";";
	
done

