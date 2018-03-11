start=1
end=50

cache="cache/pdf/"
mkdir -p $cache

phantomjs pdf.js http://localhost:8000/book/ $cache/all

for ((i=start; i<=end; i++))
do
  phantomjs pdf.js http://localhost:8000/book/dreamid:$i $cache/$i
done
