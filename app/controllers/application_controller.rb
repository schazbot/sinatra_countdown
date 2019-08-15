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
      letter_7: get_letter(params[:letter_7]),
      letter_8: get_letter(params[:letter_8]),
      letter_9: get_letter(params[:letter_9]),
    )

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
    consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
    vowels = ["A", "E", "I", "O", "U"]
    if type == "consonant"
      return consonants.sample
    else
      return vowels.sample
    end
  end
end
