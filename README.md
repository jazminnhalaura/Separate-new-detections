# verbose-octo-doodle


Script SepDets.sh : toma de entrada el archivo DetectedFinal_all y da como salida newdets.dat, templatedets.dat y weirdcoef.log

DetectedFinal_all: Catálogo con todas las detecciones
newdets.dat: Detecciones eliminando las dobles detecciones de las templates
templatedets.dat: Detecciones dobles donde la template se detectó a sí misma
weirdcoef.log: Archivo que almacena las detecciones de las templates que muestran un coeficiente menor a 0.9

Script SepDets.sh: takes DetectedFinal_all as an input and generates newdets.dat, templatedets.dat and weirdcoef.log as outputs

DetectedFinal_all: catalog containing all of the detections 
newdets.dat: all of the detections after removing those in which the template detected itself
templatedets.dat: detections in which the template detected itself
weirdcoef.log: file containing the template detections with a coefficient lower than 0.9.


#12may2021

uploaded selectmad.sh 

selectmad.sh: script that take newdets.dat as input and gives as it is two outputs: dets_MAD20 and dets_MAD25

dets_MAD20: data file containing just detections with MAD value of 20 or above
dets_MAD25: data file containing just detectios with MAD values of 25 or above

These MAD values can be changed by modifying this parameter in the code. 
