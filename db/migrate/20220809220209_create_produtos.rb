class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :preco
      t.string :descricao

      t.timestamps
    end
  end
end
