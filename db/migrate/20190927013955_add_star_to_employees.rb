class AddStarToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :star, :boolean
  end
end
