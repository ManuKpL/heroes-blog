ActiveAdmin.register Post do
  permit_params :title, :content, :user_id

  index do
    selectable_column
    column :id
    column :title
    column :user
    column :created_at
    actions
  end
end
