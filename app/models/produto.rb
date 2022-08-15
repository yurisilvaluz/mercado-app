class Produto < ApplicationRecord
    has_many :compras, :dependent => :destroy
    validates :nome , uniqueness: { message: "ja existe" }
end
