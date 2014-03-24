IFS=$'\n' 

match=($(grep -i {query} codes.txt))

echo '<?xml version="1.0"?>'
echo '<items>'
echo ''

for i in ${match[@]}; do
	acode=($(echo "$i" | cut -d\: -f1))
	acity=($(echo "$i" | cut -d\: -f2))

	echo "<item arg=\"$acode\" valid=\"yes\">"
	echo "<title>Area Code: ($acode) - $acity</title>"
	echo "<subtitle>Press Enter for more details</subtitle>"
	echo "<icon>ac.png</icon></item>"
	echo ""
done

echo "</items>"
