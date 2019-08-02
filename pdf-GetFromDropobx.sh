
DIR="$(cd "$(dirname "$0")" && pwd)"
cache=$DIR"/cache/pdf/"

source pdf-getFromDropobx_config.sh

curl -L $dropbox  >  pdf.zip
rm -rf $cache
unzip pdf.zip -d $cache
rm pdf.zip
