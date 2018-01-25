class CreateRoasts < ActiveRecord::Migration[5.1]
  def change
    create_table :roasts do |t|
      t.string :name
      t.references :roaster, foreign_key: true

      t.timestamps
    end
  end
end
