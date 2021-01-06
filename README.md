# GitHub Actions: Test Area
Voglio provare a giocare un po' con GitHub Actions per automatizzare la creazione di X Files sperimentale quando carico nuovi filtri.

Ho quindi portato in questo repository di test i file necessari alla creazione della lista filtri (cartella `contrib`) e ho creato un nuovo Workflow GitHub Actions che si appoggia su un paio di script bash per:

- ottenere data e ora da inserire nell'intestazione lista filtri (`sh/datetime.sh`)
- copiare i file `contrib/xfiles_*` all'interno di un'area temporanea, ordinarli con un `sort` (escludendo la riga di intestazione di ciascuno) e quindi fare merge all'interno di un file unico che corrisponderà a `experimental.txt` nella root del repository (`sh/make_experimental.sh`)

A quel punto lancio un commit che va a pubblicare per tutti la nuova `experimental.txt`.

Il workflow parte solo se un'azione di push ha riguardato uno dei file `xfiles_` presenti nella cartella `contrib`.

------

Documentazione (ufficiale e non), pazienza (tanta), tentativi (molti dei quali falliti), una serie di azioni già disponibili nel marketplace di GitHub (anche se alla fine ho tenuto in vita solo **[github-push-action](https://github.com/ad-m/github-push-action)**).

Ne riparliamo (presto, spero) sul blog.