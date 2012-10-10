SELECT name, (strftime('%s', CURRENT_TIMESTAMP) - strftime('%s', issues.created_at))/60 AS minutes_open, content, status
FROM issues JOIN users
ON users.id = issues.user_id AND
issues.status = 'open';

