class PhotosController < ApplicationController

def index

  matching_photos = Photo.all
  @list_of_photos = matching_photos.order({ :created_at => :desc })

render ({ :template => "photo_templates/index.html.erb"})
end

def photo_details

   #Parameters: {"photo_id"=>"3"}

   the_photo_id = params.fetch("photo_id")
   matching_photoes = Photo.where({ :id => the_photo_id})
   @the_photo = matching_photoes.at(0)

  render ({ :template => "photo_templates/show.html.erb"})

end

def delete_photo

  the_id = params.fetch("photo_id")
  matching_photoes = Photo.where({ :id => the_id})
  @photo_to_delete = matching_photoes.at(0)
  @photo_to_delete.destroy

  #render ({ :template => "photo_templates/photo_bye.html.erb"})
  redirect_to ("/photos")


end

end