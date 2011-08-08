class SessionsController < Devise::SessionsController
  layout 'login'
  def after_sign_in_path_for(model)
    if current_user.is_admin?
      admin_path
    else
      root_path
    end
  end
end
