class UsersController < ApplicationController

  def index
    matching_users = User.all
    @list_of_users = matching_users.order({:username => :asc})
  render( {:template => "user_templates/index.html.erb"})
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username})
    @the_user = matching_usernames.first
    if @the_user == nil
      redirect_to("/404")
    else
      render({:template => "user_templates/show.html.erb"})
    end
  end

def new
new_username = params.fetch("query_username")

a_new_username = User.new
a_new_username.username = new_username
a_new_username.save

redirect_to("/users/"+ a_new_username.username)
end

def update
the_username = params.fetch("update_username")
matching_users = User.where({:username => the_username})
the_user = matching_users.first

input_username= params.fetch("query_username_update")
the_user.username = input_username
the_user.save

redirect_to("/users/"+ the_user.username)
end

end
