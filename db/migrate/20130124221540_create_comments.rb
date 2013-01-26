class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :autor
      t.string :body
      t.references :word

      t.timestamps
    end
    add_index :comments, :word_id
  end
end
