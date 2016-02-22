class TeamsController < ApplicationController
  before_action :find_team, only: [:show]

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to @team
      flash[:notice] = "Team created"
    else
      flash[:error] = "Team not created"
      render "new"
    end
  end

  def show
  end

  private
    def find_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name)
    end
end
