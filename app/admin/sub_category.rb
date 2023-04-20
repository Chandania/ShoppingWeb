ActiveAdmin.register SubCategory do
  permit_params :name , :category_id
  index do
    selectable_column
    id_column
    column :name
    column :category_id
   
    actions
  end
  form do |f|
    f.inputs do
      f.input :name
      f.input :category_id,  as: :select, collection: Category.all#pluck(:id, :name)
     
    end
    f.actions
  end
end
