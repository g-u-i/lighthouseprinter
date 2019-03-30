DIR="$(cd "$(dirname "$0")" && pwd)"
cache=$DIR"/cache/pdf/"
printer="CUSTOM_Engineering_VKP80III"
interval=3

while [[ true ]]; do

  for (( i=$interval; i>0; i--)); do
    sleep 1 &
    printf "next print in $i s \r"
    wait    
    printf "                   \r"
  done

  code=$[ ( $RANDOM % 250 )  + 1 ]


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
