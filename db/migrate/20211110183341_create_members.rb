class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.boolean :assigned, default: false
      t.integer :giftee_id
      t.references :members, :family

      t.timestamps
    end
  end
end
