#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
     WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
     OPPONENT_TEAM_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT'")
     if [[ -z $WINNER_TEAM_ID ]]
     then
         INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
         if [[ $INSERT_WINNER_RESULT = "INSERT 0 1" ]]
         then
            echo Inserted into teams, $WINNER
         fi
     fi
     WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
     if [[ -z $OPPONENT_TEAM_ID ]]
     then
         INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
         if [[ $INSERT_OPPONENT_RESULT = "INSERT 0 1" ]]
         then
            echo Inserted into teams, $OPPONENT
         fi
     fi    
    OPPONENT_TEAM_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT'")
 
    INSERT_WINNER_ID_RESULT=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) values($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_TEAM_ID, $OPPONENT_TEAM_ID)")

      if [[ $INSERT_WINNER_ID_RESULT = "INSERT 0 1" ]]
      then
        echo Inserted into Games, $WINNER v. $OPPONENT
      fi

  fi
  

done