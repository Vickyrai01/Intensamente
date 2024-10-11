class Asentamiento{
    method afectarA(unaPersona) {
    unaPersona.asentar(self.pensamientosAAsentarSegun(unaPersona))
    }
    method pensamientosAAsentarSegun(unaPersona)
}

class AsentamientoSelectivo inherits Asentamiento{
    const palabraClave
    override method pensamientosAAsentarSegun(unaPersona) = unaPersona.recuerdosCon(palabraClave)
}
object asentamientoNormal inherits Asentamiento{

    override method pensamientosAAsentarSegun(unaPersona) = unaPersona.recuerdosDelDia()
}