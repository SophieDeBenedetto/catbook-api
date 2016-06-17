# module Rack
#   class Redirect
#     def initialize(app)
#       @app = app
#     end
#     def redirect(location)
#       [301, {'Location' => location, 'Content-Type' => 'text/html'}, ['Moved Permanently']]
#     end
#     def call(env)
#       redirects = { '/obsolete-page' => '/new-page' }
#       req = Rack::Request.new(env)
#       return redirect(redirects[req.path]) if redirects.include?(req.path)
#       @app.call(env)
#     end
#   end
# end

  class JsonApiParamsHandler
    def initialize(app)
      @app = app
    end

    def call(env)
      # binding.pry
      # # @app.call(env)

      # params = JSON.parse(env["rack.input"].gets)
      # binding.pry
      # # params[:relationships] = {hobbies: params[:hobbies]}
      # new_params = {params["data"]["type"].singularize => params["data"]["attributes"]}
      # binding.pry
      # params["data"].keys[1..-2].each_with_index do |key|
      #   binding.pry

      #   params["data"]["#{key}"].each do |data, attributes|
      #     binding.pry
      #     if new_params["key}_attributes"]
      #       new_params["key}_attributes"] << attributes["attributes"]
      #     else
      #       new_params["key}_attributes"] = [attributes["attributes"]]
      #     end
      #   end
      # end
      # binding.pry
      @app.call(env)
    end

    def structure_params
      binding.pry
    end
  end

