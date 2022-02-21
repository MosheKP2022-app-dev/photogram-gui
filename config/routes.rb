Rails.application.routes.draw do

  get("/", { :controller=> "users", :action=> "index"})

  get("/users", { :controller=> "users", :action=> "index"})

  get("/users/:user_name", { :controller=> "users", :action=> "user_details"})

  get("/update_user/:user_name", { :controller=> "users", :action=> "update"})

  get("/insert_user_record", { :controller=> "users", :action=> "add_user"})

  

  
  get("/photos", { :controller=> "photos", :action=> "index"})

  get("/photos/:photo_id", { :controller=> "photos", :action=> "photo_details"})

  get("/delete_photo/:photo_id", { :controller=> "photos", :action=> "delete_photo"})

  get("/insert_photo_record", { :controller=> "photos", :action=> "add_photo"})

  get("/update_photo/:photo_id", { :controller=> "photos", :action=> "update_photo"})

  get("/insert_comment_record/:photo_id", { :controller=> "photos", :action=> "add_comment"})



end
