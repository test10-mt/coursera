countfiles()
{
	count=$(ls -la | grep ^- | wc -l)
    #echo "NUMBER OF FILE CHECK $count"
}

countfiles

echo "GUESS THE NUMBER OF FILES IN THE CORRECT DIRECTORIES"
read response
echo "your response is $response"

while [[ $count != $response ]]
do
    if [[ $count -ge  $response ]]
    then
        echo "Your guess is LOW. Try again:"
        read response
    fi
    if [[ $count -lt $response ]]
    then
        echo "Your guess is HIGH. Try again:"
        read response
    fi
done

echo "Your answer is correct.Thank you"