ActiveAdmin.register GalleryItem do
  permit_params :title, :short_desc, :image
  form(:html => { :multipart => true }) do |f|
    f.inputs "GalleryItem" do
      f.input :title
      f.input :short_desc
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
