programa
{
	inclua biblioteca Util --> u
	// Jogo da velha
	// Define as dimensões (linhas e colunas) da matriz
	const inteiro TAMANHO = 3
	
	// Cria a matriz
	caracter tabuleiro[TAMANHO][TAMANHO] 

	inteiro turno = 0 // ou 1
	
	inteiro opcao = 1
	logico programaLigado = opcao == 1

	cadeia jogadores[2]
	logico jogadoresCadastrados = falso

	inteiro movimentos[9]
	inteiro contaDosMovimentos = 0


	const cadeia MENSAGEM_CONTINUAR_PROGRAMA = "\n\nDeseja continuar jogando?\nDigite 1 para SIM e 2 para NÃO.\n"
	const cadeia MENSAGEM_OPCAO_INVALIDA = "\n Opção inválida\n\n"
	const cadeia MENSAGEM_NOME = "Informe o nome da pessoa:\n"
	
	
	funcao inicio()
	{
		enquanto(programaLigado) {
			se(jogadoresCadastrados == falso) {
				cadastrarJogadores()
				mostrarMensagemDeBoasVindas()
				
			}
			
			desenharTabuleiro()
			mostrarMensagemDeMovimentoJogador()
			
			verificarSeDevePermanecerLigado()
			
		}
		
	}

	funcao menu() {
		inteiro opcaoMenu = 0
		escreva("1-Cadastrar Jogadores\n2-Cadastrar Idades \n3-Imprimir Dados\n4-Alterar entrada\n5-Sair\n")
		leia(opcaoMenu)
		escolha(opcaoMenu) {
			caso 1: {
				cadastrarJogadores()
				pare
			}
			
			caso contrario: {
				menu()
			}
		}
	}

	funcao cadastrarJogadores() {
		
		cadeia nomeJogador0 = ""
		
		enquanto(nomeJogador0 == "") {
			escreva("Quem vai ser 0 ?\n" + MENSAGEM_NOME)
			leia(nomeJogador0)
		}

		jogadores[0] = nomeJogador0
		cadeia nomeJogadorX = ""

		enquanto(nomeJogadorX == "") {
			escreva("Quem vai ser X ?\n" + MENSAGEM_NOME)
			leia(nomeJogadorX)
		}
		// registra o primeiro jogador
		jogadores[1] = nomeJogadorX
		
		jogadoresCadastrados = verdadeiro
		
	}

	funcao lerInputDoJogador() {
		inteiro input = 0
		
		
	}

	funcao mostrarMensagemDeBoasVindas() {
		escreva("\nBem-Vindos! " + jogadores[0] + " e " + jogadores[1] + "! \n")
		escreva("Vamos jogar Jogo da Velha!\n")
		escreva(jogadores[0] + " Vai começar! ")
	}

	funcao mostrarMensagemDeMovimentoJogador() {
		escreva( "\nPor favor, " + jogadores[turno] + " escolha um número disponível!\n ")
	}
	

	funcao desenharTabuleiro() {
		
		escreva("\n\n....Jogo da velha....\n\n")
		escreva("\n\n\n")
		
		para (inteiro linha = 0; linha < u.numero_linhas(tabuleiro); linha++)
		{
			escreva("\t")
			para (inteiro coluna = 0; coluna < u.numero_colunas(tabuleiro); coluna++)
			{
				
				caracter movimento = tabuleiro[linha][coluna]
				
				se(movimento == 'X' ou movimento == 'O') {
					escreva("|_", tabuleiro[linha][coluna], "_|\n")
				} senao {
					
					inteiro botao = ((coluna + linha) + 1) + linha
					escreva("|_",  botao, " _|")
				}
			}
			
			escreva("\n")
		}
		
	}

	funcao verificarSeDevePermanecerLigado() {
		escreva(MENSAGEM_CONTINUAR_PROGRAMA)
		leia(opcao)
		
		enquanto((opcao != 1) e (opcao != 2)) {
			escreva(MENSAGEM_OPCAO_INVALIDA)
			
			escreva(MENSAGEM_CONTINUAR_PROGRAMA)
			leia(opcao)
		}
		programaLigado = opcao == 1 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1798; 
 * @DOBRAMENTO-CODIGO = [45, 61, 128];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */