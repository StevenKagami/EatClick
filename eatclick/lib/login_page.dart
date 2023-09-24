import 'package:eatclick/main_page.dart';
import 'package:flutter/material.dart';
// import 'package:login_page_day_23/animation/FadeAnimation.dart';
import 'package:eatclick/register.dart';
import 'package:eatclick/home.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Login to your account",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        makeInputEmail(label: "Email"),
                        makeInputPass(label: "Password", obscureText: true),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                        },
                        color: Colors.yellow,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Login with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            // border: Border.all(
                            //   width: 1,
                            //   color: Colors.black
                            // ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('image/fb.png'),
                            ),
                          )),
                      Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          padding: EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            // border: Border.all(
                            //   width: 1,
                            //   color: Colors.black
                            // ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('image/apple.png'),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            // border: Border.all(
                            //   width: 1,
                            //   color: Colors.black
                            // ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('image/google.png'),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?"),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Container(
            // height: MediaQuery.of(context).size.height / 3,
            // decoration: BoxDecoration(
            // image: DecorationImage(
            // image: AssetImage(''),
            // fit: BoxFit.cover)),
            // )
          ],
        ),
      ),
    );
  }

  Widget makeInputPass({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.lock_open,
                color: Colors.black,
              ),
              // icon: ,
              suffixIcon: Icon(Icons.visibility_off, color: Colors.black),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              hintText: "Enter Your Password",
              hintStyle: TextStyle(color: Colors.grey)),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget makeInputEmail({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.mail_outline,
                color: Colors.black,
              ),
              // icon: ,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              hintText: "Enter Your Email Address",
              hintStyle: TextStyle(color: Colors.grey)),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
// class LoginPage extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Column(
//                     children: <Widget>[
//                       Text(
//                         "Login",
//                         style: TextStyle(
//                             fontSize: 30, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "Login to your account",
//                         style: TextStyle(fontSize: 15, color: Colors.grey[700]),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 40),
//                     child: Column(
//                       children: <Widget>[
//                         makeInputEmail(label: "Email"),
//                         makeInputPass(label: "Password", obscureText: true),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 40),
//                     child: Container(
//                       padding: EdgeInsets.only(top: 3, left: 3),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           border: Border(
//                             bottom: BorderSide(color: Colors.black),
//                             top: BorderSide(color: Colors.black),
//                             left: BorderSide(color: Colors.black),
//                             right: BorderSide(color: Colors.black),
//                           )),
//                       child: MaterialButton(
//                         minWidth: double.infinity,
//                         height: 60,
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const MainPage()));
//                         },
//                         color: Colors.yellow,
//                         elevation: 0,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(50)),
//                         child: Text(
//                           "Login",
//                           style: TextStyle(
//                               fontWeight: FontWeight.w600, fontSize: 18),
//                         ),
//                       ),
//                     ),
//                   ),

//                   Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Divider(
//                         thickness: 0.5,
//                         color: Colors.grey[400],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                       child: Text(
//                         'Login with',
//                         style: TextStyle(color: Colors.grey[700]),
//                       ),
//                     ),
//                     Expanded(
//                       child: Divider(
//                         thickness: 0.5,
//                         color: Colors.grey[400],
//                       ),
//                     ),
//                   ],
//                 ),
//               ), 

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         margin: const EdgeInsets.only(left: 5,right: 5),
//                         padding: const EdgeInsets.all(20),
//                         decoration: const BoxDecoration(
//                           // border: Border.all(
//                           //   width: 1,
//                           //   color: Colors.black
//                           // ),
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                             image: AssetImage('image/fb.png'),
//                         ),
//                       )),
//                       Container(
//                         margin: const EdgeInsets.only(left: 10,right: 10),
//                         padding: EdgeInsets.all(20),
//                         decoration: const BoxDecoration(
//                           // border: Border.all(
//                           //   width: 1,
//                           //   color: Colors.black
//                           // ),
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                             image: AssetImage('image/apple.png'),
//                         ),)),
//                         Container(
//                         margin: EdgeInsets.only(left: 5,right: 5),
//                         padding: const EdgeInsets.all(20),
//                         decoration: const BoxDecoration(
//                           // border: Border.all(
//                           //   width: 1,
//                           //   color: Colors.black
//                           // ),
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                             image: AssetImage('image/google.png'),
//                         ),))
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text("Don't have an account?"),
//                       MaterialButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Register()));
//                         },
//                         child: Text(
//                           "Register",
//                           style: TextStyle(
//                               fontWeight: FontWeight.w600, fontSize: 18),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             // Container(
//               // height: MediaQuery.of(context).size.height / 3,
//               // decoration: BoxDecoration(
//                   // image: DecorationImage(
//                       // image: AssetImage(''),
//                       // fit: BoxFit.cover)),
//             // )
//           ],
//         ),
//       ),
//     );
//   }

  

//   Widget makeInputPass({label, obscureText = false}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           label,
//           style: TextStyle(
//               fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         TextField(
//           obscureText: obscureText,
//           decoration: const InputDecoration(
//               prefixIcon: Icon(
//                 Icons.lock_open,
//                 color: Colors.black,
//               ),
//               // icon: ,
//               suffixIcon: Icon(Icons.visibility_off, color: Colors.black),
//               contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//               enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey)),
//               border: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey)),
//               hintText: "Enter Your Password",
//               hintStyle: TextStyle(color: Colors.grey)),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//       ],
//     );
//   }

//   Widget makeInputEmail({label, obscureText = false}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           label,
//           style: TextStyle(
//               fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         TextField(
//           obscureText: obscureText,
//           decoration: const InputDecoration(
//               prefixIcon: Icon(
//                 Icons.mail_outline,
//                 color: Colors.black,
//               ),
//               // icon: ,
//               contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//               enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey)),
//               border: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey)),
//               hintText: "Enter Your Email Address",
//               hintStyle: TextStyle(color: Colors.grey)),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//       ],
//     );
//   }
// }
