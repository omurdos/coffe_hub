import 'package:coffee_hub/providers/drinks_details_provider.dart';
import 'package:coffee_hub/utility/constants.dart';
import 'package:coffee_hub/utility/images.dart';
import 'package:coffee_hub/widgets/quantity_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrinkDetailsScreen extends StatefulWidget {
  static const String id = 'drink_details';

  @override
  _DrinkDetailsScreenState createState() => _DrinkDetailsScreenState();
}

class _DrinkDetailsScreenState extends State<DrinkDetailsScreen> {
  int qty = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 250,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Images.background),
                                  fit: BoxFit.cover)),
                        ),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  context.watch<DrinksDetailsProvider>().drinkModel.name,
                                  style: Theme.of(context).textTheme.headline6,
                                ))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Hero(
                              tag: context.watch<DrinksDetailsProvider>().drinkModel.image,
                              child: Image.asset(
                                context.watch<DrinksDetailsProvider>().drinkModel.image,
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.watch<DrinksDetailsProvider>().drinkModel.name,
                              style: Theme.of(context).textTheme.subtitle1.copyWith(color: listTileItemTextColor),
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: r"$",
                                    style: Theme.of(context).textTheme.overline),
                                TextSpan(
                                    text: context.watch<DrinksDetailsProvider>().drinkModel.price.toString(),
                                    style: Theme.of(context).textTheme.headline6.copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
                              ]),
                            ),
                          ],
                        ),
                        Spacer(),
                        Quantity(
                          onAdd: () {
                            setState(() {
                              qty++;
                            });
                          },
                          onRemove: () {
                            setState(() {
                              qty--;
                            });
                          },
                          quantity: qty.toString(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Size",
                          style: Theme.of(context).textTheme.subtitle1.copyWith(color: listTileItemTextColor),
                        ),
                        SizedBox(
                          height: kItemSpace,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(Images.smallCup),
                            SizedBox(
                              width: kItemSpace,
                            ),
                            Image.asset(Images.mediumCup),
                            SizedBox(
                              width: kItemSpace,
                            ),
                            Image.asset(Images.largeCup),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kItemSpace,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Sugar",
                          style: Theme.of(context).textTheme.subtitle1.copyWith(color: listTileItemTextColor),
                        ),
                        SizedBox(
                          height: kItemSpace,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(Images.noSugar),
                            SizedBox(
                              width: kItemSpace,
                            ),
                            Image.asset(Images.oneCube),
                            SizedBox(
                              width: kItemSpace,
                            ),
                            Image.asset(Images.twoCubes),
                            SizedBox(
                              width: kItemSpace,
                            ),
                            Image.asset(Images.threeCubes),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: FlatButton(
                child: Text(
              "Add to cart".toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: Colors.white),
                ),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: (){},
              ),
            )
          ],
        ),
      ),
    );
  }
}
