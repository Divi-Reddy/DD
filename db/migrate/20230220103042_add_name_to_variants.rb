class AddNameToVariants < ActiveRecord::Migration[7.0]
  def change
    add_column :variants, :name, :string
  end
end
