DIR="$(cd "$(dirname "$0")" && pwd)"
cache=$DIR"/cache/pdf/"

curl -L https://www.dropbox.com/sh/fsj4kx06eveyik1/AABVk8J-sYeV6S2LnJpAj_KJa?dl=1  >  pdf.zip
rm -rf $cache
unzip pdf.zip -d $cache
rm pdf.zip