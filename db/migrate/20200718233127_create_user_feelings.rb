class CreateUserFeelings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_feelings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :feeling, null: false, foreign_key: true

      t.timestamps
    end
  end
end
