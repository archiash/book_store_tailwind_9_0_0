class CreateAuthorships < ActiveRecord::Migration[8.1]
  def change
    create_table :authorships, primary_key: [ :author_id, :book_id ] do |t|
      t.belongs_to :author
      t.belongs_to :book
      t.timestamps
    end
  end
end
