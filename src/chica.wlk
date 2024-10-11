
class Chica{
  var felicidad
  var emocionDominante
  var edad
  const recuerdosDelDia = #{}
  const pensamintosCentrales = #{}
  const procesosMentales = #{}
  const memoriaALargoPlazo = #{}
  var pensamientoActual

  method recuerdosDelDia() = recuerdosDelDia 

  method vivirEvento(unRecuerdo) {recuerdosDelDia.add(unRecuerdo)}

  method asentar(unRecuerdo) {
    emocionDominante.asentarEn(self, unRecuerdo)
  }

  method nivelDeAlegriaMayorA(unaCantidad) = felicidad > unaCantidad 
  method agregarAPensamientosCentrales(unRecuerdo){
    pensamintosCentrales.add(unRecuerdo)
  }

  method disminuirFelicidadEn(unaCantidad){
    felicidad - felicidad * unaCantidad
    if(felicidad < 0){
      throw new FelicidadMenorA0exception(message = "La felicidad no puede ser menor a 0")
    }
    } 

  method recuerdosRecientes() = recuerdosDelDia.take(5)
  method pensamintosCentralesDificiles() = pensamintosCentrales.filter({unRecuerdo => unRecuerdo.esDificilDeExplicar()})  
  method negarRecuerdoDesagradable(unRecuerdo) {
    emocionDominante.negar(unRecuerdo)
  }
  method dormir() {
    procesosMentales.forEach({unProceso => unProceso.afectarA(self)})
  }
  method asentarVarios(recuerdos) {
    recuerdos.forEach({unRecuerdo => self.asentar(unRecuerdo)})
  }
  method recuerdosCon(palabraClave){
    recuerdosDelDia.filter({unRecuerdo => unRecuerdo.tiene(palabraClave)})
  }
  method profundizarRecuerdos() {
    memoriaALargoPlazo.addAll(self.recuerdosPocoImportantes())
  }
  method recuerdosPocoImportantes() = recuerdosDelDia.difference(pensamintosCentrales)

  method estaDesequilibrada() = self.pensamientosCentralesEnMemoriaALargoPlazo() || self.todosLosRecuerdosDeUnaEmocion()

  method pensamientosCentralesEnMemoriaALargoPlazo() = pensamintosCentrales.any({unPensamiento => memoriaALargoPlazo.contains(unPensamiento)})
  method todosLosRecuerdosDeUnaEmocion() = recuerdosDelDia.all({unRecuerdo => unRecuerdo.esDe(emocionDominante)})

  method tenerDesequilibrioHormonal() {
      self.disminuirFelicidadEn(0.15)
      self.perderUltimosPensamientosCentrales()
  }
  method perderUltimosPensamientosCentrales() {
    pensamintosCentrales.remove(self.pensamientosMasAntiguos().take(3))
  }
  //no me salio
  method pensamientosMasAntiguos() = pensamintosCentrales.sortedBy({unPensamiento => unPensamiento.antiguedad()}) 

  method restaurarFelicidad(){
    (felicidad + 100).min(1000)
  }

  method liberarRecuerdosDelDia() {
    recuerdosDelDia.clear()
  }

  method rememorar() {
    pensamientoActual = self.pensamientosAntiguos().anyOne()
  }

  method pensamientosAntiguos() = memoriaALargoPlazo.filter({unPensamiento => unPensamiento.esMasAntiguoQue(edad.div(2))}) 

  method cantidadDeRepeticionesDe(recuerdo) = memoriaALargoPlazo.count({unRecuerdo => unRecuerdo == recuerdo}) 

  method tieneUnDejaVu() {
    return memoriaALargoPlazo.contains(pensamientoActual)
  }
}

class FelicidadMenorA0exception inherits Exception{}