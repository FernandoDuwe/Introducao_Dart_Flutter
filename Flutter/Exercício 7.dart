/*
  Enunciado: 	Vamos criar uma tela que liste  os convidados de uma festa. 

              A lista de convidados deve ser lida a partir de uma lista;

              Ao clicar em cada item, escreva no console (print), qual foi o convidado;

              O layout da tela fica a seu critério, divirta-se!
*/

import 'package:flutter/material.dart';

class GuestList extends StatelessWidget {
  List vrGuestList = [
    "José da Silva",
    "Fernando Duwe",
    "Mariazinha",
    "Antônio",
    "Norma"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Evento: Teste", style: TextStyle(color: Colors.black54)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: vrGuestList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/user.png"),
                backgroundColor: Colors.grey,
              ),
              title: Text(vrGuestList[index]),
              subtitle: Text("Clique aqui para editar"),
              onTap: () => print("clicou em $index"),
              trailing: Icon(
                Icons.more_vert,
              ),
            );
          }),
    );
  }
}
