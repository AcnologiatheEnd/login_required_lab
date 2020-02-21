class SecretsController < ApplicationController
  before_action :require_logged_in
  
  def show
    @current_user = current_user
  end

  private

  def require_logged_in
    redirect_to root_path unless session.include? :name
  end
end
