class Library < Sinatra::Base
  get '/' do
    erb :home
  end

end