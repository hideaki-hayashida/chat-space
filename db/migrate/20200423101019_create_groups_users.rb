class CreateGroupsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :groups_users do |t|
      t.string :name, null: false
      t.text :text
      t.string :image
      t.timestamps

      belong_to :users
      belong_to :groups
    end
  end
end
