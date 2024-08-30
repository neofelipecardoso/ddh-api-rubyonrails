class AddVidaAtualToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :vida_atual, :integer
  end
end
