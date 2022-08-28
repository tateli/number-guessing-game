#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

echo "Enter your username:"
read USERNAME

CHECK_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(attempts) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")


if [[ -z $CHECK_USER ]]
  then
    INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RAND=$((1 + $RANDOM % 1000))
GUESS=1
echo "Guess the secret number between 1 and 1000:"

while read INPUT
  do
    if [[ ! $INPUT =~ ^[0-9]+$ ]]
      then
        echo "That is not an integer, guess again:"
      else
        if [[ $INPUT -eq $RAND ]]
          then
            break;
          else
            if [[ $INPUT -gt $RAND ]]
              then
                echo "It's lower than that, guess again:"
              else
                echo "It's higher than that, guess again:"
            fi
        fi
    fi
    GUESS=$(( $GUESS + 1 ))
  done
  
echo "You guessed it in $GUESS tries. The secret number was $RAND. Nice job!"

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(attempts, user_id) VALUES($GUESS, $USER_ID)")

