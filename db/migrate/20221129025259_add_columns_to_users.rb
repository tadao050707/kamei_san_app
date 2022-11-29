class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :gender, :string, null: false, default: ""
    add_column :users, :age, :string, null: false, default: ""
  end
end
