require "circunferencia"

puts "El radio de un círculo se calcula"
puts "con la siguiente fórmula : Radio = Perimetro/ (2*Pi)"
puts "pi=3.1416"
print "Escribe el perimetro en cm = "
	loop do
		STDOUT.flush
		Perimetro = gets.chomp.to_i
		if Perimetro > 0
			break
		else 
			puts "El perimetro no pude ser negativo, por favor..."
			puts "Escribe el perimetro en cm = "
		end
	end
	circulo = Circunferencia.new
	
	radio = circulo.calcularRadio(perimetro)

	print "Radio = "; print radio; print "cm"; puts