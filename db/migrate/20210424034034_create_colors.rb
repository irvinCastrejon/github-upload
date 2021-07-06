class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :semaphores do |t|
      t.belongs_to :state, index: true
      t.integer :color
      t.date :fecha_ini
      t.date :fecha_fin

      t.timestamps
    end
  end
end
