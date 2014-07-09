class AddPasswordDigestToPerson < ActiveRecord::Migration
  def change
  end
  add_column :people, :password_digest, :string
end
