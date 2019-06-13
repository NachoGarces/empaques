class AddDataToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :rut, :integer
    add_reference :users, :supermarket, foreign_key: true
    add_column :users, :academic_status, :string
    add_column :users, :institution, :string
    add_column :users, :career_name, :string
    add_column :users, :year_of_income, :integer
    add_column :users, :role, :integer, default: 4
  end
end
