class CreateUniversities < ActiveRecord::Migration[5.1]
  def change
    create_table :universities do |t|
      t.integer :api_id
      t.string :name
      t.string :city
      t.string :web_page
      t.string :typ
      t.datetime :founded_at

      t.timestamps
    end
    add_index :universities, :api_id
  end
end


