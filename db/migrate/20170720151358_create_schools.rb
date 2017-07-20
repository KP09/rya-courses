class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.text :description, null: true
      t.string :phone, null: false
      t.string :website, null: false
      t.boolean :active, null: false, default: true
      t.boolean :rya_verified, null: false, default: false
      t.timestamps
    end
  end
end
