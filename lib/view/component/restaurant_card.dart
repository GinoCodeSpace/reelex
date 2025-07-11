import '../../utils/imports/common_libs.dart';

import '../../model/restaurant.dart';

import '../page/restaurant_detail_page.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = UIConstants();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: ui.spacing4, vertical: ui.spacing2),
      decoration: BoxDecoration(
        color: ui.getColorByTheme(
          isDark: isDark,
          lightColor: ui.lightSurface,
          darkColor: ui.darkSurface,
        ),
        borderRadius: BorderRadius.circular(ui.radius4),
        boxShadow: [
          BoxShadow(
            color: ui.getColorByTheme(
              isDark: isDark,
              lightColor: ui.lightShadow.withValues(alpha: 0.1),
              darkColor: ui.darkShadow.withValues(alpha: 0.2),
            ),
            blurRadius: ui.elevation2,
            offset: Offset(0, ui.spacing1 / 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  RestaurantDetailPage(restaurant: restaurant),
            ),
          );
        },
        borderRadius: BorderRadius.circular(ui.radius4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(ui.radius4)),
              child: Stack(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ui.getColorByTheme(
                        isDark: isDark,
                        lightColor: ui.lightSurfaceContainerHighest,
                        darkColor: ui.darkSurfaceContainerHighest,
                      ),
                    ),
                    child: restaurant.image.isNotEmpty
                        ? Image.network(
                            restaurant.image,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: ui.getColorByTheme(
                                  isDark: isDark,
                                  lightColor: ui.lightSurfaceContainerHighest,
                                  darkColor: ui.darkSurfaceContainerHighest,
                                ),
                                child: Icon(
                                  Icons.restaurant,
                                  size: 50,
                                  color: ui.getColorByTheme(
                                    isDark: isDark,
                                    lightColor: ui.lightOnSurfaceVariant,
                                    darkColor: ui.darkOnSurfaceVariant,
                                  ),
                                ),
                              );
                            },
                          )
                        : Container(
                            color: ui.getColorByTheme(
                              isDark: isDark,
                              lightColor: ui.lightSurfaceContainerHighest,
                              darkColor: ui.darkSurfaceContainerHighest,
                            ),
                            child: Icon(
                              Icons.restaurant,
                              size: 50,
                              color: ui.getColorByTheme(
                                isDark: isDark,
                                lightColor: ui.lightOnSurfaceVariant,
                                darkColor: ui.darkOnSurfaceVariant,
                              ),
                            ),
                          ),
                  ),

                  // Status badge
                  Positioned(
                    top: ui.spacing3,
                    left: ui.spacing3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: ui.spacing2, vertical: ui.spacing1),
                      decoration: BoxDecoration(
                        color: restaurant.isOpen 
                             ? ui.getColorByTheme(
                                 isDark: isDark,
                                 lightColor: Colors.green,
                                 darkColor: Colors.green,
                               )
                             : ui.getColorByTheme(
                                 isDark: isDark,
                                 lightColor: ui.lightError,
                                 darkColor: ui.darkError,
                               ),
                         borderRadius: BorderRadius.circular(ui.radius12),
                      ),
                      child: Text(
                        restaurant.isOpen ? 'Aberto' : 'Fechado',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SanFranciscoPro',
                        ),
                      ),
                    ),
                  ),

                  // Rating badge
                  Positioned(
                    top: ui.spacing3,
                    right: ui.spacing3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: ui.spacing2, vertical: ui.spacing1),
                      decoration: BoxDecoration(
                        color: ui.getColorByTheme(
                          isDark: isDark,
                          lightColor: ui.lightScrim.withValues(alpha: 0.7),
                          darkColor: ui.darkScrim.withValues(alpha: 0.7),
                        ),
                        borderRadius: BorderRadius.circular(ui.radius12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                             Icons.star,
                             color: Colors.amber,
                             size: 14,
                           ),
                          SizedBox(width: ui.spacing1),
                          Text(
                            restaurant.rating.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SanFranciscoPro',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Informações do restaurante
            Padding(
              padding: EdgeInsets.all(ui.spacing4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nome do restaurante
                  Text(
                    restaurant.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'SanFranciscoPro',
                      color: ui.getColorByTheme(
                        isDark: isDark,
                        lightColor: ui.lightOnSurface,
                        darkColor: ui.darkOnSurface,
                      ),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: ui.spacing1),

                  // Descrição
                  Text(
                    restaurant.description,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'SanFranciscoPro',
                      color: ui.getColorByTheme(
                        isDark: isDark,
                        lightColor: ui.lightOnSurfaceVariant,
                        darkColor: ui.darkOnSurfaceVariant,
                      ),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: ui.spacing3),

                  // Informações de entrega
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: ui.getColorByTheme(
                          isDark: isDark,
                          lightColor: ui.lightOnSurfaceVariant,
                          darkColor: ui.darkOnSurfaceVariant,
                        ),
                      ),
                      SizedBox(width: ui.spacing1),
                      Text(
                        restaurant.deliveryTime,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'SanFranciscoPro',
                          color: ui.getColorByTheme(
                            isDark: isDark,
                            lightColor: ui.lightOnSurfaceVariant,
                            darkColor: ui.darkOnSurfaceVariant,
                          ),
                        ),
                      ),
                      SizedBox(width: ui.spacing4),
                      Icon(
                        Icons.delivery_dining,
                        size: 16,
                        color: ui.getColorByTheme(
                          isDark: isDark,
                          lightColor: ui.lightOnSurfaceVariant,
                          darkColor: ui.darkOnSurfaceVariant,
                        ),
                      ),
                      SizedBox(width: ui.spacing1),
                      Text(
                        'R\$ ${restaurant.deliveryFee.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'SanFranciscoPro',
                          color: ui.getColorByTheme(
                            isDark: isDark,
                            lightColor: ui.lightOnSurfaceVariant,
                            darkColor: ui.darkOnSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: ui.spacing2),

                  // Pedido mínimo
                  Text(
                    'Pedido mínimo: R\$ ${restaurant.minimumOrder.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'SanFranciscoPro',
                      color: ui.getColorByTheme(
                        isDark: isDark,
                        lightColor: ui.lightOnSurfaceVariant,
                        darkColor: ui.darkOnSurfaceVariant,
                      ),
                    ),
                  ),

                  SizedBox(height: ui.spacing3),

                  // Tags
                  Wrap(
                    spacing: ui.spacing2,
                    runSpacing: ui.spacing1,
                    children: restaurant.tags.take(3).map((tag) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: ui.spacing2,
                          vertical: ui.spacing1,
                        ),
                        decoration: BoxDecoration(
                          color: ui.getColorByTheme(
                            isDark: isDark,
                            lightColor: ui.lightSurfaceContainerLow,
                            darkColor: ui.darkSurfaceContainerLow,
                          ),
                          borderRadius: BorderRadius.circular(ui.radius12),
                          border: Border.all(
                            color: ui.getColorByTheme(
                              isDark: isDark,
                              lightColor: ui.lightOutlineVariant,
                              darkColor: ui.darkOutlineVariant,
                            ),
                            width: ui.borderWidth1,
                          ),
                        ),
                        child: Text(
                          tag,
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'SanFranciscoPro',
                            color: ui.getColorByTheme(
                              isDark: isDark,
                              lightColor: ui.lightOnSurfaceVariant,
                              darkColor: ui.darkOnSurfaceVariant,
                            ),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
