class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :id, null: false
      t.string :name, null: false
      t.string :Email, null: false
      t.string :Password, null: false
      t.timestamps

      has_many :posts through: :group_id
      has_many :groups
    end
  end
end
