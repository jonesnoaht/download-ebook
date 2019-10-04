# Info

The purpose is to download textbooks from eBooks Central, which you would have access to via your UF credentials.

https://ebookcentral.proquest.com/

## Development Notes

Downloading page 1 to 1
https://ebookcentral.proquest.com/lib/ufl/printPage.action?op=toPDF&ct=MLA&rds=range&docID=3417830&st=21&ed=21&dt=1570215413066

Downloading page 2 to 3
https://ebookcentral.proquest.com/lib/ufl/printPage.action?op=toPDF&ct=MLA&rds=range&docID=3417830&st=22&ed=23&dt=1570215479599

Downloading page 1 to 1 (again)
https://ebookcentral.proquest.com/lib/ufl/printPage.action?op=toPDF&ct=MLA&rds=range&docID=3417830&st=21&ed=21&dt=1570215540952
https://ebookcentral.proquest.com/lib/ufl/printPage.action?op=toPDF&ct=MLA&rds=range&docID=3417830&st=21&ed=21&dt=1570215779840

clicked button

date +%s 
>1570218730

clicked download
https://ebookcentral.proquest.com/lib/ufl/printPage.action?op=toPDF&ct=MLA&rds=range&docID=3417830&st=21&ed=21&dt=1570218745957

The last number is just the Epoch & Unix Timestamp (https://www.epochconverter.com)
date +%s

for i in {1..2043}
do
 echo "https://ebookcentral.proquest.com/lib/ufl/printPage.action?op=toPDF&ct=MLA&rds=range&docID=3417830&st=" >> lines.txt
 echo $i >> lines.txt
 echo "&ed=" >> lines.txt
 echo $i >> lines.txt
 echo "&dt=" >> lines.txt
 date +%s >> lines.txt
 echo "*" >> lines.txt
done# download-ebook
