class CreateRecognitions < ActiveRecord::Migration[5.2]
  def change
      create_table :recognitions do |t|
         t.column :name, :string, :limit => 32, :null => false
         t.integer :user_id, :limit => 8
         t.integer :emotion_id, :limit => 8
         t.column :device, :string
         t.column :updated_at, :timestamp
         t.column :created_at, :timestamp
      end
      add_foreign_key :recognitions, :emotions
   end

  #  def self.down
  #     drop_table :recognitions
  #  end
end
