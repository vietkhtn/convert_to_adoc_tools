# require reverse_adoc lib: https://github.com/metanorma/reverse_adoc
# Create html and adoc_html folder first
# Add all *.html files in html folder
# Run this file
cd html
htmlFiles=`ls ./*.html`
for file in $htmlFiles
do
    fileName="$(basename -s .html $file)" # get html file name
    echo "Excute: reverse_adoc $fileName.html -o ../adoc_html/$fileName.adoc ..."
    reverse_adoc $fileName.html -o ../adoc_html/$fileName.adoc # convert to adoc file
    echo "\033[0;32mGENERATED SUCCESS !!!\033[0;0m"
done