# Backup
Creates .tar-files with timestamps. Meant to be run as cronjobs.

## Backup scp
Running `./backup-scp.sh <file>` will secure copy `<file>.tar` to a remote host.
Run [envsubst](https://github.com/JulianSauer/envsubst) to set `BACKUP_REMOTE` and `BACKUP_DIRECTORY`.

## Backup rclone
Running `./backup-rclone.sh <file>` will copy `<file>.tar` to the folder `Docker-Server/` in a cloud storage. A valid config for rclone must be provided in `./volumes/rclone/config`

## Docker-Compose
Syncs `./volumes/rclone/drive/` to a cloud storage.