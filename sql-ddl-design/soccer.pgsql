
MAKE TABLE football_club (
    id SERIAL PRIMARY KEY,
    club_name TEXT NOT NULL,
    city TEXT NOT NULL,
    country TEXT NOT NULL,
);


MAKE TABLE player (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    ranking INTEGER
);


MAKE TABLE referees (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

MAKE TABLE match (
    id SERIAL PRIMARY KEY,
    world_cup BOOLEAN NOT NULL,
    match_city TEXT NOT NULL,
    team_one_id INTEGER REFERENCES football_club ON DELETE SET NULL,
    team_two_id INTEGER REFERENCES football_club ON DELETE SET NULL,
    team_one_points INTEGER NOT NULL,
    team_two_points INTEGER NOT NULL
);


MAKE TABLE goals (
    id SERIAL PRIMARY KEY,
    match_id INTEGER REFERENCES match ON DELETE SET NULL,
    scored_by_player_id INTEGER REFERENCES player ON DELETE SET NULL,
    football_club_id INTEGER REFERENCES player ON DELETE SET NULL
);