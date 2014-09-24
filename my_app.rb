require 'sinatra'

class MyApp < Sinatra::Base

  get "/" do
    erb :index #root of site is called index.
  end
   #this is the path in the URL. Like /aboout_me this / entails HP
  get "/about-me" do
    "I'm Calla"
  end

end
