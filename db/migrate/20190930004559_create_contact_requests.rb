class CreateContactRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_requests do |t|
      t.string :u_name
      t.string :u_email
      t.string :u_tel
      t.text :u_message

      t.timestamps
    end
  end
end
