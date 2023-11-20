import 'package:bridge/bridge.dart' as bridge;

void main(List<String> arguments) {
  ClienteJuridico clienteJuridico = ClienteJuridico("Rua 13", "46 1234-5678",
      "emaildoclientejuridico@hotmail.com", "12.5433.5566/1234-01");

  ClienteFisico clienteFisico = ClienteFisico("Rua 22", "24 4321-8765",
      "emaildoclienteFisico@hotmail.com", "123.456.789-02");

  print("Cliente Fisico");
  print(clienteFisico._email);
  print(clienteFisico._endereco);
  print(clienteFisico._telefone);
  print(clienteFisico._numeroCpf);
  print("\n");
  print("Cliente Juridico");
  print(clienteJuridico._email);
  print(clienteJuridico._endereco);
  print(clienteJuridico._telefone);
  print(clienteJuridico._numeroCnpj);
}

class Cliente {
  String _endereco = "";
  String _telefone = "";
  String _email = "";

  Cliente(String endereco, String telefone, String email) {
    _endereco = endereco;
    _telefone = telefone;
    _email = email;
  }
  // Getter e setter dos atributos
  String get endereco => _endereco;
  set endereco(String novoEndereco) {
    _endereco = novoEndereco;
  }

  String get telefone => _telefone;
  set telefone(String novoTelefone) {
    _telefone = novoTelefone;
  }

  String get email => _email;
  set email(String novoEmail) {
    _email = novoEmail;
  }
}

class ClienteJuridico extends Cliente {
  String _numeroCnpj = "";

  ClienteJuridico(super.endereco, super.telefone, super.email, numeroCnpj) {
    _numeroCnpj = numeroCnpj;
  }
  // Getter e setter dos atributos
  String get numeroCnpj => _numeroCnpj;
  set numeroCnpj(String novoValor) {
    _numeroCnpj = novoValor;
  }
}

class ClienteFisico extends Cliente {
  String _numeroCpf = "";

  ClienteFisico(super.endereco, super.telefone, super.email, numeroCpf) {
    _numeroCpf = numeroCpf;
  }
  // Getter e setter dos atributos

  String get numeroCpf => _numeroCpf;
  set numeroCpf(String novoValor) {
    _numeroCpf = novoValor;
  }
}
