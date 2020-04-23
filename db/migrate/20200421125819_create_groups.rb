class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name, :null false
      t.references :user_id, :foreign_key: true
      t.references :post_id, :foreign_key: true
      t.timestamps

      has_many :posts 
      has_many :users, through: :groups_users
      has_many :groups_users
    end
  end
end
