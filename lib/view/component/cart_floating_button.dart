import '../../utils/imports/common_libs.dart';
import '../../providers/cart_provider.dart';
import '../page/cart_page.dart';

class CartFloatingButton extends StatelessWidget {
  const CartFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, cartProvider, child) {
        if (cartProvider.isEmpty) {
          return const SizedBox.shrink();
        }

        final theme = Theme.of(context);
        final isDark = theme.brightness == Brightness.dark;
        final ui = UIConstants();

        return Container(
          margin: EdgeInsets.only(bottom: ui.spacing4),
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
            backgroundColor: ui.getPrimaryColor(isDark),
            foregroundColor: ui.getColorByTheme(
              isDark: isDark,
              lightColor: ui.lightOnPrimary,
              darkColor: ui.darkOnPrimary,
            ),
            elevation: ui.elevation8,
            icon: Stack(
              children: [
                const Icon(Icons.shopping_cart),
                if (cartProvider.itemCount > 0)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.all(ui.spacing1 / 2),
                      decoration: BoxDecoration(
                        color: ui.getColorByTheme(
                          isDark: isDark,
                          lightColor: ui.lightError,
                          darkColor: ui.darkError,
                        ),
                        borderRadius: BorderRadius.circular(ui.radius8),
                      ),
                      constraints: BoxConstraints(
                        minWidth: ui.spacing4,
                        minHeight: ui.spacing4,
                      ),
                      child: Text(
                        cartProvider.itemCount.toString(),
                        style: TextStyle(
                          color: ui.getColorByTheme(
                            isDark: isDark,
                            lightColor: ui.lightOnError,
                            darkColor: ui.darkOnError,
                          ),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SanFranciscoPro',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            label: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${cartProvider.itemCount} ${cartProvider.itemCount == 1 ? 'item' : 'itens'}',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SanFranciscoPro',
                    color: ui.getColorByTheme(
                      isDark: isDark,
                      lightColor: ui.lightOnPrimary,
                      darkColor: ui.darkOnPrimary,
                    ),
                  ),
                ),
                Text(
                  'R\$ ${cartProvider.totalAmount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SanFranciscoPro',
                    color: ui.getColorByTheme(
                      isDark: isDark,
                      lightColor: ui.lightOnPrimary,
                      darkColor: ui.darkOnPrimary,
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