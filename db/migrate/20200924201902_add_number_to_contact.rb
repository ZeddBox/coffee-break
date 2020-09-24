class AddNumberToContact < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :number, :string
  end
end
