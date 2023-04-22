# Planteamiento del problema

## Diseño de banco de filtros para una señal de audio

Actualmente, las muestras de sonido se suelen almacenar en formato codificados
(mp3, ogg, flac entre otros) en el que la información está codificada para que
ocupen el menor espacio posible. Con el fin de poder manipular señales de
audio, el primer paso consiste en descomprimir los ficheros de dichos formatos
y convertirlos a un formato raw (donde cada dato representa una muestra en el
tiempo). El formato de audio más cercano a información raw es el formato wav
con codificación PCM. Ya que sólo incluye una cabecera con información como el
número de canales y la frecuencia de muestreo y a continuación los datos sin
tratar en bloques denominados chunks. Octave incluye la función llamada
audioread (wavread en versiones anteriores) que lee los ficheros en formato wav
los despoja de estas cabeceras y otros metadatos.

Para este proyecto necesitará realizar una grabación con su voz e introducirla
en Octave, de la forma indicada anteriormente. Tenga en cuenta la frecuencia de
muestreo que se utiliza. Si la frecuencia de muestreo es elevada, realice un
diezmado de la señal de voz hasta acercar la frecuencia de muestreo a unos
8kHz. Implemente los mecanismos necesarios para evitar efectos de aliasing.

Posteriormente, se busca diseñar y aplicar un banco de filtros como ecualizador
a la señal grabada. Cada filtro del banco estará asociado a un rango de
frecuencias, y mediante una ganancia determinada se amplificará o atenuará cada
rango de frecuencias.

# Ejecutar la solución

Hay que lanzar el script `buildFilterAndPlay`, con el audio de entrada en la
raíz del directorio en formato WAV con el nombre `music.wav`. El resultado se
escribirá en el archivo `music_with_eq.wav`.
