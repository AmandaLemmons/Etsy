class PostsController < ApplicationController
  def new
    Dotenv.load

    url = "https://openapi.etsy.com/v2/listings/active?api_key=#{ENV.fetch("ETSY_API_KEY")}&includes=MainImage"

    json = JSON.parse Http.get(url)
    data = json.to_hash

    @posts = data["results"].first(10)


    # Show title, Price, Image, and link to the Etsy page


    # titles = data["results"].map{|r| r["title"] }
    #
    # # url = data["results"].sample["url"]
    # # `open #{url}`
    #
    #
    # # puts "Found #{data["results"].count}"
    # puts data["results"].sample["MainImage"]["url_fullxfull"]










  end
end
