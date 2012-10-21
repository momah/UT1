#Requisitos
 #•Cargar la biblioteca 'test/unit'
 #•Hacer que la clase a testear sea una subclase de Test::Unit::TestCase
 #•Escribir los métodos con el prefijo test_
 #•Afirmar (assert) las cosas que decidas que sean ciertas.
 #•Ejecutar los tests y corregir los errores hasta que desaparezcan.


#------------Test ----------------
require 'circunferencia'
require 'test/unit'
 
class TestPlay < Test::Unit::TestCase
	
	def test_calculation
		assert_equal(1, Circunferencia.new.calcularRadio(2 * 3.1416) )
		assert_equal(2, Circunferencia.new.calcularRadio(4 * 3.1416) )
		assert_equal(3, Circunferencia.new.calcularRadio(8 * 3.1416) )
	end

	
	def test_NonNumeric
		assert_raises(ErrorNonNumeric) do
		Circunferencia.new.calcularPerimetro('a')
		end
	end
 
	def test_negative_parameter
		assert_raises(ErrorNegativeParameter) do
		Circunferencia.new.calcularPerimetro(-3.1416)
		end
	end

 
	
 
end

