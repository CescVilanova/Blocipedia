class WikisController < ApplicationController

  def index
    @wikis = Wiki.all
  end

  def new 
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new(params[:wiki])
    @wiki.user = current_user
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
      redirect_to wikis_path
    else 
      flash[:error] = "There was an error deleting the wiki."
      render :show
    end
  end

  def edit
    @wiki = Wiki.find(params[:id])
  end

  def update
    @wiki = Wiki.find(params[:id])
    if @wiki.update_attributes(params[:wiki])
      redirect_to @wiki
    else
      flash[:error] = "Error saving Wiki. Please try again."
      render :edit
    end
  end

end
