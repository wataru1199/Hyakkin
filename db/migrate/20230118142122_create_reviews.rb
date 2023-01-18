class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :star
      t.text :comment
      t.string :shop

      t.timestamps
    end
  end
end
