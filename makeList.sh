#/bin/bash

# 2043

echo "" >> list.txt;
for i in {1..2043}
do
 echo "curl '" >> list.txt
 echo "https://ebookcentral.proquest.com/lib/ufl/printPage.action?op=toPDF&ct=MLA&rds=range&docID=3417830&st=" >> list.txt
 echo $i >> list.txt
 echo "&ed=" >> list.txt
 echo $i >> list.txt
 echo "&dt=" >> list.txt
 date +%s >> list.txt
 echo "' > page-" >> list.txt
 echo $i >> list.txt
 echo ".pdf" >> list.txt
 echo "*^" >> list.txt
done;
tr -d '\n' < list.txt | tr '*' ';' | tr '^' '\n'
