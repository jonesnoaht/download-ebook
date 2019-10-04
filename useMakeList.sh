#/bin/bash

./makeList.sh > list.txt;
echo "#/bin/bash" > download.sh;
cat list.txt >> download.sh;
chmod +x download.sh
