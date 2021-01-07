class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds.to_json(only: [:id, :name, :species])
  end

  def show
    bird = Bird.find_by(id: params[:id])
  if bird
    render json: { id: bird.id, name: bird.name, species: bird.species }
  elsif params[:id] == "69"
    render json: { message: 'nice.' }
  else
    render json: { message: 'Bird not found' }
  end
  end
end