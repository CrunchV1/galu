# check if httpx installed
if ! [ -x "$(command -v httpx)" ];
then
    echo "httpx could not be found, install at https://github.com/projectdiscovery/httpx"
    exit 1
fi


# check if unfurl is installed
if ! [ -x "$(command -v unfurl)" ];
then
    echo "unfurl could not be found, install at https://github.com/tomnomnom/unfurl"
    exit 1
fi


# put stdin in a varaible
stdin=$(cat /dev/stdin)

# check for live hosts, and generate a regex grep value ("domain1\|domain2")
grepValues=$(echo ${stdin} | tr " " "\n" |  unfurl format %a | sort --uniq | httpx --silent | unfurl format %d)


# go through all the lines from the stdin
echo $stdin | tr " " "\n" | while read line
do
	# go through all the domains that are up
	echo $grepValues | tr " " "\n" | while read grepValue
	do
		# if the line contains a domain that is live, echo back
		echo "$line" | grep -Ei "${grepValue}" 
	done
done
