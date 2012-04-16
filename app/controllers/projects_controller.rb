class ProjectsController < ApplicationController

  def new
     @project = Project.new
  end

  def create
     @project = Project.new(params[:project])

     if @project.save
        flash[:success] = "Project has been created"
        redirect_to @project
     else
        render 'new'
     end
  end

  def show
     @project = Project.find(params[:id])
  end

  def index
     @projects = Project.all
  end
end
