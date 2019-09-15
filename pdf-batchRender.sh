start=123
end=200

cache="cache/pdf/"
server="http://localhost:8000"
mkdir -p $cache

corpus="cairo"

phantomjs pdf-phantom.js $server/$corpus/ $cache/all
phantomjs pdf-phantom.js $server/$corpus/dreamid:null $cache/null
phantomjs pdf-phantom.js $server/$corpus/dreamid:8888 $cache/error

for ((i=start; i<=end; i++))
do
  phantomjs pdf-phantom.js $server/$corpus/dreamid:$i $cache/$i
done

bash pdf-deploy-local.sh
