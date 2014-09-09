ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
     # span class: "blank_slate" do
      #  span I18n.t("active_admin.dashboard_welcome.welcome")
        #small I18n.t("active_admin.dashboard_welcome.call_to_action")
      #end
    #end


# # strong section "Recent Orders" do
# #     table_for Order.order("created_at desc").limit(4) do
# #         column :id 
# #         column :name do |name|
# #           link_to name.name, admin_order_path(name), :onclick=>"window.open(this.href,'view order info','scrollbars=yes,height=600, width=600');return false;" 
# #         end
# #         column :address
# #         column :email
# #         column :pay_type

 
      
#     end
# end

strong section "Recent Orders" do
  table_for LineItem.order("created_at desc").limit(5) do
    column :order
    column :quantity
    column :product
  end
end





strong section "Recent Products" do
    table_for Product.order("created_at desc").limit(4) do
      column :title do |title|
        link_to title.title, admin_product_path(title), :onclick=>"window.open(this.href,'view order info','scrollbars=yes,height=600, width=600');return false;" 
      end
      column :created_at
    end
end


strong section "Recent Users Registered" do
table_for User.order("created_at desc").limit(3) do
    column :name
    column :created_at
    end
end







# column do
#    panel "Total number of users" do
#     table_for User.order('created_at desc') do
#     column :user
#     users do |user|
#      user.users.count
#     end
#     end
#   end
# end










    # Here is an example of a simple dashboard with columns and panels.
    
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end