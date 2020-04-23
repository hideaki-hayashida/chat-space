class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :text
      t.string :image
      t.references :user_id, foreign_key: true
      t.references :group_id, foreign_key: true
      t.timestamps

      belong_to :user
      belong_to :group

    end
  end
end
