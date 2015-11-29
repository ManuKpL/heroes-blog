ActiveAdmin.register Post do
  form do |f|
    f.inputs "Post" do
      f.input :title
      f.input :content, as: :html_editor
    end
    f.inputs "Author" do
      f.input :user
    end
    f.actions
  end

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
