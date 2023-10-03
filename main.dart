import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Caio Zanardo'),
              accountEmail: Text('rm95125@fiap.com.br'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/Foto_3x4.jpeg'), // Substitua pelo caminho da sua imagem
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Pessoal'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context); // Fecha o Drawer
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PessoalScreen()));
              },
            ),
            ListTile(
              title: Text('Formação'),
              leading: Icon(Icons.school),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormacaoScreen()));
              },
            ),
            ListTile(
              title: Text('Experiência'),
              leading: Icon(Icons.work),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExperienciaScreen()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
            'Bem-vindo à tela inicial! \nNeste App estamos utilizando Menu com Drawer Navigation'),
      ),
    );
  }
}

class PessoalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pessoal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Data de Nascimento: 26/01/1996 \n Estado Civil: Casado \n Dependentes: 2',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class FormacaoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formação'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Cursando Analise de Sistemas para Internet na Faculdade de Informática e Administração Paulista (FIAP) - 2022/2023',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class ExperienciaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experiência'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Analista SRE / Middleware \nAdministração servers Weblogic, Linux, K8s, gerenciamento de incidentes de falha, sintomas, solução de problemas, remediação, causa raiz e monitoramento.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
