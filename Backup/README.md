# Backup
Running `./backup.sh <file>` will secure copy `<file>.tar` to a remote host.
Run [envsubst](https://github.com/JulianSauer/envsubst) to set `BACKUP_REMOTE` and `BACKUP_DIRECTORY`.
Meant to be run as a cronjob.