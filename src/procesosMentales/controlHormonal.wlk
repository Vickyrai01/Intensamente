/*
Control hormonal: si se detecta que un pensamiento central 
está también en la memoria a largo plazo, o si todos los recuerdos 
del día presentan la misma emoción dominante, se produce un desequilibrio hormonal. 
Esto consiste en que el nivel de felicidad disminuye en un 15% 
y se pierden los tres pensamientos centrales más antiguos. 
*/
object controlHormonal{
    method afectarA(unaPersona) {
        if(unaPersona.estaDesequilibrada()){
            unaPersona.tenerDesequilibrioHormonal()
        }
    }
}