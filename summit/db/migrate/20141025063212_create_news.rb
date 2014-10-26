class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :body
      t.references :section, index: true

      t.timestamps
    end
  end
end
