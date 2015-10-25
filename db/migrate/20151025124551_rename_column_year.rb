class RenameColumnYear < ActiveRecord::Migration
  def change
    rename_column :books, :year_published, :year
  end
end
