require "./config/environment"

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, "public"
    set :views, "app/views"
  end

  # GET: /boards
  get "/boards" do
    erb :"/index.html"
  end

  # GET: /boards/new
  get "/new" do
    erb :"/new.html"
  end

  post "/create" do
    puts params
    
    @letter_1 = params[:letter_1]
    @letter_2 = params[:letter_2]
    @letter_3 = params[:letter_3]
    @letter_4 = params[:letter_4]
    @letter_5 = params[:letter_5]
    @letter_6 = params[:letter_6]
    @letter_7 = params[:letter_7]

    redirect '/show'
  end



  # GET: /boards/5
  get "/:id" do
    erb :"/show.html"
  end

  # GET: /boards/5/edit
  get "/:id/edit" do
    erb :"/edit.html"
  end

  # PATCH: /boards/5
  patch "/:id" do
    redirect "/boards/:id"
  end

  # DELETE: /boards/5/delete
  delete "/:id/delete" do
    redirect "/boards"
  end
 
end
