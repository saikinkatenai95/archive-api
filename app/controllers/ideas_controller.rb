class IdeasController < ApplicationController
  def index
    json_response(@categorie.ideas)
  end

  def show
    json_response()
  end


  private
  
  def idea_param
    params.permit(:body).meage(category_id)
end
