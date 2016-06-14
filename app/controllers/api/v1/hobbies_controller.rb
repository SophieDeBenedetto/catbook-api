module Api
  module V1
    class HobbiesController < ApplicationController

      def index
        render json: Hobby.all, include: ['cats']
      end

      def show
      end
    end
  end
end