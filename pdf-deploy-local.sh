

where="prod@192.168.43.140"
where="pi@192.168.1.106"

rsync -avh \
  --exclude=.git \
  --exclude=.htaccess \
  -e 'ssh -p 22' \
  cache/ $where:/home/prod/Desktop/lighthouseprinter/cache/ \
  dropbox.sh $where:/home/prod/Desktop/lighthouseprinter/
