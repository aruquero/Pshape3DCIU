# Sólido de revolución readme

![N|Solid](https://i.gyazo.com/d61402be1a685336604a29c451010d89.png)
# Indice

  - Introducción
  - La aplicación
  - Decisiones de diseño
  - Tutorial
  - Gif sobre el funcionamiento

# Informe

**Introducción**:

En esta primera entrega nos hemos sentado en la creación de nuestro primer proyecto en “processing”, el clásico juego pong. Este ha sido un primer acercamiento a para coger familiaridad y soltura con el lenguaje.
En esta segunda entrega nos hemos centrado en la creación de nuestro segundo proyecto en "processing", un sólido de revolución. Este ha sido un segundo acercamiento para tener un primer contacto con las figuras PShape3d.

**La aplicación**:

Nuestra aplicación se fundamenta en dibujar un área 2d, en función de una sucesión de puntos clickados con el ratón. Dichos puntos se unen para formar una zona en nuestra ventana de aplicación. A continuación, tras finalizar nuestra selección de puntos, procedemos a la siguiente fase del programa, la representación en 3 dimensiones.
![N|Solid](https://user-images.githubusercontent.com/55792571/109482104-80775a80-7a75-11eb-8576-349de6e3b9f5.png)

En esta segunda fase deberemos pulsar la tecla "p" para realizar el cambio de nuestra vista bidimensional a la representación tridimensional. En esta nueva vista tendremos la posibilidad de mover la figura en los ejes "x" e "y", es decir, tanto vertical como horizontalmente. En esta vista también podremos pulsar la tecla "r" para reiniciar la aplicación y así poder introducir una nueva figura.

![N|Solid](https://i.gyazo.com/5d182f2f47569d5c9ae6416f9b49fd6c.png)

**Decisiones de diseño**:

Se ha decidido usar el eje izquierdo de la pantalla como eje de revolución para así evitar dudas o incertidumbres en un usuario. Al usar este borde como eje también nos ahorramos posibles fallos a la hora de clickar o tener que reajustar posibles puntos fuera de la zona de revolución.

**Tutorial**

Como podemos ver en la captura inferior, el funcionamiento se fundamenta en 3 estados de la aplicación. Primera instancia, pantalla de inicio, como podemos ver en la imagen situada a continuación. Segundo estado, estado de bibujar, en este estado iremos clickando en la pantalla para ir señalando los puntos de nuestra área a revolucionar, posteriormente al pulsar la tecla "p" avanzaremos al siguiente estado. Tercer y último estado, el solido con la revolución sobre el eje de revolución. 

![N|Solid](https://i.gyazo.com/e4ec0087f56b7278c5e105f317f1044f.png)

**Gif sobre el funcionamiento**

![Alt Text](https://gyazo.com/2fde8e873a7ced4e5bfc09b75850d90b.gif)
