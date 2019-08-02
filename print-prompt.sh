DIR="$(cd "$(dirname "$0")" && pwd)"
cache=$DIR"/cache/pdf/"
printer="CUSTOM_Engineering_VKP80III"

while [[ true ]]; do
  echo "please scan a barcode!"
  read code

  if [ $code = "9999" ]
  then
    bash update_content.sh
  fi

  if [ -f "$cache$code.pdf" ]
  then
  	echo "printing "$code
  else
  	echo "error"
    code="null"
  fi

  lpr -P $printer -#3 -o media=ZX80MMYRoll $cache$code.pdf

done
