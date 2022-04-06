class Ong < ApplicationRecord
  belongs_to :user

  # Scope methods
  scope :standard_scope, -> (current_user){ 
    where(user: current_user).order(nome: :asc)
  }
end
