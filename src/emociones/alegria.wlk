object alegria{
  method asentarEn(unaPersona, unRecuerdo){
    if(unaPersona.nivelDeAlegriaMayorA(500)){
      unaPersona.agregarAPensamientosCentrales(unRecuerdo)
    }
  }

  method negar(unRecuerdo) {
    !unRecuerdo.esAlegre()
  }
}