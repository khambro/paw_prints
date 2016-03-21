module ApplicationHelper

  def current_user
    current_user = @current_user
  end


  def gravatar_for(email)
    hashed_email = Digest::MD5.hexdigest(email.downcase)
    image_tag "http://www.gravatar.com/avatar/#{hashed_email}.jpg", alt: "Picture"
  end

end
