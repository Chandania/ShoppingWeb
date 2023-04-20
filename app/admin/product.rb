ActiveAdmin.register Product do
  permit_params :name , :price , :description , :sub_category_id
  index do
    selectable_column
    id_column
    column :name
    column :price
    column :description
    column :sub_category_id
    actions
  end
  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :description
      f.input :img, as: :file
      f.input :sub_category_id,  as: :select, collection: SubCategory.all#pluck(:id)
    end
    f.actions
  end
end