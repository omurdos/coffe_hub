import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {
  String quantity;
  Function onAdd;
  Function onRemove;

  Quantity({this.onRemove, this.onAdd, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 30,
            child: RawMaterialButton(
              onPressed: onRemove,
              child: Icon(Icons.remove, color: Colors.white,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              fillColor:Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Text(
              quantity,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 40,
            height: 30,
            child: RawMaterialButton(
              onPressed: onAdd,
              child: Icon(Icons.add, color: Colors.white,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              fillColor: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
