require 'pg'

class Diary 

    def self.create(entry:, title:)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'daily_diary_test')
          else
            connection = PG.connect(dbname: 'daily_diary')
          end
     
      connection.exec("INSERT INTO diary_entries (entry, title) VALUES('#{entry}', '#{title}')")
    end
end