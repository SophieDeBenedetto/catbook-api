module Api
  module V1
    class CatsController < ApplicationController

      def index
        render json: Cat.all, include: ['hobbies']
        # render json: Cat.includes(:cat_hobbies, :hobbies), include: ['hobbies']
      end

      def show
        render json: Cat.find(params[:id]), include: ['hobbies']
      end
    end
  end
end