class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.string :p_name
      t.string :p_link

      t.timestamps
    end
  end
end
