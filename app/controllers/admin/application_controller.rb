class Admin::ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_admin!

  def authenticate_admin!
    unless current_user && current_user.admin?
      flash[:error] = t('authentication.users.not_allowed')
      redirect_to :back
    end
  end

  def attributes
    resource_class.attribute_names - %w(id created_at updated_at)
  end
end
