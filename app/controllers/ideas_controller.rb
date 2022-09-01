class IdeasController < ApplicationController
  #before_action :authenticate_user, except: [:index, :show]

  def index
    ideas = Idea.all
    render json: ideas
  end

  def show
    idea = Idea.find_by(id: params[:id])
    render json: idea
  end

  def create
    idea = idea.new(
      idea: params["idea"],
    )
    if idea.save
      render json: idea
    else
      render json: { errors: idea.error.full_messages }, status: 422
    end
  end

  def update
    idea_id = params["id"]
    idea = Idea.find_by(id: idea_id)

    idea.idea = params["idea"] || idea.idea

    if idea.save
      render json: idea
    else
      render json: { errors: idea.error.full_messages }, status: 422
    end
  end

  def destroy
    idea_id = params["id"]
    idea = Idea.find_by(id: idea_id)

    idea.destroy
    render json: { message: "This idea has been destroyed" }
  end
end
