DIR="$(cd "$(dirname "$0")" && pwd)"
cache=$DIR"/cache/pdf/"

pwd

source $DIR"/dropbox.sh"
mkdir -p $cache

echo $dropbox

wget -O pdf.zip $dropbox

rm -rf $cache
unzip pdf.zip -d $cache
rm pdf.zip
