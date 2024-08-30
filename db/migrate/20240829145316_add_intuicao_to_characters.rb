class AddIntuicaoToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :intuicao, :integer
  end
end
