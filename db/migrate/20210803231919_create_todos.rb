class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :email
      t.timestamp :completed_at

      t.timestamps
    end
  end
end
