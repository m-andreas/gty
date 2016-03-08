class MembershipsController < ApplicationController

  def create user = current_user
    team = Team.find_by_name( membership_params[:team] )
    Membership.create(:team => team, :user => user)
    flash[:notice] = "Request sent"
    redirect_to show_memberships_path
  end

  def show
    @memberships = current_user.memberships
  end

  private
    def membership_params
      params.require(:membership).permit(:team)
    end
end
