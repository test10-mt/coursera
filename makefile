echo "GUESSS THE NUMBER OF DIRECTOIRES" >> README.md
echo "CURRENT DATE AND TIME IS" >> README.md
date >> README.md
echo "Number of files contained in guessinggame.sh is \n"  >> README.md
grep -c '' guessinggame.sh >> README.md
