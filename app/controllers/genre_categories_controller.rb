class GenreCategoriesController < ApplicationController
  before_action :set_genre_category, only: [:show, :update, :destroy]

  # GET /genre_categories
  def index
    @genre_categories = GenreCategory.all

    render json: @genre_categories
  end

  # GET /genre_categories/1
  def show
    render json: @genre_category
  end

  # POST /genre_categories
  def create
    @genre_category = GenreCategory.new(genre_category_params)

    if @genre_category.save
      render json: @genre_category, status: :created, location: @genre_category
    else
      render json: @genre_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /genre_categories/1
  def update
    if @genre_category.update(genre_category_params)
      render json: @genre_category
    else
      render json: @genre_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /genre_categories/1
  def destroy
    @genre_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre_category
      @genre_category = GenreCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def genre_category_params
      params.require(:genre_category).permit(:name)
    end
end
