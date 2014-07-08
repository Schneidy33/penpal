class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :occupation
      t.string :email
      t.string :phone
      t.string :gradelevel
      t.string :image
      t.integer :school_id

      t.timestamps
    end
  end
end
