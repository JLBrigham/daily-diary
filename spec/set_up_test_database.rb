require 'pg'

def setup_test_database
connection = PG.connect(dbname: 'daily_diary_test')
# Clear the diary_entries table
connection.exec("TRUNCATE diary_entries;")
end