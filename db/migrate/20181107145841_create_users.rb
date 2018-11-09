class CreateUsers < ActiveRecord::Migration[5.2]
  def change
      create_table :users do |t|
         t.column :name, :string, :limit => 32, :null => false
         t.column :email, :text
         t.column :country, :text
         t.column :phone, :text
         t.column :created_at, :timestamp
      end
      add_foreign_key :recognitions, :users
   end

  #  def self.down
  #     drop_table :users
  #  end

  #  def change
  #    add_reference :recognitions, :users, foreign_key: true
  #  end
end
