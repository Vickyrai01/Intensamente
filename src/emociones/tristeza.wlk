object tristeza{
  method asentarEn(unaPersona, unRecuerdo){
    unaPersona.agregarAPensamientosCentrales(unRecuerdo)
    unaPersona.disminuirFelicidadEn(0.1)
  }

  method negar(unRecuerdo) {
    unRecuerdo.esAlegre()
  }
}