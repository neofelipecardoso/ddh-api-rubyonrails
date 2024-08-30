class AddFieldsToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :aura_extra, :string, array: true, null: true
    add_column :characters, :itens, :string, array: true, null: true
    add_column :characters, :aura, :string, default: "", null: false
  end
end
