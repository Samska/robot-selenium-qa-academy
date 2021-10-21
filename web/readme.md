Boas práticas

//Ajuda
robot -help

//Navegar até um caminho
cd caminho

//Executa um test case específico utilizando tag para identificar o mesmo
robot -d ./log -i nomedatag nomedoarquivo.robot

//Executa individualmente um arquivo robot guardando o log na pasta respectiva
robot -d ./log nomedoarquivo.robot

//Executa todos testes dentro da pasta tests
robot -d ./log nomedapasta\

//Executa um test case específico em uma pasta utilizando tag para identificar o mesmo
robot -d ./log -i nomedatag nomedapasta\