describe ApplicationController do
  let(:blog1) { Blog.first }
  let(:blog2) { Blog.second }

  before do
    Blog.create(title: "My First Test", content: "Independent project illustrating my Front end and Back end coding skills", category: "Technology", author: "Chris")
    Blog.create(title: "My First Test", content: "Independent project illustrating my Front end and Back end coding skills", category: "Technology", author: "Pine")
  end

  describe 'GET /blogs' do
    it 'returns an array of JSON objects for all blogs in the database' do
      get '/blogs'

      expect(last_response.body).to include_json([
        { content: "Independent project illustrating my Front end and Back end coding skills", author: "Chris", createdOn: blog1.createdOn.as_json },
        { content: "Independent project illustrating my Front end and Back end coding skills", author: "Pine", createdOn: blog2.createdOn.as_json }
      ])
    end
  end

  describe 'POST /blogs' do
    let(:params) do
      { title: "My Post Test", content: "Independent project illustrating my Post /CRUD/ coding skills", category: "Technology", author: "Chrispine" }
    end

    it 'creates a new blog in the database' do
      expect { post "/blogs", params }.to change(Blog, :count).from(2).to(3)
    end

    it 'returns data for the newly created blog as JSON' do
      post "/blogs", params

      expect(last_response.body).to include_json(
        title: "My Post Test",
        content: "Independent project illustrating my Post /CRUD/ coding skills", 
        category: "Technology", 
        author: "Chrispine"
      )
    end
  end

  describe 'DELETE /blogs/:id' do
    it 'deletes the blogs from the database' do
      expect { delete "/blogs/#{blog2.id}" }.to change(Blog, :count).from(2).to(1)
    end
  end

end
