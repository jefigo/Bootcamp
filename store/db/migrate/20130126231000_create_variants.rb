class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :name
      t.text :color
      t.text :zise

      t.timestamps
    end
  end
end
