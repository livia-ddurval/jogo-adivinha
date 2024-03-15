import 'dart:io';
import 'dart:math';

void main() {
  final int tentativasRestantes = 5;
  final int numeroLimite = 100;

  print("Adivinhe o número secreto entre 0 e $numeroLimite:");

  final int numeroSecreto = Random().nextInt(numeroLimite + 1);

  int tentativasFeitas = 0;

  while (tentativasFeitas < tentativasRestantes) {
    print("Tentativa ${tentativasFeitas + 1}:");
    int chute = int.parse(stdin.readLineSync()!);

    if (chute < numeroSecreto) {
      print("O número secreto é maior.");
    } else if (chute > numeroSecreto) {
      print("O número secreto é menor.");
    } else {
      print("Parabéns! Você acertou o número secreto!");
      return;
    }

    tentativasFeitas++;

    if (tentativasFeitas == tentativasRestantes) {
      print("Você perdeu! O número secreto era $numeroSecreto.");
    }
  }
}
