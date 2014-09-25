require 'sinatra'

class MyApp < Sinatra::Base

  get "/" do
    erb :index #root of site is called index.
  end
   #this is the path in the URL. Like /aboout_me this / entails HP
  get "/about-me" do
    erb :about_me
  end

  get "/tweettweet" do
    erb :twitterfeed
  end
  
  get "/photos" do
    erb :instagramgrid
  end

  get "/posts/:post_name" do
    erb ("/posts/"+params[:post_name]).to_sym
  end


  # get "/posts/:post_name" do
  #   params[:username]
  #   #@user = User.find_by_username(params[:post_name])
  # end

end
