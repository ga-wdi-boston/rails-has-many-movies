class MoviesController < ApplicationController

  # GET /movies
  def index
    # all the movies
    @movies = Movie.all
    render json: @movies
  end

  # GET /movies/:id
  def show
    # find one Movie by id
    @movie = Movie.find(params[:id])
    render json: @movie
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie, status: :created, location: movies_url
    else
      render json: @movie.errors, status: :unprocessable_entity
     end
  end

  # PATCH /movies/:id
  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      head :no_content
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/:id
  def destroy
    @movie = Movie.find(params[:id])
    @movie.delete

    head :no_content
  end

  private
   def movie_params
    params.require(:movie)
      .permit(:name, :rating, :desc, :length)
  end
end
