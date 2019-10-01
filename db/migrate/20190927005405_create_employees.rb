class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :f_name
      t.string :l_name
      t.date :d_employment
      t.string :position

      t.timestamps
    end
  end
end
