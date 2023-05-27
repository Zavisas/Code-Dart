import 'dart:math';

void main() {
  int volantes = 10;
  int qttNum = 7;

  Map<String, List<int>> cartelas = new Map();
  Set<int> numeros = new Set();

  for (int i = 0; i < volantes; i++) {
    numeros.clear();

    while (numeros.length < qttNum) numeros.add(Random().nextInt(60) + 1);

    List<int> numOrd = numeros.toList();
    numOrd.sort();

    cartelas["cartela${i + 1}"] = numOrd;
  }
  for (int i = 1; i <= 10; i++) {
    print("Cartela $i = ${cartelas["cartela$i"]}");
  }
}
