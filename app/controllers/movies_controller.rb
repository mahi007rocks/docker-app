class MoviesController < ApplicationController
  before_action :authenticate_user!
  def index
  	@movies = Movie.all
  end

  def show
  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
