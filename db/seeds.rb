Student.destroy_all
ActiveRecord::Base.connection.execute('ALTER TABLE students AUTO_INCREMENT = 1')
 
Student.create!([
    {
        name: "Almila",
        started_at: "2005-01-01",
        university_id: "1"
    },
    {
        name: "Kursat",
        started_at: "2010-01-01",
        university_id: "1"
    }
])
 
p "Created #{Student.count} students"