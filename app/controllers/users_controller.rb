class UsersController < ApplicationController

def index

  matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })

  render ({ :template => "user_templates/index.html.erb"})

end

def user_details

  #Parameters: {"user_id"=>"3"}

  the_username = params.fetch("user_name")
  matching_users = User.where({ :username => the_username})
  @the_user = matching_users.at(0)

  render ({ :template => "user_templates/show.html.erb"})

end

end