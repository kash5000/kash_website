class PostsController < ApplicationController

  def create
     @project = Project.find(params[:post][:project_id])
     @collaborator = Collaborator.find_by_name(params[:post][:collaborator])
    

     if !@collaborator
         redirect_to @project
     else
         @post = @project.posts.build(collaborator_id: @collaborator.id, content: params[:post][:content])
         if @post.save
            flash[:success] = "Post Created"
         end
         redirect_to @project
     end      
  end
end
