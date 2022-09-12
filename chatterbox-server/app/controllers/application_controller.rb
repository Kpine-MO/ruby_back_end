class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/blogs' do
    blogs = Blog.all.order(:createdOn)
    blogs.to_json
  end

  get '/blogs/:id' do
    blogs = Blog.find(params[:id])

    blogs.to_json(include: :comments)
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/logins' do
    users = Login.all
    users.to_json
  end

  post '/blogs' do
    blog = Blog.create(
      title: params[:title],
      content: params[:content],
      author: params[:author],
      createdOn: params[:createdOn],
      category: params[:category]
    )
    blog.to_json
  end

  post '/users' do
    user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password]
    )
    user.to_json
  end

  post '/login' do
    user = Login.create(
      email: params[:email],
      password: params[:password]
    )
    user.to_json
  end

  delete '/blogs/:id' do
    blog = Blog.find(params[:id])
    blog.destroy
    blog.to_json
  end
  
end
