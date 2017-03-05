ActiveAdmin.register User do
  permit_params :username, :avatar, :email 
  
  jcropable

  form do |f|
    f.inputs "User Details" do
      f.input :username
      f.input :avatar
      f.input :email

    end
    f.actions
  end
  index do 
    column :username
    column :avatar, as: :jcropable
    column :email
    actions
  end
end
