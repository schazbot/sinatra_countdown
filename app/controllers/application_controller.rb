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

    @board = Board.create(
      letter_1: get_letter(params[:letter_1]), 
      letter_2: get_letter(params[:letter_2]),
      letter_3: get_letter(params[:letter_3]),
      letter_4: get_letter(params[:letter_4]),
      letter_5: get_letter(params[:letter_5]),
      letter_6: get_letter(params[:letter_6]),
      letter_7: get_letter(params[:letter_7]))

    redirect "/show/#{@board.id}"
  end

  # GET: /boards/5
  get "/show/:id" do
    @board = Board.find(params[:id])

    erb :"/show.html"
  end



  # DELETE: /boards/5/delete
  delete "/:id/delete" do
    redirect "/boards"
  end

  private

  def get_letter(type)
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "w", "y", "z"]
    vowels = ["a", "e", "i", "o", "u"]
    if type == "consonant"
      return consonants.sample
    else 
      return vowels.sample
    end
  end

end
