class Cliente < ApplicationRecord
    has_many :compras, :dependent => :destroy
    validates :data_nascimento,  presence:{ message: " obrigatoria"}
    validates :nome , uniqueness: { message: "ja existe" }
end
