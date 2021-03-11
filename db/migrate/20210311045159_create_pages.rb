class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.integer :page
      t.boolean :completed, default: false
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
