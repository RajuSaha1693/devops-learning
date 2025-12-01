mkdir devops
cd devops
mkdir scripts src backup logs
touch src/app.js logs/app.log

---

echo "Aplication started at $(date)" >> logs/app/log
echo "Processing..." >> logs/app.log

---

## cat logs/app.log

## grep "started" logs/app.log

## tar -czvf backup.tar.gz logs/

nano scripts/backup.sh

> > > echo "Starting backup..."
> > > tar -czvf backup-$(date +%F).tar.gz logs/
> > > echo "Backup done"

## Save - Ctrl+O - Ctrl+X

## chmod +x scripts/backup.sh

./scripts/backup.sh
