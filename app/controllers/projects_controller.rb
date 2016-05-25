class ProjectsController < ApplicationController
  before_filter :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
    @project  = Project.new
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "Project saved successfully."
      redirect_to @project
    else
      flash[:error] = "ERROR: Project did NOT save."
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @project.update(project_params)
      flash[:success] = "#{@project.name} updated successfully."
      redirect_to @project
    else
      flash[:error] = "ERROR: #{@project.name} did NOT update."
      render :edit
    end
  end

  def destroy
    if @project.delete
      flash[:success] = "#{@project.name} deleted successfully."
      redirect_to projects_path
    else
      flash[:error] = "ERROR: #{@project.name} did NOT delete."
      redirect_to root_path
    end
  end

  private
    def project_params
      params.require(:project).permit(
        :name,
        :description,
        :purpose,
        :technology,
        :url,
        :avatar
      )
    end

    def find_project
      @project = Project.find(params[:id])
    end
end
