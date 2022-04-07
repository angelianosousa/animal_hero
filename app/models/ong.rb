class Ong < ApplicationRecord
  belongs_to :user

  # Scope methods
  scope :standard_scope, -> (current_user){ 
    where(user: current_user).order(nome: :asc)
  }

  scope :_search_, -> (current_user, name){ 
    where("user_id = ? AND lower(nome) LIKE ?", current_user.id, "%#{name}%")
  }
end
