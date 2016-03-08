class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :apply]

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

  def join
    @teams = Team.all
    @membership = Membership.new
  end

  def apply
    user = current_user
    unless user.teams.include? @team
      user.teams << team
    end
  end

  private
    def find_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name)
    end
end
