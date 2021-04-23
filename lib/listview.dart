import 'package:flutter/material.dart';
import 'package:wiki_app/domain/model/item.dart';

import 'common/our_appbar.dart';
import 'common/our_element_view.dart';
import 'common/our_footer.dart';
import 'infrastructure/driven_adapter/listivew_data_,mock.dart';

class ListViewInitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ItemMock itemMock = new ItemMock();
    var itemsList = itemMock.getAllItems();
    var itemsCharacterList = itemMock.getAllCharacterItems();
    return Scaffold(
      appBar: OurAppBar(title: 'ListView', iconAppBar: Icon(Icons.add_a_photo)),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(21, 20, 22, 20),
            child: Text(
              'Personajes',
              style: TextStyle(color: Colors.blueGrey, fontSize: 24),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black12),
            // margin: EdgeInsets.only(top: 10),
            child:
                listViewBuilderOrientation(itemsCharacterList, Axis.horizontal),
            height: MediaQuery.of(context).size.height * .20,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(21, 20, 22, 20),
            child: Text(
              'Lugares',
              style: TextStyle(color: Colors.blueGrey, fontSize: 24),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black12),
            // margin: EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              child: listViewBuilderOrientation(itemsList, Axis.vertical),
            ),
            //height: MediaQuery.of(context).size.height * .70,
            height: MediaQuery.of(context).size.height * .30,
          )
        ]),
        //GetListViewBuilderVertical(itemsList, Axis.horizontal),
      ),
      bottomNavigationBar: OurFooter(
        iconLeft: Icon(Icons.archive),
        iconRight: Icon(Icons.my_library_add),
      ),
    );
  }

  Widget listViewBuilderOrientation(List<Item> imageList, [Axis horizontal]) {
    ScrollController _scrollController = ScrollController();

    return ListView.builder(
        shrinkWrap: true,
        controller: _scrollController,
        itemCount: imageList.length,
        scrollDirection: horizontal,
        itemBuilder: (context, int) {
          return Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
            child: Row(
              children: <Widget>[
                OurElementView(
                    imageList[int],
                    /*imageList[int].id,
                    imageList[int].image,
                    imageList[int].description,
                    imageList[int].title,*/
                    horizontal),
              ],
            ),
          );
        });
  }
}
