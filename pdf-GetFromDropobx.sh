
DIR="$(cd "$(dirname "$0")" && pwd)"
cache=$DIR"/cache/pdf/"

<<<<<<< HEAD:update_content.sh
pwd

source $DIR"/dropbox.sh"
mkdir -p $cache

echo $dropbox

wget -O pdf.zip $dropbox
=======
source pdf-getFromDropobx_config.sh
>>>>>>> 85a625209d417fae15dedf1167348e54bd7d79a9:pdf-GetFromDropobx.sh

rm -rf $cache
unzip pdf.zip -d $cache
rm pdf.zip
