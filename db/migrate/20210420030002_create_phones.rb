class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :numero
      t.belongs_to :state, index: true
      t.timestamps
    end
  end
end
