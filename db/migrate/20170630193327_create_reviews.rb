class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :name, :string
      t.column :comment, :string
      t.column :rating, :integer
      t.column :product_id, :integer

      t.timestamps
    end
  end
end
