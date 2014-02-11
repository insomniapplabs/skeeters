class AddInvitationsCountToMembers < ActiveRecord::Migration
  def change
    add_column :members, :invitations_count, :integer
  end
end
