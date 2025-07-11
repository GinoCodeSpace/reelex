import '../../utils/imports/common_libs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text('Login'),
        onPressed: () => appRouter.push(Routes.login),
      ),
    );
  }
}
