giorno=$(date +%d)
mese=$(date +%m)
anno=$(date +%Y)
ora=$(date +%H)
minuto=$(date +%M)
echo "update=$anno$mese$giorno$ora$minuto" >> $GITHUB_ENV
echo "lastmodified=$giorno"-"$mese"-"$anno" >> $GITHUB_ENV

#cd contrib
#for s in xfiles_*; do (head -n 1 "${s}" && tail -n +2 "${s}" | sort) > sorted_${s}; done
#	for f in sorted_*; do (cat "${f}") >> experimental.txt; done

exit
