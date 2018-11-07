class CreateVips < ActiveRecord::Migration[5.2]
  def change
    create_table :vips do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
