class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.string :uuid
      t.integer :strength
      t.timestamps null: false
    end
  end
end
