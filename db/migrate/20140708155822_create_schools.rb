class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :city
      t.string :neighborhood
      t.string :state
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
