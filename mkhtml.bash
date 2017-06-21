cp $1 $1.html
perl -i -p -e  's{/(.*?)/}[<strong>$1</strong>]g; s[\n]{<br>\n}' $1.html
