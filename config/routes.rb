Rails.application.routes.draw do

get("/", { :controller => "users", :action => "index"})

get("/users", { :controller => "users", :action => "index"})

get("/users/:path_username", {:controller => "users", :action => "show"})

get("/insert_username", {:controller => "users", :action => "new"})

get("/update_user/:update_username", {:controller => "users", :action => "update"})

get("/photos", {:controller => "photos", :action => "index"})

get("/photos/:photo_id", {:controller => "photos", :action => "show"})

get("/delete_photo/:toast_id", {:controller => "photos", :action => "delete"})

get("/insert_photo_record", {:controller => "photos", :action => "create"})

get("/update_photo/:update_id", {:controller => "photos", :action => "update"})

get("/insert_comment_record", {:controller => "photos", :action => "comment"})

end
