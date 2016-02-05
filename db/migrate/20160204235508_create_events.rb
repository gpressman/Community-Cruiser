class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :workers
      t.string :name
      t.string :address
      t.string :date

      t.timestamps null: false
    end
  end
end
