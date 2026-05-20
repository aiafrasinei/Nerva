pandoc -f markdown README.md > README.html

pandoc README.html -t latex -o README.pdf
