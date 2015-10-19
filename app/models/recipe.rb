ENV["FOOD2FORK_KEY"] = "7cba46c16a69ad6ce8a2126e55a52391"

class Recipe
  include HTTParty

  base_uri "http://food2fork.com/api"
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
