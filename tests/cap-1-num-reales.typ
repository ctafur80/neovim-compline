


Al igual que sucede con la mayoría de las referencias, en el texto base
(@pineda-analisis) no se llegará a construir el conjunto de los números
reales, $bb(R)$, aunque sí que se ve en mayor profundidad que en la mayoría.
Si está interesado en la construcción de $bb(R)$, puede consultar el
capítulo 6 de @pineda-leng[p.~207], el texto de la asignatura Lenguaje
Matemático, Conjuntos y Números. De hecho, gran parte del contenido del
primer capítulo de @pineda-analisis se puede consultar en dicho texto.

En lo que respecta a la definición de _cuerpo_ (_field_) en
@pineda-analisis[p.~7], aunque es evidente, me gustaría recalcar que los
elementos $0$, $1$, $-a$ y $a^(-1)$ pertenecen a $bb(K)$, ya que creo que se
dice de modo implícito.

También, en ese mismo texto, es de destacar que, entre las propiedades de
_cuerpo_ la propiedad distributiva (la 9) se da solo del producto respecto a
la suma; al revés no tiene por qué darse necesariamente. Independientemente
de esto, también se cumpliría en el otro orden, es decir, intercambiando los
operandos de ese producto, ya que se cumple la propiedad conmutativa del
producto.

Las explicaciones de los conjuntos numéricos en @pineda-analisis[p.~8--10]
vienen explicadas en mayor detalle en @pineda-leng, en los
capítulos 5, 6 y 7.

En concreto, al definir los números racionales, $bb(Q)$, algo que tiene que
tener en cuenta es que hay textos que los definen sobre $bb(Z) times bb(N)$
(para el convenio de admitir que $bb(N)$ es ${1, 2, 3, ...}$), en lugar de
sobre $bb(Z) times bb(Z) - {0}$. En el fondo, se puede de cualquiera de las
dos formas, pero cada una tendrá sus particularidades del caso que use.

Tal y como se explica en las páginas 8 y 9, aunque en principio los
conjuntos $bb(N)$, $bb(Z)$, $bb(Q)$, etc. sean de naturaleza distinta, y,
por tanto, disjuntos entre sí, a efectos prácticos es como si unos fuesen
subconjuntos de otros; en concreto,

$ bb(N) subset.eq bb(Z) subset.eq bb(Q) subset.eq bb(R) subset.eq bb(C) $

Esto se debe a que existen isomorfismos entre la de la izquierda de
$subset.eq$ y una subestructura de la de la derecha de dicho símbolo. En
cierto modo, esos isomorfismos hace que sean "iguales" a efectos prácticos.

Advierta que a partir de la página 9 pasan a usar una notación más laxa de
las estructuras algebraicas. En lugar de usar la notación de las $n$-tuplas,
directamente omiten las comas, manteniendo un espaciado entre las partes.
Así, por ejemplo, en lugar de '$(bb(N), +, dot.op)$' se usa '$(bb(N) "" + ""
dot.op)$'.

Aunque no lo expliquen, se debe tener en cuenta que la representación de los
números racionales, $bb(Q)$, no está en una relación uno a uno con estos.
TKTK. Es decir, por ejemplo, $1 \/ 2$ y $2 \/ 4$ son representaciones
diferentes del mismo número racional. Lo que sí que existe es una única
fracción irreducible, que podría usarse como representante de clase. TKTK.

Prop. 10. La demostración del punto 10 en pág. 10 se puede encontrar en el
ejemplo A.1 en _Number Theory_ de Rosen (pág. 605), o una diferente en
@lebl-ra[p.~25].

En estas proposiciones yo habría incluido también la de que los elementos
neutros, tanto de la suma como del producto (en todo cuerpo), son únicos
siempre.


// En realidad, en cualquier operación (ley de composición interna) la
// propiedad de cierre (_closure_) es conmutativa, ya que, como el dominio
// es $F times F$, TKTK.

