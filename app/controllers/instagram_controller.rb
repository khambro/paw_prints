class InstagramController < ApplicationController

  def show
    # @images = HTTParty.get("https://api.instagram.com/oauth/authorize/?client_id=5835c03dad274c568550a382ec953dbb&redirect_uri=http://localhost&response_type=code")
    @popular = Instagram.media_popular
  end


end

#
# https://api.instagram.com/oauth/authorize/?client_id=5835c03dad274c568550a382ec953dbb&redirect_uri=http://localhost&response_type=token

#
# access_token=267884376.5835c03.17b3383b17314da0bbebd83520770f23

# 
# p = HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=5835c03dad274c568550a382ec953dbb")
#
# 267884376.5835c03.17b3383b17314da0bbebd83520770f23
#
# https://api.instagram.com/oauth/authorize/?client_id=5835c03dad274c568550a382ec953dbb&redirect_uri=http://localhost&response_type=code
#
# https://localhost?code=1fd84223b0b647b68b3b16792c70005e
#
# http://localhost/?code=0c5ffa097f874d4eadcb887f0cf30152
#
# p = HTTParty.get("http://localhost/?code=0c5ffa097f874d4eadcb887f0cf30152")
