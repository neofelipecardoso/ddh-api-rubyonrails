class RemoveItensFromCharacters < ActiveRecord::Migration[7.2]
  def change
    remove_column :characters, :itens, :string
  end
end
