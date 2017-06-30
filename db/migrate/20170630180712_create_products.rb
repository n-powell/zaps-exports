class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :type, :string
      t.column :price, :integer

      t.timestamps
    end
  end
end
