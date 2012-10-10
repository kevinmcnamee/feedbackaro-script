require 'rubygems'
require 'sqlite3'

db = SQLite3::Database.open 'feedback.db'

puts "what issue status would you like to query?"
issue_type = gets.chomp

query = db.execute("SELECT name, (strftime('%s', CURRENT_TIMESTAMP) - strftime('%s', issues.created_at))/60 AS minutes_open, content, status
FROM issues JOIN users
ON users.id = issues.user_id AND
issues.status = '#{issue_type}';")

db.results_as_hash = true

query.each { |row| puts row.join(' | ')}

