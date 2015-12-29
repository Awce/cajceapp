class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :company
      t.decimal :progress
      t.date :date_ini
      t.date :date_end
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
