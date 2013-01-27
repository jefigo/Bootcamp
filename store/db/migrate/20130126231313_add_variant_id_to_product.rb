class AddVariantIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :variant_id, :integer

  end
end
