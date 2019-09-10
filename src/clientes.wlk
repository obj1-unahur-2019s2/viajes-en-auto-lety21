/*La cooperativa pacta con cada cliente el precio por kilómetro que le va a cobrar. Estos son los valores que arregló con algunos clientes
- **Ludmila**: 18 pesos el kilómetro, valor fijo e inamovible.
- **Ana María**: 30 pesos el kilómetro si está económicamente estable, 25 pesos el kilómetro en caso contrario. Se sabe en cada momento si Ana María está o no económicamente estable.
- **Teresa**: arranca en 22 pesos el kilómetro, puede cambiar a cualquier otro valor.*/

object ludmila{
    method precioKm()= 18 
}
object anaMaria{
	var property estaEstable=true
	method precioKm(){
		if(estaEstable) return 30
		else return 25
	} 
}
object teresa{
	var property precioKm=22
}
object melina{
	var property cliente=22
	method precioKm()=cliente.precioKm()-3
}