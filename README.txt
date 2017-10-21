Steps through this project:
1. Download the book for children 6-9, 10-13, 14-17 (older children) from www.freekidsbooks.org
2. Download some pdfs from Wikipedia as for adults.
3. Put 80% of book as training data and 20% of them as test data to predict their label
4. Run the code for pdfMiner in order to extract text from all training book.
5. Combine all training books for each group together so we have four large texts as training data, one
for each group ( we have four groups of different age).
6. Clean data in these four texts by removing punctuations, splitting into words and sentences,
normalizing to lowercase and removing non-alphabets.
7. Install Cygwin64
8. Download SRILM
9. In Cygwin Windows Batch File, run “make” using the makefile
10. Running Cygwin Windows Batch File
11. Go to srilm/bin/cygwin64
12. Train all four models each of them with its own training data using this command: ngram-count
-interpolate -order 5 -text train-text.txt -lm your.lm
13. Run the script which runs the test command on test data for each group and saves the results in
several corresponding files.
14. Don’t forget to change the name of language models inside the script
15. Analyze the result by comparing the perplexities. The one with lowest perplexity among all language
model, is the predicted label for that book.