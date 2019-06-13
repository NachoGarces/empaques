class AddSuperToTurns < ActiveRecord::Migration[5.2]
  def change
    add_reference :turns, :supermarket, foreign_key: true
  end
end
