class Carro
  def descrever
    puts "Carro normal"
  end
end

class CarroEsporte < Carro
  def descrever
    puts "Carro esportivo"
  end
end

class CarroSedan < Carro
  def descrever
    puts "Carro sedan"
  end
end

carro = Carro.new
carroesporte = CarroEsporte.new
carrosedan = CarroSedan.new

carro.descrever
carroesporte.descrever
carrosedan.descrever