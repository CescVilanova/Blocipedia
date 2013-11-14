class CollaboratorsController < ApplicationController

  def index
    @wiki = Wiki.find(params[:wiki_id])
    @users = User.all
  end

  def create
    @wiki = Wiki.find(params[:wiki_id])
    @wiki.user_ids = params[:user_ids]
    redirect_to wiki_path(@wiki)
  end

  def destroy
    
  end

end
