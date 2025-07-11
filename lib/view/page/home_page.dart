import '../../utils/imports/common_libs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: Text('Login'),
            onPressed: () => appRouter.push(Routes.login),
          ),
          SizedBox(height: 16),
          TextButton(
            child: Text('Sign Up'),
            onPressed: () => appRouter.push(Routes.signUp),
          ),
        ],
      ),
    );
  }
}
