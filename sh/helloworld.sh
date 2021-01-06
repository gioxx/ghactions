giorno=$(date +%d)
mese=$(date +%m)
anno=$(date +%Y)
ora=$(date +%H)
minuto=$(date +%M)
update=$anno$mese$giorno$ora$minuto
lastmodified=$giorno"-"$mese"-"$anno
echo "{update}={$update}" >> $GITHUB_ENV
echo "{lastmodified}={$lastmodified}" >> $GITHUB_ENV

NL=$'\n'
echo "[Adblock Plus 2.8]${NL}" > list_header.txt
echo "! Version: "$update${NL} >> list_header.txt
echo "! Title: ABP eXperimental Files: the unstable list${NL}" >> list_header.txt
echo "! Fork sperimentale di X Files, si consiglia di usare la lista Stable!${NL}" >> list_header.txt
echo "! Last modified: "$lastmodified${NL} >> list_header.txt
echo "! Expires: 2 days${NL}" >> list_header.txt
echo "! Homepage: https://xfiles.noads.it${NL}" >> list_header.txt
echo "! Home: https://xfiles.noads.it${NL}" >> list_header.txt
echo "! Blog: https://gioxx.org/tag/abpxfiles${NL}" >> list_header.txt
echo "! Hosting: GitHub.com${NL}" >> list_header.txt
echo "!" >> list_header.txt

cat list_header.txt
list_header=$(cat list_header.txt)
echo "{list_header}={$list_header}" >> $GITHUB_ENV

#cd contrib
#for s in xfiles_*; do (head -n 1 "${s}" && tail -n +2 "${s}" | sort) > sorted_${s}; done
#	for f in sorted_*; do (cat "${f}") >> experimental.txt; done

exit
