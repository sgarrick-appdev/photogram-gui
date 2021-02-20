class PhotosController < ApplicationController

def index

matching_photos = Photo.all
@list_of_photos = matching_photos.order({:created_at => :desc})

render({:template => "photos_templates/index.html.erb"})
end

def show
url_id = params.fetch("photo_id")
matching_photos = Photo.where({:id => url_id})

@the_photo = matching_photos.first

render({:template => "photos_templates/show.html.erb"})
end

def delete
  the_id = params.fetch("toast_id")
  matching_photos = Photo.where({ :id => the_id})
  the_photo = matching_photos.first
  the_photo.destroy
  redirect_to("/photos")
end

end