module Api
  module V1
    class CatsController < ApplicationController

      def index
        render json: Cat.includes(:hobbies), include: ['hobbies']
      end

      def show
        render json: Cat.find(params[:id]), include: ['hobbies']
      end
    end
  end
end