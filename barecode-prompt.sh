
DIR="$(cd "$(dirname "$0")" && pwd)"
cache=$DIR"/cache/pdf/"

while [[ true ]]; do
  echo "please scan a barcode!"
  read code
  echo "printing "$code

  lpr -P CUSTOM_Engineering_VKP80III -o media=X80MMYRoll $cache$code.pdf

done
