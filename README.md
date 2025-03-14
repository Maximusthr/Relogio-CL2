# :pager::mantelpiece_clock: Projeto Relógio Digital

- ### [:dart: Objetivo](#dart-objetivo-1)
- ### [:gear: Como rodar](#gear-como-rodar-1)
- ### [:floppy_disk: Circuito Resultante](#floppy_disk-circuito-resultante-1)
- ### [:hourglass: Simulação](#hourglass-simulação-1)
- ### [:arrow_down: Baixar o projeto](https://github.com/Maximusthr/Relogio-CL2/archive/refs/heads/main.zip)

## Disciplina de Circuitos Lógicos II

Esse foi um projeto desenvolvido por discentes do curso de *Engenharia da Computação da Universidade Federal da Paraíba*, curso este que pertence ao *[Centro de Informática](http://ci.ufpb.br/)*, localizado na *[Rua dos Escoteiros S/N - Mangabeira - João Pessoa - Paraíba - Brasil](https://g.co/kgs/xobLzCE)*. O código desenvolvido em SystemVerilog foi avaliado por meio de simulações realizadas no Quartus, permitindo a verificação do funcionamento correto do projeto e a validação dos resultados esperados. 

### :control_knobs: Autores:

-  :link:  *[Arthur Maximus Cavalcante Beuttenmuller](https://github.com/Maximusthr)*
-  :link:  *[Lucas Henrique Vieira da Silva](https://github.com/hvslucas)*
-  :link:  *Luis Antônio Gadelha Pinheiro*
-  :link:  *[Marco Antonio de Vasconcelos Souza Filho](https://github.com/MarcoFilho1)*
-  :link:  *[Sabrina Xavier Almeida](https://github.com/sabrina78394)*

###  :control_knobs: Docente:

-  :link: *Verônica Maria*
<br>
<br>

[![the-persistence-of-memory-painting-by-salvador-dali-uhd-4k-wallpaper](https://github.com/user-attachments/assets/715ebe37-425e-419e-b586-2b50a09501f8)](#pagermantelpiece_clock-projeto-relógio-digital)

*"A Persistência da Memória"* – Salvador Dalí (1931)

## :dart: Objetivo:

O objetivo do projeto é projetar, implementar e simular um Relógio Digital[^1] em SystemVerilog[^2] que seja capaz de exibir horas, minutos e segundos em 6 displays de 7 segmentos. Para o desenvolvimento deste projeto, foi recomendado pela docente a utilização do software Quartus II.[^3] (Mais detalhes sobre a utilização do software em [Como rodar](#gear-como-rodar-1)). 

[^1]: O [Relógio Digital](https://www.newtoncbraga.com.br/como-funciona/3901-art532.html) é um tipo de [Relógio](https://pt.wikipedia.org/wiki/Rel%C3%B3gio), tecnologia desenvolvida pela humanidade que é essencial no dia a dia da sociedade moderna

[^2]: SystemVerilog é uma [linguagem de descrição e verificação de hardware](https://pt.wikipedia.org/wiki/Linguagem_de_descri%C3%A7%C3%A3o_de_hardware)

[^3]: Quartus uma plataforma completa da Intel para projetos de hardware. Permite a síntese, simulação e implementação de circuitos digitais.

### Metodologia Top-Down

A metodologia Top-Down[^4] é uma abordagem de design que começa com uma visão geral do sistema e, gradualmente, desce para níveis mais detalhados de implementação. Essa metodologia é comum em áreas como programação, gestão de projetos e engenharia de sistemas, promovendo organização e clareza.

[^4]: [Metodologia Top-Down](https://www.cpt.com.br/cursos-informatica-desenvolvimentodesoftwares/artigos/logica-de-programacao-top-down-modularizacao-estruturas-de-controle-confiabilidade-manutenibilidade-e-portugol)

### Definição das Especificações

 - Funcionalidade: Relógio digital
 - Entradas: Sinal de clock de 50MHz, Reset
 - Saídas: 6 x 7 saídas (6 displays de 7 segmentos)

O projeto deve implementar a seguinte arquitetura por modularização dos componentes:

![image](https://github.com/user-attachments/assets/37978377-b20d-4d5d-9322-a781308dbdd6)

## :gear: Como rodar

Para o desenvolvimento deste projeto, foi utilizado o Quartus II versão 13.0sp1, uma plataforma mantida pela Intel para projetos de hardware. Por isso, recomendamos a utilização dessa versão (ou superior) por oferecer a melhor compatibilidade com o código. O download do software pode ser encontrado em: [**Download**](https://www.intel.com/content/www/us/en/software-kit/711791/intel-quartus-ii-web-edition-design-software-version-13-0sp1-for-windows.html)

[**Atenção:** Lembre de baixar o projeto e extraí-lo devidamente do `.zip`.](#pagermantelpiece_clock-projeto-relógio-digital)

- **1 Abrir o Quartus II e Iniciar projeto:**

  - Inicie o Quartus II no seu computador.

  - Criar um Novo Projeto:
    - No menu principal, vá em `File` > `New Project Wizard`
    - Siga as instruções do assistente para criar um novo projeto.
    - Defina o diretório do projeto, **Recomendamos que crie uma pasta com o nome `"ULA"`**
    - **!** Defina o nome do projeto como **`"ULA"`**
    - **!** Defina o dispositivo FPGA como **`"Cyclone II"`** (`Device family` >  `Family`)

- **2 Adicionar o código da ULA:**
  - Após criar o projeto, adicionar o arquivo **`ULA.sv`**:
    - Vá em `Project` > `Add/Remove Files in Project`
    - Clique em `...` ao lado do campo `File name` para navegar até o local do arquivo **`ULA.sv`**
    - Selecione o arquivo **`ULA.sv`** e clique em `Abrir` e depois em `Add`
    - Certifique-se de que o arquivo está marcado para ser incluído no projeto e clique em `Apply` e depois em `Okay`

- **3 Simular**
  - Executar a compilação:
    - No **Painel Superior de Opções** procure pelo ícone de *play* descrito como `Start Compilation`
      - Ou, `Processing` > `Start Analysis & Synthesis`

    - Importar a Simulação com entradas estabelecidas:
      - Vá em `Project` > `Add/Remove Files in Project`
      - Clique em `...` ao lado do campo `File name` para navegar até o local do arquivo `Waveform.vwf`
      - **!** O arquivo desejado possivelmente não irá aparecer, acima do botão `Abrir` terá a opção de tipo de arquivo, selecione `All Files (*)`
      - Selecione o arquivo `Waveform.vwf` e clique em `Abrir` e depois em `Add`
      - Certifique-se de que o arquivo está marcado para ser incluído no projeto e clique em `Apply` e depois em `Okay`
     
    - Executar:
      - Na ferramenta de simulação, clique em `Simulation` > `Run Functional Simulation` ou no **Painel Superior de Opções** ícone na para iniciar a simulação
     
    - Alterar valores de entrada:
      - É possível alterar os valores dos operandos na ferramenta de simulação utilizando as opções do **Painel Superior de Opções** (opções ao lado do botão de rodar a simulação)
      - A opção com um R, `Random Values`, estabelece valores aleatórios ao longo do intervalo estabelecido
      - Após associar os valores arbitrários, basta executar o passo de execução

## :floppy_disk: Circuito Resultante

O circuito abaixo pode ser acessado após a compilação do código:
- `Tools`> `Netlist Viewers` > `RTL Viewer`

## :hourglass: Simulação

