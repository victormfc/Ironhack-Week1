

class ProgrammingLanguage
 #tenemos accessor para poder llamarlas desde fuera de la funcion, no? 
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end


  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]
#en la siguiente linea array, el ser de ese metodo no me hace falta iniciarla, no?
  def array_printer(array)
  array.each do |language| 
  	   puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
      end
  end
#la funcion que hace sobre lo q sea, en este caso array of languages
array_printer(array_of_languages)


aged_languages = array_of_languages.map do |lenguas|
	lenguas.age +=1
	lenguas
  end


puts "The programming languages aged one year are: "

array_printer(aged_languages)


#sort porque son strings, sort by para objetos
sorted_array = array_of_languages.sort { |x,y| y.age <=> x.age }

puts "the sorted array is the next:"
	
array_printer(sorted_array)

array_without_java = array_of_languages.delete_if {|i| i== java}

puts "the array without java is the next"

array_printer(array_without_java)

shuffled_array = sorted_array.shuffle

puts "the shuffled array is the following"

array_printer(shuffled_array)










