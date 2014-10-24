require 'rack'

module HelloRack
  class Application
    def call(env)
      Rack::Response.new.finish do |response|
        response['Content-Type'] = 'text/plain'
        response.status = 200
        response.write "Hello, #{RUBY_DESCRIPTION}!"
      end
    end
  end
end

run HelloRack::Application.new
