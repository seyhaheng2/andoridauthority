ActiveAdmin.register Post do

  permit_params :title, :image, :description, :user_id, :category_id, :published_at, :format_post, :tag_list

  jcropable

  filter :title, as: :string
  filter :format_post, :as => :select
  filter :category
  filter :user

  scope :all
  scope :published
  scope :unpublished

  index do
    selectable_column
    column :title 
    column :image do |img|
      image_tag img.image,size: "150x100"
    end
    # column :description do |desc|
    #   truncate(desc.descirption.html_safe,length: 100)
    # end
    # column :category_id do |cate|
    #    cate.category.name
    # end
    column :user_id do |u|
       u.user.username
    end
    column :format_post 
    actions
  end

  form do |f|
    inputs "New Post" do
      input :title
      f.input :image, as: :file,as: :jcropable, hint: f.object.image.present? \
        ? f.template.image_tag(f.object.image)
        : f.template.content_tag(:span, "no cover page yet")
      input :description, as: :ckeditor
      input :user
      input :category
      f.input :format_post, as: :select, :collection => [["Post"],["Slide"],["Trending"]]
      input :tag_list
    end
    f.actions
  end
  show do |t|
    attributes_table do 
      row :title
      row :image do
        post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "No Photo yet")
      end
      row :format_post
      row :user
      row :category
      row :published_at
      row :description do |post|
        raw(post.description)
      end
    end
  end

 
  action_item :publish, only: :show do
    link_to "Publish", publish_admin_post_path(post), method: :put if !post.published_at?
  end

  member_action :publish, method: :put do
    post = Post.find(params[:id])
    post.update(published_at: Time.zone.now)
    redirect_to admin_post_path(post)
  end

  action_item :unpublish, only: :show do
    link_to "Unpublish", unpublish_admin_post_path(post), method: :put if post.published_at?
  end

  member_action :unpublish, method: :put do
    post = Post.find(params[:id])
    post.update(published_at: nil)
    redirect_to admin_post_path(post)
  end
  action_item only: :show do
    link_to('New Post', new_resource_path)
  end
end