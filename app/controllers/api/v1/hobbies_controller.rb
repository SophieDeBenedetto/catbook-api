module Api
  module V1
    class HobbiesController < ApplicationController

      def index
        # all hobby objs loaded with their cats vs. 1 query per hobby
        # do both and take pic of terminal
        # render json: Hobby.all, include: ['cats']
        render json: Hobby.includes(:cats), include: ['cats']
      end

      def show
      end
    end
  end
end