giorno=$(date +%d)
mese=$(date +%m)
anno=$(date +%Y)
ora=$(date +%H)
minuto=$(date +%M)
update=$anno$mese$giorno$ora$minuto
lastmodified=$giorno"-"$mese"-"$anno
echo "{update}={$update}" >> $GITHUB_ENV
echo "{lastmodified}={$lastmodified}" >> $GITHUB_ENV

#cd contrib
#for s in xfiles_*; do (head -n 1 "${s}" && tail -n +2 "${s}" | sort) > sorted_${s}; done
#	for f in sorted_*; do (cat "${f}") >> experimental.txt; done

exit
