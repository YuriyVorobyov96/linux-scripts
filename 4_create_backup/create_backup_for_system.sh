tar cpf /archive/full-backup-`date '+%d-%B-%Y'`.tar \
--directory / --exclude=proc --exclude=mnt --exclude=archive \
--exclude=cache --exclude=*/lost+found .
