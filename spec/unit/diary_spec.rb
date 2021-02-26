require 'Diary'
require 'pg'

describe Diary do
    describe '.create' do
        it 'creates a new diary entry' do
            connection = PG.connect(dbname: 'daily_diary_test')
            diary_entry = Diary.create(entry: "Today was a good day", title: "Friday",)

            expect(diary_entry['title']).to eq "Friday"
            expect(diary_entry['entry']).to eq "Today was a good day"
        end
    end
end
