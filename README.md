# curso02_flutter

Curso no canal flutterando

# Aula 11:
Single render

- Quando for criar um filho dentro do outro, você estara utilizando o mesmo render.
- (Passando a mesma instrução)
- O filho 'herda' caracteristicas do pai
- Como fazer para não herdar as caracteristicas? 
- Single render
- Widgets de alinhamentos provem um novo render(single render)
- child: Align(), Center()

# Aula 12 
Gerenciar outro estado

Dark Mode, Light Mode

# Aula 13

Componentização de widgets
Criando método para separar os widgets
Organizar o código

# Aula 14

-Multi Render

Columns

# Aula 15

-Multi Render

Row

# Aula 16

ListView

# Aula 17

Tela de login

TextField

# Aula 18

Navegação de telas

# Aula 19

Rotas

# Aula 20

Depuranção

# Aula 21

Image.network("")

# Aula 22

Image.asset

# Aula 23

Stack

# Aula 24

Material Card

# Aula 25

Drawer
drawer:Drawer(
child: Column(
children: [
UserAccountsDrawerHeader(
currentAccountPicture: Image.network("https://png.pngtree.com/element_origin_min_pic/00/00/06/12575cb97a22f0f.jpg"),
accountName: Text("Usuario"),
accountEmail: Text("usuario@email.com"),
),
ListTile(
title: Text("Inicio"),
subtitle: Text("Tela inicial"),
leading: Icon(Icons.home),
onTap: () {
print("home");
}
),
# Aula 26

ClipRRect


