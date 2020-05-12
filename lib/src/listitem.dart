import 'package:contribflutter/src/productdetail.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String tag;

  const ListItem({Key key, this.tag = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetail(
            tag: tag
          ),
        ));
      },
      title: Text("Teste"),
      subtitle: Text("R\$ 770.00"),
      leading: Hero(
        child: Image.network("https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp16touch-space-select-201911?wid=892&hei=820&&qlt=80&.v=1572825197207"),
        tag: tag,
      ),
      trailing: IconButton(
        icon: Icon(Icons.shopping_basket),
        color: Theme.of(context).accentColor,
        onPressed: (){},
      ),
    );
  }
}