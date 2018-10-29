class CreateStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :statistics do |t|
      t.integer :conteggio, null: false, default: 1
      t.string :partenza, null: false, default: ""
      t.string :arrivo, null: false, default: ""

      t.timestamps
    end
  end
end
