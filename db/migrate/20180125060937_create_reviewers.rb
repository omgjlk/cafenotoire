class CreateReviewers < ActiveRecord::Migration[5.1]
  def change
    create_table :reviewers do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
