class CreateEmotions < ActiveRecord::Migration[5.2]
  def change
      create_table :emotions do |t|
         t.column :name, :string, :limit => 32, :null => false
         t.column :src, :text
         t.column :size, :text
         t.column :permalink, :string, :limit => 8, :null => false
         t.column :updated_at, :timestamp
         t.column :created_at, :timestamp
      end
   end

  #  def self.down
  #     drop_table :emotions
  #  end

  #  def change
  #    add_foreign_key :recognitions, :emotions
  #  end
end
