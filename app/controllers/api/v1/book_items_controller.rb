module Api
  module V1
    class BookItemsController < ApplicationController
      before_action :set_book_item, only: [:show, :update, :destroy]

      # GET /book_items
      def index
        @book_items = BookItem.all

        render json: @book_items
      end

      # GET /book_items/1
      def show
        render json: @book_item
      end

      # POST /book_items
      def create
        @book_item = BookItem.new(book_item_params)

        if @book_item.save
          render json: @book_item, status: :created, location: @book_item
        else
          render json: @book_item.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /book_items/1
      def update
        if @book_item.update(book_item_params)
          render json: @book_item
        else
          render json: @book_item.errors, status: :unprocessable_entity
        end
      end

      # DELETE /book_items/1
      def destroy
        @book_item.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_book_item
          @book_item = BookItem.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def book_item_params
          params.require(:book_item).permit(:book_id, :library_id, :borrowed_at, :should_be_back_at, :returned_at)
        end
    end
  end
end
