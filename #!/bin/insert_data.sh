#!/bin/bash

# Insert teams
mysql -u your_username -p your_database_name < insert_teams.sql

# Insert matches
mysql -u your_username -p your_database_name < insert_matches.sql