Prop 11 (no hay divisores de $0$). A partir de la propiedad 10, es decir, $0
= 0 x$, se tiene que

$ x y = 0 quad arrow.l.r.double.long quad x = 0 med "o" y = 0 $

que es la propiedad 11. No estoy seguro de si esta demostración sirve. TKTK.
Quizás, mejor:

$ x y         &= 0 = 0 y \
  x y y^(-1)  &= 0 y y^(-1) \
  x dot.op 1  &= 0 dot.op 1 = 0 \
  x           &= 0 $

Hemos usado la propiedad 10, y también hemos supuesto que $y != 0$ para
poder usar $y^(-1)$. Lo mismo se podría hacer por el otro lado, con lo que,
si $x != 0$, se tendría que $y = 0$. Solo quedaría analizar el caso en el
que $x$ e $y$ sean $0$. En ese caso, bastaría con sustituir en la propiedad
10 y se tendría que también se cumple.

Prop. 12 (propiedad cancelativa en $(bb(K) dot.op)$). Se basa también en la
anterior (la 11). Por hipótesis, se tiene que $x != 0$. Gracias a esto, se
tiene elemento simétrico del producto de $x$, que será $x^(-1)$ tal que $x
x^(-1) = x^(-1) x = 1$ siendo $1$ el elemento neutro del producto.

Ahora, sabiendo esto, operemos.

$ x y       &= x z \
  x y - x z &= x z - x z = 0 \
  x (y - z) &= 0 $

Como $x != 0$, al aplicar la propiedad 11 se tiene que $y - z = 0$.
Operando esto, tenemos:

$ y - z         &= 0 \
  (y - z) + z   &= 0 + z = z \
  z             &= y + (-z + z) = y + 0 = y $

/* ¿Se podría demostrar sin hacer uso de la suma? Lo digo porque la llaman
la cancelativa de $(bb(K) dot.op)$. */

Prop. 14. Primero se quitan paréntesis a la izquierda. Luego, se quitan los
parántesis que aparecen en la nueva expresión. Además, podemos reordenar los
productos y las sumas, por cumplirse las propiedades asociativas y
conmutativas de estas dos operaciones.

Quizás le resulte extraño que en @pineda-analisis[p.~10] (Definición 1.2)
definan _conjunto ordenado_ (_ordered set_) de modo distinto a como se hace
en la asignatura Lenguaje Matemático, Conjuntos y Números, o en el libro
@pineda-leng. No es que se trate de un error en alguno de los textos, sino
que existen convenciones distintas en según qué áreas de las matemáticas.

De hecho, lo normal en análisis matemático es llamar _orden parcial_
(_partial order_) a una relación de orden. Si se trata de un orden total, lo
llamarán _orden_ a secas.

De hecho, a veces es más extraña la terminología, como sucede en el capítulo
1 de @lebl-ra. En este, un conjunto ordenado es un conjunto junto con un
orden total estricto. Además, lo definen de un modo distinto, aunque
equivalente, al que estamos acostumbrados. Concretamente, las condiciones
son aquí la tricotomía y la transitividad. Se puede demostrar que la
tricotomía es equivalente a la irreflexividad, la antisimetría y que el
orden estricto es total.

Además del concepto de _conjunto ordenado_, se presenta el de _cuerpo
ordenado_ (_ordered field_), ya que se ha definido el concepto de _cuerpo_
(_field_). Simplemente, se dan unas condiciones para que las dos operaciones
del cuerpo sean compatibles con el orden. Estas condiciones pueden variar
según el texto, aunque se termina teniendo lo mismo, es decir, las
condiciones de uno serán proposiciones (deducibles) en otro y viceversa.

Las diferencias en la terminología se debe a que en el álgebra abstracta se
suelen estudiar preórdenes, en general, mientras que el análisis matemático
se centra en estudiar la estructura algebraica de los números reales,
$b(R)$.


