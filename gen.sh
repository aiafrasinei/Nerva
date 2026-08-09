pandoc -f markdown README.md > README.html

pandoc README.html -t latex -o README.pdf

pandoc -f markdown README_PRINTING.md > README_PRINTING.html

pandoc README_PRINTING.html -t latex -o README_PRINTING.pdf