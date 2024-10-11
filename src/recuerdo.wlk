
import src.emociones.alegria.alegria
class Recuerdo{
  const descripcion
  const fecha
  const emocionDominante

  method esDificilDeExplicar() = descripcion.words() > 10

  method esAlegre() = self.esDe(alegria)

  method esDe(unaEmocion) = emocionDominante == unaEmocion 

  method tiene(palabraClave) = descripcion.contains(palabraClave)

  method antiguedad()

  method esMasAntiguoQue(unaEdad) = self.edadDelRecuerdo() > unaEdad

  method edadDelRecuerdo() = new Date() - fecha.year()
}