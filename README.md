<div align="center">
  <h1>Trabalho de Programação Funcional em Haskell <br> - <br> João Davi Rigo Mazzarolo</h1>
  <p>Desenhos de padrões espirais modificados por parâmetros passados como argumentos.</p>
</div>

<br>

<div align="center">
  <img align="center" src="./tmp/output.svg" />
  <p>Exemplo de output gerado pelo comando/parâmetros: <br> <code>runhaskell Main.hs 150 160 255 230 230 255 600 8 3 10 > tmp/output.svg</code></p>
</div>

<div align="center">
  <h2>Como executar:</h2><br>
</div>

<div align="left">
  <p>- A ideia do programa é desenhar imagens que possuam padrões espirais utilizando-se de circulos em SVG, e obedecendo orientações dos parâmetros passados     pelo usuário.</p>

  <br>
  
  <p>- A passagem dos parâmetros seguem o padrão: <br>
    <div align="center">
      <br><code>runhaskell Main.hs &ltrB> &ltgB> &ltbB> &ltrS> &ltgS> &ltbS> &ltl> &ltvX> &ltvY> &ltr> > tmp/output.svg</code><br>
    </div>
    <br>Onde:<br>
    <br><code>&ltrB> &ltgB> &ltbB></code> Se referem aos valores RGB do plano de fundo da imagem.
    <br><code>&ltrS> &ltgS> &ltbS></code> Se referem aos valores RGB dos circulos que formarão a espiral.
    <br><code>&ltl></code> Se refere ao valor da largura da imagem (que será igual a altura, visto que é uma imagem quadrada).
    <br><code>&ltvX> &ltvY></code> Se referem a valores positivos que controlam a variação dos pontos da espiral em relação ao eixo X e Y, respectivamente.
    <br><code>&ltr></code> Se refere ao valor do raio dos círculos que formam a espiral.
  </p>
</div>

<br>

<div align="center">
  <img align="center" src="./tmp/output2.svg" />
  <p>Exemplo de output gerado pelo comando/parâmetros: <br> <code>runhaskell Main.hs 255 255 255 0 0 0 800 3 3 3 > tmp/output2.svg</code></p>
</div>

<div align="center">
  <h2>Créditos:</h2><br>
</div>

<div align="left">
  <p>
    <b>Base para criação das espirais:</b><br>
    <a href="https://pt.wikipedia.org/wiki/Espiral_de_Arquimedes">- Wikipédia - Espiral de Arquimedes</a><br>
    <a href="https://www.professores.uff.br/anamluz/wp-content/uploads/sites/36/2017/08/coordenadas_polares.pdf">- PDF - Curvas em Cordenadas Polares</a><br>
    <br><b>Como usar input e output em Haskell:</b><br>
    <a href="http://learnyouahaskell.com/input-and-output">- Learn You a Haskell for Great Good! - Input and Output</a><br>
    <br><b>Base da programação em Haskell e das funções para gerar imagens SVG:</b><br>
    - Aulas da Paradigmas de Programação com a Professora Andrea Schwertner Charão<br>
    <a href="https://github.com/AndreaInfUFSM/elc117-2022a">- Github da disciplina de Paradigmas de Programação</a><br>
  </p>
</div>
