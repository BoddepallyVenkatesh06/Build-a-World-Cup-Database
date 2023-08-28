-- Create the World Cup database
CREATE DATABASE WorldCup;

-- Switch to the newly created database
USE WorldCup;

-- Create the tables
CREATE TABLE Teams (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    group_letter CHAR(1)
);

CREATE TABLE Matches (
    id INT PRIMARY KEY,
    match_date DATE,
    home_team_id INT,
    away_team_id INT,
    home_team_score INT,
    away_team_score INT,
    winner_id INT,
    FOREIGN KEY (home_team_id) REFERENCES Teams(id),
    FOREIGN KEY (away_team_id) REFERENCES Teams(id),
    FOREIGN KEY (winner_id) REFERENCES Teams(id)
);
