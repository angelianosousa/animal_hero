class Animal < ApplicationRecord
  enum situation: %w[Abandonado Propriedade]
  belongs_to :ong

  # Kaminari config
  paginates_per 10

  scope :standard_scope, ->(current_user, page){ 
    where(ong_id: current_user.ongs.ids).includes(:ong).page(page)
  }

  scope :_search_, ->(ongs, name){ 
    where("lower(name) LIKE ?", "%#{name.to_s.downcase}%").where(ong_id: ongs.ids).includes(:ong)
  }
end
