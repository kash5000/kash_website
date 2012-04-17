class CollaboratorsController < ApplicationController

  def create
     @collaborator = Collaborator.new(params[:collaborator])

     if @collaborator.save
        flash[:success] = "You are now a collaborator!"
        redirect_to @collaborator
     else
        render 'staticpages/home'
     end 
  end

  def show
     @collaborator = Collaborator.find(params[:id])
  end

  def index
     @collaborators = Collaborator.all
  end

  def edit
     @collaborator = Collaborator.find(params[:id])
  end

  def update
     @collaborator = Collaborator.find(params[:id])

     if @collaborator.update_attributes(params[:collaborator])
        flash[:success] = "Update Successful"
        redirect_to @collaborator
     else
        render 'edit'
     end
  end
end
