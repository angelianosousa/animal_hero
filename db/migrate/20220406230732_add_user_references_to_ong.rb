class AddUserReferencesToOng < ActiveRecord::Migration[5.2]
  def change
    add_reference :ongs, :user, foreign_key: true
  end
end
