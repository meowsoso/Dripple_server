class CreateChannelsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :channels_users do |t|
      t.integer :user_id
      t.integer :channel_id
    end
  end
end
