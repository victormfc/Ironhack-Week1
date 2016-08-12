class Room
  attr_reader :description, :exits
  def initialize description, exits
  
    @description = description
    @exits = exits

  end
end

class Game
  def initialize rooms 
    @rooms = rooms
    @position = 0
    @last_room = rooms.length-1
  end

  def question
    puts "hacia donde quieres ir? N, S, E, W"
    answer = gets.chomp.upcase
    result = @rooms[@position].exits[answer.to_sym]
   if result  
       if @position == @last_room
            puts "Win"
            return
        end
        @position +=1
    end
  
    show_room

   end
  def show_room
    puts @rooms[@position].description
    question

  end
 
end

 # class Player name
 #    @name = name
 #  end

room1 = Room.new("esta es la habitacion uno" ,{N: true, S: false, E: false, W: false})
room2 = Room.new("estas en la habitacion 2. Es una habitacion muy oscura hay una habitacion a tu izquierda" ,{N: false, S: false, E: false, W: true})
room3 = Room.new("bien hecho estas en la habitacion 3, necesitas coger una llave para poder salir de aqui, busca a tu izquierda" ,{N: false, S: true, E: false, W: false})
room4 = Room.new("estoy sorprendido bien hecho ahora enciende la luz que esta a tu derecha para poder ver la salida" ,{N: false, S: false, E: true, W: false})
room5 = Room.new("ultimo nivel lo unico que tienes es que adivinar un acertijo y despues veras donde esta la puerta" ,{N: true, S: false, E: false, W: false})
game = Game.new([room1, room2, room3, room4, room5])
game.show_room