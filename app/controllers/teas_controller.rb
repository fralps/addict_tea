class TeasController < ApplicationController
  before_action :authenticate_user!

  def index
    @teas = Tea.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
