class CardsController < ApplicationController
  def index
    cards = Card.all
    render json: cards
  end

  def show
    card = Card.find_by(id: params[:id])
    render json: card
  end

  def create
    card = card.new(
      card: params["card"],
      idea_id: params["idea_id"],
    )
    if card.save
      render json: card
    else
      render json: { errors: card.error.full_messages }, status: 422
    end
  end

  def update
    card_id = params["id"]
    card = Card.find_by(id: card_id)

    card.card = params["card"] || card.card
    card.idea_id = params["idea_id"] || card.idea_id

    if card.save
      render json: card
    else
      render json: { errors: card.error.full_messages }, status: 422
    end
  end

  def destroy
    card_id = params["id"]
    card = card.find_by(id: card_id)

    card.destroy
    render json: { message: "This card has been destroyed" }
  end
end
