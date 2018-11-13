class AddStatusToPingluns < ActiveRecord::Migration[5.2]
  def change
    add_column :pingluns, :status, :integer
  end
end
