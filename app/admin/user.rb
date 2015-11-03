ActiveAdmin.register User do
  form do |f|
    f.inputs "Identity" do
      f.input :name
      f.input :email
      f.input :twitter_name
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :name, :email, :admin

  index do
    selectable_column
    column :id
    column :name
    column :email
    column :created_at
    column :admin
    actions
  end
end
