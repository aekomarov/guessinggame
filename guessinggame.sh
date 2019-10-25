filenum=$(ls -l | wc -l)

function getguessnum {
  echo 'Please guess how many files are in the current directory:'
  read guessnum
}

function compare {
if [[ $1 -gt $2 ]]
 then
   echo 'Your guess is too high!'
 else
   echo 'Your guess is too low!'
 fi
}

getguessnum
while [[ $guessnum -ne $filenum ]]
do
compare $guessnum $filenum
getguessnum
done

echo 'Congratulations!'
