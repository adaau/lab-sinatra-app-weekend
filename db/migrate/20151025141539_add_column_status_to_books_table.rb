class AddColumnStatusToBooksTable < ActiveRecord::Migration
  def change
    add_column :books, :is_in, :boolean
  end
end
