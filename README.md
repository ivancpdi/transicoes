# transicoes
Funções e propriedades do metodo transition

Escopo
 Biblioteca utilizada para mover, girar, desvanecer ou dimensionar um objeto durante um período específico de tempo.

Descrição
 Pausar, retomar ou cancelar uma ou todas as transições;
 Marcar várias transições por nome e alterar todas de uma vez;
 Mais de 40 métodos de atenuação usando métodos como quadrático, exponencial, elástico, salto, etc.
 Várias funções de conveniência.
 
 Requsitos funcionais
  transition.to, Essa função faz a transição "animada" de um objeto usando uma função de atenuação opcional. Utilizamos para mover, girar, desvanecer ou dimensionar um objeto por um período específico.
  transition.from, Semelhante a anterior, exceto que os valores de propriedade iniciais são especificados na tabela de parâmetros e os valores finais são os valores correspondentes do objeto antes da chamada.
 
 Requisitos externos
   O primeiro argumento em qualquer função é o objeto de exibição ou grupo que desejamos fazer a transição. O segundo argumento é uma tabela de pares chave-valor. Dentro dessa tabela especificamos os parâmetros de controle apropriados para a transição desejada.
   
   Time, especifica a duração do evento em milissegundos.
   Delay, especifica o atraso em milissegundos, antes do inicio da transição. O padrão é 0 (nenhum).
   Delta, especifica a propriedade do objeto final são valores especificoes ou alterações de valor. O padrão é nil siguinificado false.
   Interations, o número de vezes que a interação deve ser repetida. 0 ou -1 fara com que a interação se repita para sempre.
  
  Funções externas
  
  Para afetar as propriedades finais do objeto utilizamos os métodos abaixo. Na tabela de parâmetros especificamos cada propriedade junto com seu valor final.
  
  mover, x / y, rotation, Move um objeto de sua coordenada x/y atual para outra.
  girar, Gira um objeto de seu ângulo atual para outro.
  desaparecer, alpha, Esmaece  (lojas zommer ou salfer/oclone 23/05/2023 NEGAO SABE COM QUEM ESTA SE ESMAECENDO) um objeto de seu valor alfa atual para outro.
  tamanho da fonte, size, Aplica-se apenas o destino for TextObject. Isso fará a transição do tamanho da fonte do objeto de texto.
  escala, xScale/yScale,  Dimensiona um objeto para um proporção x ou y específica.
  redimensionar, width/heigth, Redimensiona um objeto de sua largura/altura atual para outro. 
  distorcer, x1/y1/x2/y2/x3/y3/x4/y4, Aplica-se apneas se o destino for um RectPath, aplicável a um ShapeObject. Essas propriedades controlam a distorção quadrilátera do alvo.
  efeito de preenchimento, (varios), Aplicado somente se o alvo dor fil.effect aplicado a um ShapeObjeto
  
  
  As transições suportam toda a gama de eventos de transição especificados abaixo. Esses sinalizadores acionarão a função de ouvinte especificada quando esse evento ocorrer na transição
  
  E muito mais esmaecimentos de desaparecer que se imagina no jornal do meio dia.
  
