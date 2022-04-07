class Animal < ApplicationRecord
  enum situation: %w[Abandonado Propriedade]
  belongs_to :ong
end
