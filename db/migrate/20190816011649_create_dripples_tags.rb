class CreateDripplesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :dripples_tags do |t|
      t.integer :dripple_id
      t.integer :tag_id
    end
  end
end
