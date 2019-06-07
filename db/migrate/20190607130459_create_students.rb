class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.datetime :started_at

      t.timestamps
    end
  end
end

# Ogrenci tablosu olusturuldu.
