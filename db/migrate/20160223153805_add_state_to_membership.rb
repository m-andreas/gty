class AddStateToMembership < ActiveRecord::Migration
  def change
    add_column :memberships, :state, :string
  end
end
