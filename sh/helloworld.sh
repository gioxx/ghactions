#	Date and time
#	Credits: 	https://www.lifewire.com/display-date-time-using-linux-command-line-4032698
#			      https://stackoverflow.com/questions/20485749/how-to-set-a-variable-to-current-date-and-date-1-in-linux
	giorno=$(date +%d)
	mese=$(date +%m)
	anno=$(date +%Y)
	ora=$(date +%H)
	minuto=$(date +%M)
	update=$anno$mese$giorno$ora$minuto
	lastmodified=$giorno"-"$mese"-"$anno

	echo "Debug Update:        " $update
	echo "Debug Last Modified: " $lastmodified
