class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :articles, :title, :headline
    rename_column :articles, :body, :story
  end
end
