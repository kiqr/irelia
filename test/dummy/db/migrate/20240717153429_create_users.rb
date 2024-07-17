class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :birth_year, null: false
      t.text :bio, null: false

      t.timestamps
    end
  end
end
