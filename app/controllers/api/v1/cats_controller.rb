module Api
  module V1
    class CatsController < ApplicationController

      def index
        render json: Cat.all
        # render json: Cat.includes(:hobbies), include: ['hobbies']
      end

      def show
        render json: Cat.find(params[:id])
        # render json: Cat.find(params[:id]), include: ['hobbies']
      end

      def create
        cat = Cat.new(cat_params)
        if cat.save
          render json: cat
        else
          render json: {status: 500, err: 'cat could not be saved.'}
        end
      end

      private

        def cat_params
          params.require(:cat).permit(:name, :breed, :temperament)
        end
    end
  end
end