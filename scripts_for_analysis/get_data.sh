grep "year={" ../resources/bibtex/* | sed -E "s/.*year=\{([0-9]+)\}.*/\1/g" | sort -n > citation_per_year.txt
uniq -c citation_per_year.txt > citation_per_year_agg.txt