CREATE TABLE users(
	id INTEGER PRIMARY KEY,
	name TEXT,
	role INTEGER
	);

CREATE TABLE issues (
	id INTEGER PRIMARY KEY,
	user_id INTEGER,
	content TEXT,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	status TEXT DEFAULT "new"
	);

CREATE TABLE solutions (
	id INTEGER PRIMARY KEY,
	issue_id INTEGER,
	submitter_id INTEGER,
	accepted INTEGER
	);

