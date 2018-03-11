start=1
end=50

cache="cache/pdf/"
server="http://localhost:8000"
mkdir -p $cache

phantomjs pdf.js $server/book/ $cache/all
phantomjs pdf.js $server/book/dreamid:null $cache/null

for ((i=start; i<=end; i++))
do
  phantomjs pdf.js $server/book/dreamid:$i $cache/$i
done
