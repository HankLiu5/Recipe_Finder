ENV["FOOD2FORK_KEY"] = "7cba46c16a69ad6ce8a2126e55a52391"
ENV['FOOD2FORK_SERVER_AND_PORT'] = 'food2fork.com:80'
class Recipe
  include HTTParty

  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'

  base_uri "http://#{hostport}/api"
  default_params key: key_value
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
