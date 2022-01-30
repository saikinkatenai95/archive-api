class CategoriesController < ApplicationController

  before_action :set_categorie, only: [:show, :update, :destroy]

  def index
    @categories = Categorie.all
    json_response(@categories)
  end

  def show
    json_response(@categorie)
  end

  def create
    @categorie = Categorie.create!(categorie_params)
    json_response(@categorie, :created)
  end

  def update
    @categorie.update(categorie_params)
    head :no_content
  end

  def destroy
    @categorie.destroy
    head :no_content
  end


  private

  def set_categorie
    @categorie = Categorie.find(params[:id])
  end

  def categorie_params
    params.permit(:name)
  end
    

end
