ActiveAdmin.register Category, as: "Categoriies" do
  permit_params :name, :position, :slug

  sortable sorting_attribute: :position

  # index :as => :sortable do
  #   label :position # item content
  #   actions
  # end
  filter :name
  filter :position

  index :as => :sortable do
    label :name
    
    actions
  end

  form do |f|
    inputs "New Category" do
      input :name
      input :position
    end
    actions
  end
  action_item only: :show do
    link_to('New Category', new_resource_path)
  end
end
