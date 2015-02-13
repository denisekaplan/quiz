class CreateCoolstuffs < ActiveRecord::Migration
  def change
    create_table :coolstuffs do |t|

      t.timestamps null: false
    end
  end
end
