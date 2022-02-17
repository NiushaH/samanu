class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :author
      t.string :publisher_name
      t.string :publish_date

      t.timestamps
    end
  end
end
