/*caso base, onde so tem 1 disco. Mover de ORIGEM para DESTINO*/

/*caso recursivo: para transferir n discos de ORIGEM para destino, e feito o seguinte:
   a) transfira os primeiros n-1 discos para algum outro pino de ORIGEM 
   b) mova o ultimo disco de ORIGEM para DESTINO
   c) transfira os n-1 disco da nova ORIGEM para o DESTINO
         
*/

mover(1, ORIGEM, DESTINO, _) :- 
   write(ORIGEM),  
   write(' -> '), 
   write(DESTINO), nl.

mover(N, ORIGEM, DESTINO, MEIO) :- 
   N > 1, 
   M is N-1, 
   mover(M,ORIGEM, MEIO, DESTINO), 
   mover(1, ORIGEM, DESTINO,_), 
   mover(M, MEIO, DESTINO, ORIGEM).

/*como executar:
  a) digite swipl no terminal
  b) navegue ate a pasta do programa .pl
  c) digite no terminal $ ?- [programa]
  d) digite mover(3, "origem", "destino", "meio").
*/
