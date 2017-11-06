
require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def test_simple
    equipos=["Barcelona", "Valencia", "Real Madrid", "Sevilla", "Atletico"]
  	cont=0
    i=0
    while i<equipos.length()
      cont+=1
      i+=1
    end
    assert_equal(5, cont )

  end

end
