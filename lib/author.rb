class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_post(title)
    title.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post_by_title(name)
    post = Post.new(name)
    post.author = self
  end

  def self.post_count
    Post.all.count
  end
end
