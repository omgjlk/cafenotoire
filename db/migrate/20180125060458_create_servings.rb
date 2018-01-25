class CreateServings < ActiveRecord::Migration[5.1]
  def change
    create_table :servings do |t|
      t.string :name

      t.timestamps
    end
  end
end
