class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.date :publish_on
      t.integer :member_id
      t.boolean :private

      t.timestamps
    end
  end
end
