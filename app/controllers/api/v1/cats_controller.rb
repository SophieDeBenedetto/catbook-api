module Api
  module V1
    class CatsController < ApplicationController

      def index
        render json: Cat.includes(:cat_hobbies, :hobbies), include: ['cat-hobbies']
      end

      def show
      end
    end
  end
end