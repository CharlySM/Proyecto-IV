class Equipos

  # método inicializar clase
  def initialize()
    # atributos
    @equipo = Array.new()

  end

  def addEquipo(equipo)
    @equipo.push(equipo)
  end

def BorraEquipo(equipo)
    @equipo.delete(equipo)
end

def size()
  return @equipo.length
end
def imprime()
  i=0
  while i<self.size()
    puts @equipo[i]
    i+=1
  end
end
end
