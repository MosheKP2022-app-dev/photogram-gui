class PhotosController < ApplicationController

def index

  matching_photos = Photo.all
  @list_of_photos = matching_photos.order({ :created_at => :desc })

render ({ :template => "photo_templates/index.html.erb"})
end

def photo_details
  render ({ :template => "photo_templates/show.html.erb"})
end

end