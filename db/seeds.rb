# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)


# ### STUDENTS TABLE SEEDING:

elias = Student.new({
    :github_id => 656825,
    :real_name => "Elias Carlston"
    })
elias.save
michael = Student.new({
    :github_id => 11218963,
    :real_name => "Michael Neal"
    })
michael.save
caren = Student.new({
    :github_id => 5167657,
    :real_name => "Caren Garcia"
    })
caren.save
zach = Student.new({
    :github_id => 10704308,
    :real_name => "Zach Fountain"
    })
zach.save
alejandra = Student.new({
    :github_id => 11967578,
    :real_name => "Alejandra Chapa"
    })
alejandra.save
tony = Student.new({
    :github_id => 11972837,
    :real_name => "Tony Dominguez"
    })
tony.save
james = Student.new({
    :github_id => 909292,
    :real_name => "James Rutledge"
    })
james.save
# al = Student.new({
#     :github_id => 10876349,
#     :real_name => "Al Mortada"
#     })
# al.save
# courtney = Student.new({
#     :github_id => ,
#     :real_name => "Courtney Regensburger"
#     })
# courtney.save
# walker = Student.new({
#     :github_id => ,
#     :real_name => "Walker Flieller"
#     })
# walker.save
# nancy = Student.new({
#     :github_id => ,
#     :real_name => "Nancy Valladares"
#     })
# nancy.save
# wendi = Student.new({
#     :github_id => ,
#     :real_name => "Wendi Donaldson-Speciale"
#     })
# wendi.save
# wes = Student.new({
#     :github_id => ,
#     :real_name => "Wes Hoover"
#     })
# wes.save
# max = Student.new({
#     :github_id => ,
#     :real_name => "Max DePriest"
#     })
# max.save
# nathan = Student.new({
#     :github_id => ,
#     :real_name => "Nathan Bloom"
#     })
# nathan.save
# mike = Student.new({
#     :github_id => ,
#     :real_name => "Mike Dang"
#     })
# mike.save
# sean = Student.new({
#     :github_id => ,
#     :real_name => "Sean Shannon"
#     })
# sean.save
# clint = Student.new({
#     :github_id => ,
#     :real_name => "Clint Espinoza"
#     })
# clint.save
# daniel = Student.new({
#     :github_id => ,
#     :real_name => "Daniel Rendon"
#     })
# daniel.save
# heidi = Student.new({
#     :github_id => ,
#     :real_name => "Heidi Poon"
#     })
# heidi.save
# miguel = Student.new({
#     :github_id => ,
#     :real_name => "Miguel Solano"
#     })
# miguel.save
# matt_t = Student.new({
#     :github_id => ,
#     :real_name => "Matt Thomas"
#     })
# matt_t.save
# matt_d = Student.new({
#     :github_id => ,
#     :real_name => "Matt Duncan"
#     })
# matt_d.save

### ASSIGNMENTS TABLE SEEDING:

assignment_list = [
	["w01d01"], ["w01d02"], ["w01d03"], ["w01d04"], ["w01d05"]
	# ["w02d01"], ["w02d02"], ["w02d03"], ["w02d04"], ["w02d05"], 
	# ["w03d01"], ["w03d02"], ["w03d03"], ["w03d04"], ["w03d05"], 
	# ["w04d01"], ["w04d02"], ["w04d03"], ["w04d04"], ["w04d05"], 
	# ["w05d01"], ["w05d02"], ["w05d03"], ["w05d04"], ["w05d05"], 
	# ["w06d01"], ["w06d02"], ["w06d03"], ["w06d04"], ["w06d05"], 
	# ["w07d01"], ["w07d02"], ["w07d03"], ["w07d04"], ["w07d05"], 
	# ["w08d01"], ["w08d02"], ["w08d03"], ["w08d04"], ["w08d05"], 
	# ["w09d01"], ["w09d02"], ["w09d03"], ["w09d04"], ["w09d05"], 
	# ["w10d01"], ["w10d02"], ["w10d03"], ["w10d04"], ["w10d05"], 
	# ["w11d01"], ["w11d02"], ["w11d03"], ["w11d04"], ["w11d05"], 
	# ["w12d01"], ["w12d02"], ["w12d03"], ["w12d04"], ["w12d05"]
]

assignment_list.each do |date_name|
	Assignment.create(date_name: date_name)
end

### HW TABLE SEEDING:

homework_list = [
	[false, 1, 1], [false, 1, 2], [false, 1, 3], [false, 1, 4], [false, 1, 5],
	[true, 2, 1], [true, 2, 2], [true, 2, 3], [true, 2, 4], [true, 2, 5],
	[true, 3, 1], [false, 3, 2], [true, 3, 4],
	[true, 4, 2], [true, 4, 4], [false, 4, 5],
	[false, 5, 1], [false, 5, 2], [true, 5, 3], [true, 5, 4], [false, 5, 5],
	[true, 6, 1], [true, 6, 2], [true, 6, 3], [false, 6, 4],
	[true, 7, 1], [true, 7, 2], [true, 7, 3], [false, 7, 4], [false, 7, 5]
]

homework_list.each do |complete, student_id, assignment_id|
	Homework.create(complete: complete, student_id: student_id, assignment_id: assignment_id)
end


