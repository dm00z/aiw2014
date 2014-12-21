ActiveAdmin.register Category do
  permit_params :name, :subtitle, :image, :description

  sidebar 'Posts detail', only: [:show, :edit] do
    ul do
      li link_to('Posts', admin_category_posts_path(category))
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs 'Category' do
      f.input :name
      f.input :subtitle
      f.input :description
      f.input :image, :as => :file
    end
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
