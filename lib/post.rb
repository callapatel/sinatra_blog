class Post

  #access posts, files within views/posts
  #title,filename, url, content

  #read my list of post files.
  #create an arary of post objects
  #with the attributes set
  #Post.all = [post, post]

  attr_accessor :title, :url

  def initialize(array)
    @title = array[-1].split(".")[0]
    @url = "/posts/#{title}"
  end

  def self.all
    Dir.glob("views/posts/*").collect do |filepath| #collect returns the result, each just returns original array.
      a = filepath.split("/")
      new(a)
    end


  end



end
