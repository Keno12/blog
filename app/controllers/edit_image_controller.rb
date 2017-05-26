class EditImageController < ApplicationController
	include EditImage
  def index
  	@image_url=edit_image
    
  end
end
	