# has many posts

class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      post.author = self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    #Post because it's not taking in a parameter
    self.add_post(new_post)
  end

  def self.post_count
    Post.all.count
  end

end