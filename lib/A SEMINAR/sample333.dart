import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
void main()
{
  runApp(MaterialApp(home:LoginScreen() ,));
}


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Login logic
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}


// class LoginScreenWithRive extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Add the Rive animation
//           const RiveAnimation.asset(
//             'assets/login_animation.riv',  // Your Rive file here
//             fit: BoxFit.cover,
//           ),
//
//           // Login form on top of the animation
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(
//                   decoration: InputDecoration(labelText: 'Email'),
//                 ),
//                 TextField(
//                   decoration: InputDecoration(labelText: 'Password'),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Trigger animation on login
//                   },
//                   child: Text('Login'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
class LoginScreenWithRive extends StatefulWidget {
  @override
  _LoginScreenWithRiveState createState() => _LoginScreenWithRiveState();
}

class _LoginScreenWithRiveState extends State<LoginScreenWithRive> {
  Artboard? _riveArtboard;
  RiveAnimationController? _controller;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/login_animation.riv').then(
          (data) async {
        final file = RiveFile.import(data);
        final artboard = file.mainArtboard;
        artboard.addController(_controller = SimpleAnimation('idle'));
        setState(() => _riveArtboard = artboard);
      },
    );
  }

  void _onLoginPressed() {
    if (_controller?.isActive == false) {
      _controller?.isActive = true;  // Trigger animation on login
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _riveArtboard != null
              ? Rive(artboard: _riveArtboard!)
              : SizedBox(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _onLoginPressed,  // Trigger animation on login
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


