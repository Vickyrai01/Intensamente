
import alegria.alegria
class EmocionCompuesta{
    const emociones = #{}

    method negar(unRecuerdo) {
      emociones.all({unaEmocion => unaEmocion.negar(unRecuerdo)})
    }
    method esAlegre() = emociones.contains(alegria)

    method asentarEn(unaPersona, unRecuerdo){
      emociones.forEach({unaEmocion => unaEmocion.asentarEn(unaPersona ,unRecuerdo)})
    }
}
