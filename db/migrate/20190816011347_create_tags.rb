class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.text :tag_name
      t.integer :dripple_id

      t.timestamps
    end
  end
end
