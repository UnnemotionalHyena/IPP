require "./builder.rb"
require "./proxy.rb"
require "./observer.rb"
require "./decorator"

student = StudentBuilder.new
student.set_first_name("Surdu")
student.set_last_name("Daniel")
student.set_age(17)

first_student = student.student
professor     = Professor.new("Cazac", "AR")

professor.add_observer(first_student)
professor.set_lesson("01.01.2019 01:00")

puts first_student.lessons.to_json # [{"01.01.2019 01:00":{"":"Cazac Marin"}}]

proxy = Db_Proxy.new
proxy.add_subject("LFPC", "Cojuhari")
proxy.get_list # {2019-01-16 23:17:12 +0200=> {"ENG"=>"Gogoi", "DSD"=>"Rosca", "Filozofia"=>"Braga", "EPBC"=>"Gulea", "D. Teh"=>"Botez", "AR"=>"Cazac", "LFPC"=>"Cojuhari"}}

extended_proxy = Db_etended_proxy.new(proxy)
extended_proxy.search_professor("Rosca") # {"BSD"=>"Rosca"}



