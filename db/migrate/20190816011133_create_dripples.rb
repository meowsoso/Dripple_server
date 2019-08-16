class CreateDripples < ActiveRecord::Migration[5.2]
  def change
    create_table :dripples do |t|
      t.text :title
      t.text :content
      t.text :image
      t.text :audio
      t.text :video
      t.text :location
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
