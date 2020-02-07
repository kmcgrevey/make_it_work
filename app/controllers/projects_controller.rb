class ProjectsController < ApplicationController

  def create
    challenge = Challenge.find(params[:id])
    project = challenge.projects.create!(project_params)
    # redirect_to "/projects/#{project.id}"
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.permit(:name, :material, :challenge_id)
  end
end
