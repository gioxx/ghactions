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

#	List Header
#	Credits:	https://unix.stackexchange.com/questions/20035/how-to-add-newlines-into-variables-in-bash-script
list_header="[Adblock Plus 2.8]\n
! Version: '$update\n
! Title: ABP eXperimental Files: the unstable list\n
! Fork sperimentale di X Files, si consiglia di usare la lista Stable!\n
! Last modified: '$lastmodified\n
! Expires: 2 days\n
! Homepage: https://xfiles.noads.it\n
! Home: https://xfiles.noads.it\n
! Blog: https://gioxx.org/tag/abpxfiles\n
! Hosting: GitHub.com\n
!"

echo "Debug List Header:"
echo $list_header

# Sort filters
#	Credits:	https://stackoverflow.com/questions/14562423/is-there-a-way-to-ignore-header-lines-in-a-unix-sort
pwd
#for s in /contrib/xfiles_*; do (head -n 1 "${s}" && tail -n +2 "${s}" | sort) > "/contrib/sorted_${s}"; done

#	Make ABP eXperimental Files (and clean)!
#	Credits:	https://kb.iu.edu/d/afas
#						https://stackoverflow.com/questions/8183191/concatenating-files-and-insert-new-line-in-between-files
#						https://unix.stackexchange.com/questions/126998/getting-the-line-count-and-storing-in-a-result-set
#						https://unix.stackexchange.com/questions/232384/argument-string-to-integer-in-bash/232386
#	echo "$list_header" > ../experimental.txt
#	for f in sorted_*; do (cat "${f}") >> ../experimental.txt; done
#	rm sorted_*

exit
