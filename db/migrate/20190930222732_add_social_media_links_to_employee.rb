class AddSocialMediaLinksToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :linkdin, :string
    add_column :employees, :facebook, :string
    add_column :employees, :twitter, :string
    add_column :employees, :email, :string
  end
end
