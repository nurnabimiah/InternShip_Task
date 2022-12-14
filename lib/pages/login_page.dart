import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCheacked = false;
  final _formkey = GlobalKey<FormState>();
  final _emailContoller = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailContoller.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 80),
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  'images/login.png',
                  width: double.infinity,
                  height: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Sign In to Continue',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailContoller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15.5),
                      ),
                      prefixIcon: Icon(Icons.email, color: Colors.purple),
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(color: Colors.purple),
                      filled: true,
                      fillColor: Colors.blue[50],
                    ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'This filed must not be empty';
                        }
                        return null;
                      },
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15.5),
                      ),
                      prefixIcon: Icon(Icons.lock, color: Colors.purple),
                      hintText: "Enter your password",
                      hintStyle: TextStyle(color: Colors.purple),
                      filled: true,
                      fillColor: Colors.blue[50],
                    ),

                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'This filed must not be empty';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: isCheacked,
                        onChanged: ( newValue){
                            setState((){
                              isCheacked = newValue!;
                            });
                        },
                      checkColor: Colors.white,
                      activeColor: Colors.purple,
                    ),
                    Text('Remember me')
                  ],

                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Forget Password ?'),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(20))

                ),
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextButton(
                  child: const Text('Login',style: TextStyle(color: Colors.white,fontSize: 20)),
                  onPressed: () {

                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an accout?",),
                TextButton(onPressed: (){},
                    child: Text('Sign Up!'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
