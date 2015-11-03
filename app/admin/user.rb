ActiveAdmin.register User do
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
