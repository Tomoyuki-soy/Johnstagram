class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :point_name
      t.string :size
      t.integer :score
      t.text :comment
      t.text :memo

      t.timestamps
    end
  end
end
