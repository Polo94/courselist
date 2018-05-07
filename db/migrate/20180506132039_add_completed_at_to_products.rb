class AddCompletedAtToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :completed_at, :datetime
  end
end
