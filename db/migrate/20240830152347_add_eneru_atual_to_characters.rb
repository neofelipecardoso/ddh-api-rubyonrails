class AddEneruAtualToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :eneru_atual, :integer
    add_column :characters, :agilidade, :integer
  end
end
