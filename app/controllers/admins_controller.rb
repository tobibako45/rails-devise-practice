class AdminsController < ApplicationController
  before_action :authenticate_admin!
  def show
    @admin = Admin.find(params[:id])
  end

  def index
    @admins = Admin.all
    @users = User.all
  end
end
