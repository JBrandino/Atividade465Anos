class Horarios {
  final DateTime horarios;
  final String servicos;
  final int precos_servicos;

  Horarios(this.horarios, this.servicos, this.precos_servicos);

  void localizarPorto() {}

  DateTime verificaHoras() {
    DateTime now = DateTime.now();
    var currentTime =
        DateTime(now.year, now.month, now.day, now.hour, now.minute);

    return currentTime;
  }

  DateTime servicosFuncionando() {
    DateTime now = DateTime.now();
    var currentTime =
        DateTime(now.year, now.month, now.day, now.hour, now.minute);

    return currentTime;
  }
}
