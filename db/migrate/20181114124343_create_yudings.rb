class CreateYudings < ActiveRecord::Migration[5.2]
  def change
    create_table :yudings do |t|
      t.integer :zhuohao
      t.datetime :starttime
      t.datetime :endtime
      t.integer :status

      t.timestamps
    end
  end
end
