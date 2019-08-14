class BoardsController < ApplicationController

  # GET: /boards
  get "/boards" do
    erb :"/boards/index.html"
  end

  # GET: /boards/new
  get "/boards/new" do
    erb :"/boards/new.html"
  end

  # POST: /boards
  post "/boards" do
    redirect "/boards"
  end

  # GET: /boards/5
  get "/boards/:id" do
    erb :"/boards/show.html"
  end

  # GET: /boards/5/edit
  get "/boards/:id/edit" do
    erb :"/boards/edit.html"
  end

  # PATCH: /boards/5
  patch "/boards/:id" do
    redirect "/boards/:id"
  end

  # DELETE: /boards/5/delete
  delete "/boards/:id/delete" do
    redirect "/boards"
  end
end
