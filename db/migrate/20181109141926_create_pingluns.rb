class CreatePingluns < ActiveRecord::Migration[5.2]
  def change
    create_table :pingluns do |t|
      t.text :content
      t.references :vip, foreign_key: true

      t.timestamps
    end
    add_index :pingluns, [:vip_id, :created_at]
  end
end
