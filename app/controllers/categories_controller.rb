class CategoriesController < ApplicationController

  before_action :set_categorie, only: [:show, :update, :destroy]

  def index
    @categories = Categorie.all
    render json: @categories
  end

  def show
    render json: @categorie
  end

  def create
    @categorie = Categorie.new(categories_params)
    if @categorie.save
      render json: @categorie, status: :created, location: @user
    else
      render json: @categorie.errors, status: :unprocessable_entity
    end
  end

  def update
    if @categorie.update(categories_params)
      render json: @categorie
    else
      render json: @categorie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @categorie.destroy
  end


  private

  def set_categorie
    @Categorie = Categorie.find(params[:id])
  end

  def categories_params
    params.require(:categorie).permit(:name)
  end
    

end
