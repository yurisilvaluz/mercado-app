class Compra < ApplicationRecord
  belongs_to :cliente
  belongs_to :produto
  validates :data_compra, presence: { message: " obrigatoria"}

  scope :compra_mes, -> (data)  {
    joins(:cliente, :produto).where(data_compra: (data.beginning_of_month)..(data.end_of_month))
    .joins(:produto).sum('preco')
    }
  scope :soma_produtos, -> () {
    joins(:produto).sum('preco')
  }
#                             . where('cliente_id = ? ', id)
#                            .sum('produtos.preco') 
end