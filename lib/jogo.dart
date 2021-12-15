import 'package:cena/cena.dart';

class Jogo {
  final List<Cena> _cenas = [
    Cena("Ao se deparar com uma vida rotineira...", [
      "Eu me sinto como um robô.",
      "Me sinto seguro e satisfeito.",
      "Eu não conheço a rotina."
    ], [
      2,
      3
    ]),
    Cena(
        "Você está andando casualmente por um shopping, e encontra um item interessante à venda em uma das vitrines. Você fica pensando se deveria ou não comprá-lo. A primeira coisa que você faz nesta situação é?",
        [
          "Pensar se você precisa disso ou não.",
          "Checar o preço.",
          "Comprar sem pensar!"
        ],
        [
          2,
          3
        ]),
    Cena("Você _________________ competir com outras pessoas.",
        ["não liga de", "não gosta de", "não tem interesse em"], [2, 3]),
    Cena(
        "Você é responsável por um serviço que exige que você trabalhe em equipe com muitas pessoas. Se você cuidar disso sozinho, levará mais tempo e esforço, mas você pode fazer do seu jeito. Se você fizer o trabalho em equipe, como esperado, será uma tarefa mais simples e rápida. Sua escolha é...",
        ["Fazer sozinho, mesmo que seja mais complicado.", "Fazer em equipe."],
        [2, 3]),
    Cena(
        "Ao andar na rua calmamente, você encontra uma moça desmaiada no chão. O que você faz?",
        [
          "Eu a levo para o hospital.",
          "Vejo se tenho alguma outra prioridade.",
          "Ignoro."
        ],
        [
          2,
          3
        ]),
    Cena(
        "Você achou um item não identificado que parece ser algum tipo de vestimenta. O que você faz?",
        [
          "Checo que tipo de item é.",
          "Me pergunto se alguém o perdeu?",
          "Oba, sorte grande!",
          "Deixo onde está."
        ],
        [
          2,
          3
        ]),
    Cena(
        "Durante um jantar social, você comete uma gafe no meio da conversa. Como você conserta a situação?",
        [
          "Finjo que era uma piada.",
          "Mudo de assunto.",
          "Analiso o que falei.",
          "Peço desculpas sinceras."
        ],
        [
          2,
          3
        ]),
    Cena(
        "Você está viajando com sua pessoa amada. Ela pede que você compre pra ele um souvenir especialmente inútil. O que você faz?",
        [
          "Compro e dou de presente a ela.",
          "Me recuso a comprar.",
          "Deixo para uma outra hora."
        ],
        [
          2,
          3
        ]),
  ];
  int _cenaAtual = 0;

  String getDescricaoCena() {
    return _cenas[_cenaAtual].descricaoCena;
  }

  List<String> getAcoesCena() {
    return _cenas[_cenaAtual].acoesDisponiveis;
  }

  void reiniciaJogo() {
    _cenaAtual = 0;
  }

  void nextCena(int cena) {
    _cenaAtual = cena;
  }
}
