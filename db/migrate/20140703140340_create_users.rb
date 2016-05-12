class CreateUsers < ActiveRecord::Migration
  # Write your migrations here
  def change
    create_table :users do |t|
      t.string :name
      t.integer :nausea
      t.integer :happiness
      t.integer :tickets
      t.integer :height

      t.timestamps null: false
    end
  end
end


# :name => "Mindy",
# :nausea => 5,
# :happiness => 3,
# :tickets => 4,
# :height => 34
