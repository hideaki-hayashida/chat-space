class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name, :null false
      t.references :user_id, :foreign_key: true
      t.references :post_id, :foreign_key: true
      t.timestamps

      belong_to :posts
      belong_to :users
    end
  end
end
