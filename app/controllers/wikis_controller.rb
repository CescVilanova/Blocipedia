class WikisController < ApplicationController

  def new 
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new(params[:wiki])
    if @wiki.save
      flash[:notice] = "Wiki was created successfully."
      redirect_to @wiki
    else
      flash[:notice] = "Error creating wiki."
      render :new
    end
  end

  def show
    @wiki = Wiki.find(params[:id])
    @wiki
  end 

  def destroy
    @wiki = Wiki.find(params[:id])
    name = @wiki.name
    if @wiki.destroy
      flash[:notice] = "\"#{name}\" was deleted successfully."
      redirect_to new_path
    else 
      flash[:error] = "There was an error deleting the wiki."
      render :show
    end
  end 

end
