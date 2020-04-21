class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string id, :null false
      t.string name, :null false
      t.integer user_id, :foreign_key: true
      t.tnteger post_id, :foreign_key: true
      t.timestamps

      has_many :posts through: :user_id
      has_many :users
    end
  end
end
