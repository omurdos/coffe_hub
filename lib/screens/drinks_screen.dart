import 'package:coffee_hub/models/drink_model.dart';
import 'package:coffee_hub/providers/drinks_details_provider.dart';
import 'package:coffee_hub/screens/drink_details_screen.dart';
import 'package:coffee_hub/utility/constants.dart';
import 'package:coffee_hub/utility/images.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrinksScreen extends StatefulWidget {
  @override
  _DrinksScreenState createState() => _DrinksScreenState();
}

class _DrinksScreenState extends State<DrinksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: RichText(
              softWrap: true,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "It's Great ",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.black),
                  ),
                  TextSpan(
                    text: "Day for Coffee.",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: kItemSpace,
          ),
          ListTile(
            leading: Hero(
              tag: Images.espresso,
              child: Image.asset(
                Images.espresso,
                width: 40,
              ),
            ),
            title: Text(
              "Espresso",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: listTileItemTextColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              context.read<DrinksDetailsProvider>().drinkModel = DrinkModel(
                  image: Images.espresso,
                  name: "Espresso",
                  price: 2500
              );
              Navigator.pushNamed(context, DrinkDetailsScreen.id);
            },
          ),
          SizedBox(
            height: kItemSpace,
          ),
          ListTile(
            leading: Hero(
              tag: Images.cappuccino,
              child: Image.asset(
                Images.cappuccino,
                width: 40,
              ),
            ),
            title: Text(
              "Cappuccino",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: listTileItemTextColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              context.read<DrinksDetailsProvider>().drinkModel = DrinkModel(
                image: Images.cappuccino,
                name: "Cappuccino",
                price: 2500
              );
              Navigator.pushNamed(context, DrinkDetailsScreen.id);
            },
          ),
          SizedBox(
            height: kItemSpace,
          ),
          ListTile(
            leading: Hero(
              tag: Images.macciato,
              child: Image.asset(
                Images.macciato,
                width: 40,
              ),
            ),
            title: Text(
              "Macciato",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: listTileItemTextColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
            onTap: (){
              context.read<DrinksDetailsProvider>().drinkModel = DrinkModel(
                  image: Images.macciato,
                  name: "Macciato",
                  price: 2500
              );
              Navigator.pushNamed(context, DrinkDetailsScreen.id);
            },
          ),
          SizedBox(
            height: kItemSpace,
          ),
          ListTile(
            leading: Hero(
              tag: Images.mocha,
              child: Image.asset(
                Images.mocha,
                width: 40,
              ),
            ),
            title: Text(
              "Mocha",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: listTileItemTextColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
            onTap: (){
              context.read<DrinksDetailsProvider>().drinkModel = DrinkModel(
                  image: Images.mocha,
                  name: "Mocha",
                  price: 2500
              );
              Navigator.pushNamed(context, DrinkDetailsScreen.id);
            },
          ),
          SizedBox(
            height: kItemSpace,
          ),
          ListTile(
            leading: Hero(
              tag: Images.latte,
              child: Image.asset(
                Images.latte,
                width: 40,
              ),
            ),
            title: Text(
              "Latte",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: listTileItemTextColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
            onTap: (){
              context.read<DrinksDetailsProvider>().drinkModel = DrinkModel(
                  image: Images.latte,
                  name: "Latte",
                  price: 2500
              );
              Navigator.pushNamed(context, DrinkDetailsScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
