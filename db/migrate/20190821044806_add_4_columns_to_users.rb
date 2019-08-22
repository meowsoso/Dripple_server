class Add4ColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :about, :string
    add_column :users, :age, :integer
    add_column :users, :birthday, :date
    add_column :users, :hobbies, :string
  end
end
