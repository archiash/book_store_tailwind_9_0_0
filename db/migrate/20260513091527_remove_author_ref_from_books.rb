class RemoveAuthorRefFromBooks < ActiveRecord::Migration[8.1]
  def change
    remove_reference :books, :author, foreign_key: true
  end
end
