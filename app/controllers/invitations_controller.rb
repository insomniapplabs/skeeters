class InvitationsController < Devise::InvitationsController
  def after_invite_path_for(resource)
    members_path
  end

  def after_accept_path_for(resource)
  	dashboard_path
  end

end