giorno=$(date +%d)
mese=$(date +%m)
anno=$(date +%Y)
ora=$(date +%H)
minuto=$(date +%M)
update=$anno$mese$giorno$ora$minuto
lastmodified=$giorno"-"$mese"-"$anno
echo "::set-env name=UPDATE::$update"
echo "::set-env name=LASTMODIFIED::$lastmodified"

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
echo "::set-env name=LIST_HEADER::$list_header"

#cd contrib
#for s in xfiles_*; do (head -n 1 "${s}" && tail -n +2 "${s}" | sort) > sorted_${s}; done
#	for f in sorted_*; do (cat "${f}") >> experimental.txt; done

exit
