class Animal < ApplicationRecord
  enum situation: %w[Abandonado Propriedade]
  belongs_to :ong

  scope :standard_scope, ->(current_user){ 
    where(ong_id: current_user.ongs.ids).includes(:ong)
  }
end
