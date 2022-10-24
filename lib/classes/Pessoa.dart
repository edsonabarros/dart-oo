class Pessoa {
  String _nome = ""; // underline significa private
  String _endereco = "";

  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  String getNome() {
    return _nome;
  }

  Pessoa(String nome, String endereco) {
    _nome = nome;
    _endereco = endereco;
  }

  @override
  String toString() {
    // TODO: implement toString
    return {"Nome": _nome, "Endereço": _endereco}.toString();
  }
}
