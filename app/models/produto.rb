class Produto < ApplicationRecord
    has_many :compras, :dependent => :destroy
end
