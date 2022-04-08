class Ong < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :animals, dependent: :destroy

  # Kaminari config
  paginates_per 10

  # Scope methods
  scope :standard_scope, -> (current_user, page){ 
    where(user: current_user).order(nome: :asc).page(page)
  }

  scope :_search_, -> (current_user, name){ 
    where("user_id = ? AND lower(nome) LIKE ?", current_user.id, "%#{name.to_s.downcase}%")
  }
end
