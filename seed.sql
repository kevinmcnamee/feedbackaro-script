INSERT INTO users (name, role)
	VALUES ("Kevin", 0), ("Stephen", 0), ("Avi", 1);

INSERT INTO issues (user_id, content)
	VALUES (1, "need help with DATETIME formatting in sqlite3"),
		   (2, "help me with my merge master --rebase"),
		   (2, "I need help explaining how awesome Clearly extension to Evernote is");
