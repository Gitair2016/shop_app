class CreateCaiwus < ActiveRecord::Migration[5.2]
  def change
    create_table :caiwus do |t|
      t.integer :zhuohao
      t.integer :jine

      t.timestamps
    end
  end
end
