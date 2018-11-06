class MoviesController < ApplicationController
  before_action :authenticate_user!
  def index
  	@movies = Movie.all
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  def edit
  end

  def new
  	@movie = Movie.new
  end

  def create
  	@movie = Movie.new(movies_params)
  	# binding.pry
  	if @movie.save
  	  redirect_to @movie
  	else
  	  render 'new'
  	end
  end

  def update
  end

  def destroy
  end

  private
   def movies_params
     params.require(:movie).permit!
   end
end
