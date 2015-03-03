class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.string :description
      t.integer :recipe_id
      t.integer :user_id
    end
  end
end
