class AddColumnToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders , :total_amount , :integer , default: 0
    add_column :orders , :status , :integer , default: 0

  end
end
