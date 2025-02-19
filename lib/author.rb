class Author

  attr_accessor :name, :post
  attr_reader :posts

  @@total_post_count = 0
  
  
  def initialize(name)
    @name = name
    @posts = []
  end

  # def posts
  #   @posts
  # end

  def add_post(post)
    @posts << post
    post.author = self
    @@total_post_count += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
    @@total_post_count += 1
  end

  def self.post_count
    @@total_post_count
  end

end