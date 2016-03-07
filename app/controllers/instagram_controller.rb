class InstagramController < ApplicationController

  def show

    @popular = Instagram.media_popular
  end


end
