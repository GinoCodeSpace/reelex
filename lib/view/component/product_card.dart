import '../../utils/imports/common_libs.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Consumer2<CartProvider, ProductsProvider>(
      builder: (context, cartProvider, productsProvider, child) {
        final ui = uiConstants;
        final restaurant = productsProvider.getRestaurantById(
          product.restaurantId,
        );
        final quantity = cartProvider.getQuantity(product.id);

        return LayoutBuilder(
          builder: (context, constraints) {
            final isDesktop =
                constraints.maxWidth > ui.productCardDesktopBreakpoint;
            final cardWidth = isDesktop
                ? ui.productCardMaxWidth.clamp(
                    ui.productCardMinWidth,
                    constraints.maxWidth * ui.productCardDesktopWidthRatio,
                  )
                : constraints.maxWidth;
            final aspectRatio = isDesktop
                ? ui.productCardDesktopAspectRatio
                : ui.productCardMobileAspectRatio;

            return SizedBox(
              width: cardWidth,
              child: AspectRatio(
                aspectRatio: aspectRatio,
                child: Card(
                  elevation: ui.productCardElevation,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      ui.productCardBorderRadius,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Imagem do produto
                      Expanded(
                        flex: ui.productCardImageFlex,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(ui.productCardBorderRadius),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(product.image),
                              fit: BoxFit.cover,
                              onError: (exception, stackTrace) {
                                // Fallback para imagem padrão
                              },
                            ),
                          ),
                          child: Stack(
                            children: [
                              // Overlay de carregamento/erro
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(
                                      ui.productCardBorderRadius,
                                    ),
                                  ),
                                  color: ui.productCardFallbackBackgroundColor,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.fastfood,
                                    size: ui.productCardFallbackIconSize,
                                    color: ui.productCardFallbackIconColor,
                                  ),
                                ),
                              ),

                              // Rating
                              Positioned(
                                top: ui.productCardRatingPositionTop,
                                right: ui.productCardRatingPositionRight,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        ui.productCardRatingPaddingHorizontal,
                                    vertical:
                                        ui.productCardRatingPaddingVertical,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ui.productCardRatingBackgroundColor,
                                    borderRadius: BorderRadius.circular(
                                      ui.productCardRatingBorderRadius,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: ui.productCardRatingIconColor,
                                        size: ui.productCardRatingIconSize,
                                      ),
                                      SizedBox(width: ui.productCardSpacing2),
                                      Text(
                                        product.rating.toString(),
                                        style: TextStyle(
                                          color: ui.productCardRatingTextColor,
                                          fontSize:
                                              ui.productCardRatingFontSize,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Informações do produto
                      Expanded(
                        flex: ui.productCardContentFlex,
                        child: Padding(
                          padding: EdgeInsets.all(ui.productCardContentPadding),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Nome do produto
                              Text(
                                product.name,
                                style: TextStyle(
                                  fontWeight: ui.productCardNameFontWeight,
                                  fontSize: ui.productCardNameFontSize,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),

                              // Restaurante
                              if (restaurant != null)
                                Text(
                                  restaurant.name,
                                  style: TextStyle(
                                    color: ui.productCardRestaurantTextColor,
                                    fontSize: ui.productCardRestaurantFontSize,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),

                              // Tempo de preparo
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    size: ui.productCardTimeIconSize,
                                    color: ui.productCardTimeIconColor,
                                  ),
                                  SizedBox(width: ui.productCardSpacing4),
                                  Text(
                                    '${product.preparationTime} min',
                                    style: TextStyle(
                                      color: ui.productCardTimeTextColor,
                                      fontSize: ui.productCardTimeFontSize,
                                    ),
                                  ),
                                ],
                              ),

                              // Preço e botão de adicionar
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'R\$ ${product.price.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontWeight: ui.productCardPriceFontWeight,
                                      fontSize: ui.productCardPriceFontSize,
                                      color: ui.productCardPriceColor,
                                    ),
                                  ),

                                  // Controles de quantidade
                                  if (quantity > 0)
                                    Container(
                                      decoration: BoxDecoration(
                                        color: ui
                                            .productCardQuantityBackgroundColor,
                                        borderRadius: BorderRadius.circular(
                                          ui.productCardQuantityBorderRadius,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          GestureDetector(
                                            onTap: () => cartProvider
                                                .decrementQuantity(product.id),
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                ui.productCardQuantityPadding,
                                              ),
                                              child: Icon(
                                                Icons.remove,
                                                color: ui
                                                    .productCardQuantityIconColor,
                                                size: ui
                                                    .productCardQuantityIconSize,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: ui
                                                  .productCardQuantityPaddingHorizontal,
                                              vertical: ui
                                                  .productCardQuantityPaddingVertical,
                                            ),
                                            child: Text(
                                              quantity.toString(),
                                              style: TextStyle(
                                                color: ui
                                                    .productCardQuantityTextColor,
                                                fontWeight: ui
                                                    .productCardQuantityFontWeight,
                                                fontSize: ui
                                                    .productCardQuantityFontSize,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () => cartProvider
                                                .incrementQuantity(product.id),
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                ui.productCardQuantityPadding,
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                color: ui
                                                    .productCardQuantityIconColor,
                                                size: ui
                                                    .productCardQuantityIconSize,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  else
                                    GestureDetector(
                                      onTap: () =>
                                          cartProvider.addItem(product),
                                      child: Container(
                                        padding: EdgeInsets.all(
                                          ui.productCardAddButtonPadding,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ui
                                              .productCardQuantityBackgroundColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color:
                                              ui.productCardQuantityIconColor,
                                          size: ui.productCardQuantityIconSize,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
