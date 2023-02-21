class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :users, foreign_key: true
      t.references :posts, foreign_key: true
      t.timestamps
    end
  end
end
