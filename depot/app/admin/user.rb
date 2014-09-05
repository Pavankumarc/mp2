ActiveAdmin.register User do
actions :all, :except => :edit
config.batch_actions = false
index do
    selectable_column
    id_column
    
    column :name
    column :email
    column :created_at
    actions
  end
filter :created_at
  
  form do |f|
    f.inputs "Admin Details" do
      
      f.input :name
      f.input :email
      f.input :created_at
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
