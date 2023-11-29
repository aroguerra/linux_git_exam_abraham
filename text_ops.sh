grep -o -w function README.md | wc -w >> output/function-keyword-count.txt 
grep -oE '# \w*' README.md >> output/unique-headers.txt
grep -oE '\d+' README.md | sort >> output/sorted_numbers.txt
grep -wns FEATURES README.md -A 6 | tr '\n' ' ' >> output/features-summary.txt
grep -i "calculator" README.md | sort >> output/calculator-lines.txt
cat output/function-keyword-count.txt output/unique-headers.txt output/sorted_numbers.txt output/features-summary.txt output/calculator-lines.txt

