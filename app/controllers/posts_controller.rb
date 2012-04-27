class PostsController < ApplicationController

  def create
     @project = Project.find(params[:post][:project_id])
     @collaborator = @project.collaborators.find_by_email(params[:post][:collaborator])
    

     if !@collaborator
     else
         @post = @project.posts.build(collaborator_id: @collaborator.id, content: params[:post][:content])
         if @post.save
            flash[:success] = "Post Created"
            respond_to do |format|
                format.html {redirect_to @project}
                format.js
            end
         end
     end      
  end
end
