class CreatePresidents < ActiveRecord::Migration[5.1]
  def change
    create_table :presidents do |t|
      t.string :name
      t.string :party
      t.string :term

      t.timestamps
    end
  end
end
