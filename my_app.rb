require 'sinatra'
require './lib/post'

class MyApp < Sinatra::Base

  before do
    #you can put assignments here to apply to all pages
  end

  get "/" do
    @posts = Post.all
    erb :index #root of site is called index.
  end
   #this is the path in the URL. Like /aboout_me this / entails HP
  get "/about-me" do
    erb :about_me
  end

  # post "/" do
  #   puts params.inspect #add input into database
  #   redirect to ("/")
  # end

  get "/tweettweet" do
    erb :twitterfeed
  end

  get "/photos" do
    erb :instagramgrid
  end

  get "/posts/:post_name" do
    erb ("/posts/"+params[:post_name]).to_sym
  end

end
