class Ong < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :animals, dependent: :destroy

  # Scope methods
  scope :standard_scope, -> (current_user){ 
    where(user: current_user).order(nome: :asc)
  }

  scope :_search_, -> (current_user, name){ 
    where("user_id = ? AND lower(nome) LIKE ?", current_user.id, "%#{name.to_s.downcase}%")
  }
end
