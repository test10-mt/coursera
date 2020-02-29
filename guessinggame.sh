countfiles()
{
    count=$(ls -l | grep "^[d-]" | wc -l)
    #echo "NUMBER OF FILE CHECK $count"
}

countfiles

echo "GUESS THE NUMBER OF FILES IN THE CORRECT DIRECTORIES"
read response
#echo "your response is $response"

while [[ $count != $response ]]
do
    #echo "--first check"
    #echo "count    $count"
    #echo "response $response"
    if [[ $count >  $response ]]
    then
        echo "Your guess is too low. Try again:"
        read response
    fi
    if [[ $count < $response ]]
    then
        echo "Your guess is too high. Try again:"
        read response
    fi
done

echo "Your answer is correct.Thank you"