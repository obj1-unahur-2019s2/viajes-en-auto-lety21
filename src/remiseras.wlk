import clientes.*

//**Roxana** le cobra a cada cliente el precio por kilómetro que pactó con la cooperativa sin variaciones.
object roxana {
    method cobrarViajeA(cliente,distancia)=cliente.precioKm()*distancia
}

/*- **Gabriela** le aumenta un 20%, porque su auto de alta gama.*/
object gabriela {
        method cobrarViajeA(cliente,distancia)=cliente.precioKm()*distancia*1.20
}

/*- **Mariela** no aplica recargo, pero establece un mínimo de 50 pesos el viaje.*/
object mariela {
        method cobrarViajeA(cliente,distancia)=50.max(cliente.precioKm()*distancia*1.20)
}

/* **Juana** por su parte, cobra 100 pesos hasta 8 kilómetros, y 200 pesos si son más de 8 kilómetros. 
A Juana no le importa lo que pactó la agencia, le cobra lo mismo a todos.*/
object juana {
        method cobrarViajeA(cliente,distancia){
        	if (distancia>8) return 200
        	else return 100
        	}
}

object lucia {
        var property reemplaza
        method cobrarViajeA(cliente,distancia)=reemplaza.cobrarViajeA(cliente,distancia)
}