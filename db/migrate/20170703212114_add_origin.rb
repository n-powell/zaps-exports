class AddOrigin < ActiveRecord::Migration[5.1]
  def change
    change_table :products do |t|
      t.column :from, :string

    end
  end
end
