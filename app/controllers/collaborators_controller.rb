class CollaboratorsController < ApplicationController

  def index
    @wiki = Wiki.find(params[:wiki_id])
    @collaborators = @wiki.collaborators
  end

  def create
    @collaborator = Collaborator.new(params[:collaborator])
    if @collaborator.save
      flash[:notice] = "Invitations was sent successfully."
      render :collaborators
    else 
      flash[:notice] = "There was an error sending the invitation."
      rende :collaborators
    end
  end

  def destroy
    
  end

end
