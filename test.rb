
require "test/unit"
require './Equipo.rb'

class TestEquipos < Test::Unit::TestCase

  def test_simple
    i=0
    equipos = Equipos.new()
    while i<10
      equipo = gets.chomp
      equipos.addEquipo(equipo)
      i+=1
    end
    cont=0
    j=0
    while j<equipos.size()
    j+=1
    cont+=1
    end
    assert_equal(10, cont )
    puts ""
    equipos.imprime()
    equipos.BorraEquipo('Barcelona')
    cont=0
    j=0
    while j<equipos.size()
    j+=1
    cont+=1
    end
    assert_equal(9, cont )
  end

end
