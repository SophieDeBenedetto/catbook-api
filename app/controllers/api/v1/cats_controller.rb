module Api
  module V1
    class CatsController < ApplicationController

      def index
        render json: Cat.includes(:hobbies), include: ['hobbies']
      end

      def show
        render json: Cat.find(params[:id]), include: ['hobbies']
      end

      def create
        binding.pry
        cat = Cat.new(cat_params)
        hobbies.each do |hobby|
          hobby.cat = cat
        end
        if cat.save
          render json: {}, status: 200
        else
          render cat.errors, status: 404
        end
      end

      private

        def cat_params
          params.require(:data).permit(:attributes => [:name, :breed, :weight, :temperament])
        end

        def hobbies_params
          params.require(:data).permit(:hobbies => [:data => [:attributes => [:name]]])
        end

        def hobbies
          hobbies_params.collect do |hobby|
            Hobby.new(hobby[:data][:attributes])
          end
        end
    end
  end
end