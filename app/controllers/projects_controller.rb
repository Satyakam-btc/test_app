class ProjectsController < ApplicationController


  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to project_path
  end

  def index
    @project = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

private
def project_params
      params.require(:project).permit(:name, :code, :description, :billtype, :startdate, :deadline, :enddate, :giturl, :status, :confirmation)
    end
end
