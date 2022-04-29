class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :body
      t.string :text

      t.timestamps
    end
  end
end
