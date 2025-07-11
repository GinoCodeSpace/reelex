import '../../utils/imports/common_libs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(StringConstants.home(context)),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  authProvider.logout(context);
                  context.go(Routes.login);
                },
                tooltip: StringConstants.logout(context),
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.home, size: 80, color: Colors.blue),
                const SizedBox(height: 24),
                Text(
                  StringConstants.welcome(context),
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                if (authProvider.userEmail != null) ...[
                  Text(
                    '${StringConstants.user(context)}: ${authProvider.userEmail}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 24),
                ],
                Card(
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 48,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          StringConstants.authenticated(context),
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          StringConstants.authenticatedDescription(context),
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
