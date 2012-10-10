SELECT COUNT(*), issues.status
FROM issues
GROUP BY issues.status;