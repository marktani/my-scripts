# source: comment from /thorsten on page http://www.hermann-uwe.de/blog/counting-pages-in-multiple-pdfs-from-the-command-line-using-pdfinfo-or-pdftk
for i in *pdf; do echo -n "$i: ";pdfinfo "$i" |awk '/^Pages/ { print $2}' ; done | awk '{s+=$2 ; print} END{print "Σ " s}'
