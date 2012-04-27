class LinksController < ApplicationController
  def create
     @project = Project.find(params[:link][:project_id])
     @collaborator = Collaborator.find_by_email(params[:link][:collaborator])
    

     if !@collaborator
     else
        @project.add_collaborator!(@collaborator)
        flash[:success] = "Collaborator Added"
        respond_to do |format|
             format.html {redirect_to @project}
             format.js
         end
     end      
  end

  def destroy
     @project = Link.find(params[:id]).project
     @collaborator = Link.find(params[:id]).collaborator

     @project.remove_collaborator!(@collaborator)
     flash[:success] = "Collaborator Removed"
        respond_to do |format|
             format.html {redirect_to @project}
             format.js
         end
     
  end
end
