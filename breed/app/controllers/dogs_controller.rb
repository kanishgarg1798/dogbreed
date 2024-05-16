class DogsController < ApplicationController
  def index
    if request.post?
      breed = params[:breed]
      @dog_image = fetch_dog_image(breed)
      respond_to do |format|
        format.js
      end
    else
      @dog_image = nil
    end
  end

  private

  def fetch_dog_image(breed)
    response = Faraday.get("https://dog.ceo/api/breed/#{breed}/images/random")
    JSON.parse(response.body)["message"]
  end
end
