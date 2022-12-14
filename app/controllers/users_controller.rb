# frozen_string_literal: true

# Controller for user model
class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find_by_id(params[:id])
  end
end
