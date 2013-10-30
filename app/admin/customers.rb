ActiveAdmin.register Customer do
  index do
    selectable_column
    #id_column
    column :first_name
    column :last_name
    column :email    
    column :state do |st|
      status_tag(st.state ? 'enable' : 'disable' )
    end
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :state    
    end
    f.actions
  end
end
