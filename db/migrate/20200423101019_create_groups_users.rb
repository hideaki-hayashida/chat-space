class CreateGroupsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :groups_users do |t|
      t.references :user_id, :foreign_key: true
      t.references :group_id, :foreign_key: true
      t.timestamps

      belong_to :user
      belong_to :group
    end
  end
end
