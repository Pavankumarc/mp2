ActiveAdmin.register Order do
  actions :all, :except => :edit
  config.batch_actions = false
  config.clear_action_items!
index do
    selectable_column
    id_column
    
    column :name
    column :address
    column :pay_type
    column :created_at
    actions
   
  end
  filter :name
  filter :pay_type

  form do |f|
    f.inputs "Admin Details" do
      
      f.input :name
      f.input :address
      f.input :pay_type
      f.input :created_at
    end
    f.actions
  end



show do |order|
    div do      
      panel("Items") do
        table_for(order.line_items) do
          column "Title" do |i| 
            i.product.title
          end
          column :quantity
          @total = []
          @p = 0
          column "Price" do |i| 
            @total << i.product.price * i.quantity
            number_to_currency i.product.price * i.quantity
          end
          @p = @total.sum 
        end
      end
      table_for "totalprice" do
      column :totalPrice do
      number_to_currency(@p)
    end
  end
    end
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
