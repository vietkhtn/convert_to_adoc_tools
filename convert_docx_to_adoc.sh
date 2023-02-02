# require pandoc lib: https://pandoc.org/installing.html
# Create docx and adoc_docx folder first
# Add all *.docx files in docx folder
# Run this file

cd docx
docxFiles=`ls ./*.docx`
for file in $docxFiles
do
    fileName="$(basename -s .docx $file)" # get docx file name
    echo "Excute: pandoc --from=docx --to=asciidoc --wrap=none --extract-media=../adoc_docx/$fileName/media $fileName.docx > ../adoc_docx/$fileName.adoc ..."
    pandoc --from=docx --to=asciidoc --wrap=none --extract-media=../adoc_docx/$fileName $fileName.docx > ../adoc_docx/$fileName.adoc
    echo "\033[0;32mGENERATED SUCCESS !!!\033[0;0m"
done
