module Admin::UsersHelper
  def attributes
    %w(email sign_in_count last_sign_in_at created_at admin)
  end
end
