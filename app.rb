require 'sinatra/base'
require './lib/diary'

class DailyDiary < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/add_diary_entry' do
    Diary.create(title: params[:title], entry: params[:entry])
    p params
    redirect '/'
  end

  get '/view_diary' do
    @diary_entry = session[:diary_entry]
    erb :view_diary
  end

    run! if app_file == $0
end