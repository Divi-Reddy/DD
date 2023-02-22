class RemoveNameFromVariants < ActiveRecord::Migration[7.0]
  def change
    remove_column :variants, :name, :string
  end
end
