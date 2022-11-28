class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :address
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
