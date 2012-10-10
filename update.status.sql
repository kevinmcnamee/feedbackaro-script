UPDATE issues SET status='open'
WHERE datetime(created_at, '+15 minutes') < CURRENT_TIMESTAMP;

UPDATE issues SET status='instructor needed'
WHERE datetime(created_at, '+45 minutes') < CURRENT_TIMESTAMP;

SELECT name, (strftime('%s', CURRENT_TIMESTAMP) - strftime('%s', issues.created_at))/60 AS minutes_open, content, status
FROM issues JOIN users
ON users.id = issues.user_id;
