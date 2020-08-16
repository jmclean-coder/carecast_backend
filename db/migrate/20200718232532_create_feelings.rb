class CreateFeelings < ActiveRecord::Migration[6.0]
  def change
    create_table :feelings do |t|
      t.string :name
      t.string :main_word
      t.string :need_condition

      t.timestamps
    end
  end
end
