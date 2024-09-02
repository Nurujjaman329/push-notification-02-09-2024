import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Login Page',style: TextStyle(color: Colors.white),),

      ),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
               TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              ),
            const SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text("Login")),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
