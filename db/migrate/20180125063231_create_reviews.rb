class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.text :notes
      t.references :roast, foreign_key: true
      t.references :serving, foreign_key: true
      t.references :reviewer, foreign_key: true

      t.timestamps
    end
  end
end
