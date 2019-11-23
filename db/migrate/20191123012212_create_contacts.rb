class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
            t.integer :contact_id
            t.string :fname
            t.string :lname
            t.string :email
            t.string :pnumber


      t.timestamps
    end
 add_index :contacts, :contact_id
  end
end
