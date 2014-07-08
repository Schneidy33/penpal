class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :reciever_id
      t.integer :sender_id
      t.string :subject
      t.string :image_url

      t.timestamps
    end
  end
end
