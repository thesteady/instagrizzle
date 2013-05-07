require 'instagram'

class Photo
  attr_reader :id, :user

  # Instagram.configure do |config|
  #   config.client_id = 
  #   # config.client_secret = 
  #   config.access_token = 
  # end

  def initialize(username)
    @user = Instagram.user_search(username).first
  end

  def get_most_recent_image
    Instagram.user_recent_media(user.id).first.images.standard_resolution.url
  end

  def profile_picture
    @user.profile_picture
  end
end
