module Api
  module V1
    class CatsController < ApplicationController

      def index
        render json: Cat.all
      end

      def show
        render json: Cat.find(params[:id])
      end

      def create
        cat = Cat.new(cat_params)
        if cat.save
          render json: cat
        else
          render json: {status: 500, err: 'cat could not be saved.'}
        end
      end

      def update
        cat = Cat.find(params[:id])
        cat.update(cat_params)
        render json: cat
      end

      def destroy
        cat = Cat.find(params[:id])
        cat.destroy
        render json: {message: "successfully deleted!"}, status: 200
      end

      private

        def cat_params
          params.require(:cat).permit(:name, :breed, :temperament, :weight, :hobby_ids => [])
        end
    end
  end
end