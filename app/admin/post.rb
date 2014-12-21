ActiveAdmin.register Post do
  permit_params :title, :body, :image, :written_by, :subtitle, :thumb
  belongs_to :category
  form(:html => { :multipart => true }) do |f|
    f.inputs "Post" do
      f.input :title
      f.input :subtitle
      f.input :body
      f.input :written_by
      f.input :image, :as => :file
      f.input :thumb, :as => :file
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
