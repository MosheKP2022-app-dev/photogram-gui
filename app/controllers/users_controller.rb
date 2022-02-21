class UsersController < ApplicationController

def index

  matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })

  render ({ :template => "user_templates/index.html.erb"})

end

def user_details

  #Parameters: {"user_name"=>"3"}

  the_username = params.fetch("user_name")
  matching_users = User.where({ :username => the_username})
  @the_user = matching_users.at(0)

  render ({ :template => "user_templates/show.html.erb"})

end

def update
#Parameters: {"input_username"=>"anisa1", "user_name"=>"117"}

the_user_name = params.fetch("user_name")

matching_user_name = User.where({ :username => the_user_name})

the_user = matching_user_name.at(0)

new_user_name = params.fetch("input_username")

the_user.username = new_user_name

the_user.save
  
  redirect_to ("/users/" + the_user.username)

end

def add_user
#Parameters: {"input_username"=>"moshe"}

new_user_name = params.fetch("input_username") 

new_user = User.new

new_user.username = new_user_name

new_user.save

redirect_to ("/users/" + new_user.username)

end

end