class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.date :created_on
      t.integer :packs
      t.integer :user_id

      t.timestamps
    end
    add_index :packs, [:user_id, :created_on], unique: true
  end
end
