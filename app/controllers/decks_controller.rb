class DecksController < ApplicationController

  # Shows all decks
  def index
    @decks = Deck.all
  end


  # Shows new form for deck
  def new
    @deck = Deck.new
  end

  # Allows deck to be created
  def create
    deck = Deck.create deck_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      deck.image = req["public_id"]
      deck.save
    end
    redirect_to deck_path(deck)
  end

  # Edit form for deck id
  def edit
    @deck = Deck.find params[:id]
  end

  # Allows deck id to be updated
  def update
    deck = Deck.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      deck.image = req["public_id"]
    end
    deck.update deck_params
    redirect_to deck_path(deck)
  end

  # Shows deck index
  def show
    @deck = Deck.find params[:id]
  end


  # Destroys deck
  def destroy
    deck = Deck.find params[:id]
    deck.destroy
    redirect_to decks_path
  end

  private
  def deck_params
    params.require(:deck).permit(:name, :manufacturer, :size, :price, :image)
  end
end
