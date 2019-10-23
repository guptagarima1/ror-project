class CreateColglibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :colglibraries do |t|
      t.string :name
      t.datetime :opening_time
      t.datetime :closing_time

      t.timestamps
    end
  end
end
