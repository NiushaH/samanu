class CreateNewsboards < ActiveRecord::Migration[6.1]
  def change
    create_table :newsboards do |t|
      t.string :title
      t.string :date_created

      t.timestamps
    end
  end
end
