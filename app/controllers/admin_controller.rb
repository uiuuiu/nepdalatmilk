class AdminController < ApplicationController
  layout "layouts/admin_application"
  before_action :set_limit

  private

  def set_limit
    @limit = params[:limit].present? ? params[:limit] : 25
  end
end