ActiveAdmin.register Controlsite do
  permit_params :logo, :facebook, :twitter,:youtube,:pinterest, :google, :plus, :ads1, :ads2, :ads3, :ads4, :post

  filter :facebook

  index do
    selectable_column
    column :facebook 
    column :youtube 
    column :google 
    actions
  end

  form do |f|
    inputs "New Control Site" do
      input :logo, label: "Logo Size 233x106"
      input :facebook 
      input :twitter 
      input :youtube 
      input :pinterest 
      input :google 
      input :ads1, label: "Ads 1 728x90 Top of Post"
      input :ads2, label: "Ads 2 300x250 Sidebar"
      input :ads3, label: "ADS 3 300x250 Sidebar Fixed"
      input :ads4, label: "Ads 4 300x250 In Youtube Box"
    end
    actions
  end

  show do |t|
    attributes_table do 
      row :logo do
        controlsite.logo? ? image_tag(controlsite.logo.url, height: '100') : content_tag(:span, "No Photo yet")
      end
      row :facebook
      row :twitter
      row :youtube
      row :pinterest
      row :google
      row :ads1, label: "Ads 1 728x90 Top of Post"
      row :ads2, label: "Ads 2 300x250 Sidebar"
      row :ads3, label: "Ads 3 300x600 Sidebar Fixed"
      row :ads4, label: "Ads 4 300x250 In Youtube Box"

     
    end
  end

end
