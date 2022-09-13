describe Blog do
    let(:blog) { Blog.first }
  
    before do
      Blog.create(title: "My Post Test", content: "Independent project illustrating my Post /CRUD/ coding skills", category: "Technology", author: "Chrispine")
    end
    
    it "has the correct columns in the blogs table" do
      expect(blog).to have_attributes(
        title: "My Post Test",
        content: "Independent project illustrating my Post /CRUD/ coding skills",
        category: "Technology",
        author: "Chrispine"
      )
    end
    
  end

  describe User do
    let(:user) { User.first }
  
    before do
      User.create(first_name: "Chris", last_name: "Pine", user_name: "Kpine", email: "Kpine@gmail", password: "1234")
    end
    
    it "has the correct columns in the users table" do
      expect(user).to have_attributes(
        first_name: "Chris", 
        last_name: "Pine", 
        user_name: "Kpine", 
        email: "Kpine@gmail", 
        password: "1234"
      )
    end
    
  end

  describe Category do
    let(:category) { Category.first }
  
    before do
      Category.create(name: "Food", blogs: "My blog")
    end
    
    it "has the correct columns in the categories table" do
      expect(category).to have_attributes(
        name: "Food", 
        blogs: "My blog"
      )
    end
    
  end

  describe Comment do
    let(:comment) { Comment.first }
  
    before do
      Comment.create(user_id: 3, blog_id: 1, body: "First comment")
    end
    
    it "has the correct columns in the comments table" do
      expect(comment).to have_attributes(
        user_id: 3, 
        blog_id: 1, 
        body: "First comment"
      )
    end
    
  end