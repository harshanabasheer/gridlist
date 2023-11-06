import 'package:flutter/material.dart';
import 'package:gridlist/model/gridmodel.dart';
import 'package:gridlist/model/listmodel.dart';

class GridList extends StatefulWidget {
  const GridList({super.key});

  @override
  State<GridList> createState() => _GridListState();
}

class _GridListState extends State<GridList> {
  List itemsGrid =[
    GridModel(title: "Deafault Theame", ico: Icon(Icons.phone_android),color: Colors.red),
    GridModel(title: "Full App", ico: Icon(Icons.app_settings_alt),color: Colors.blueGrey),
    GridModel(title: "Integration", ico: Icon(Icons.integration_instructions_outlined),color: Colors.green),
    GridModel(title: "Dashboard", ico: Icon(Icons.dashboard),color: Colors.purple),
  ];
  List itemsList=[
    ListModel(name: "File Manager", ico: Icon(Icons.file_copy_outlined,color: Colors.yellow,), subtitle: "Theam 1 screens"),
    ListModel(name: "Exercise Tips", ico: Icon(Icons.engineering), subtitle: "Theam 2 screens"),
    ListModel(name: "Food Recipy", ico: Icon(Icons.emoji_food_beverage_outlined), subtitle: "Theam 3 screens"),
    ListModel(name: "Gym",ico: Icon(Icons.sports_gymnastics), subtitle: "Theam 4 screens"),
    // ListModel(name: "E-wallet",ico: Icon(Icons.shopping_bag), subtitle: "Theam 5 screens"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AllInOneKit"),
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.black,
        body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(12.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: itemsGrid.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: itemsGrid[index].color,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            itemsGrid[index].ico,
                            SizedBox(height: 8.0),
                            Text(itemsGrid[index].title, style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold), ),
                          ],
                        ),
                      );
                    },
                  )

              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: itemsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          color:Colors.deepOrange ,
                          shape: BoxShape.rectangle,
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: itemsGrid[index].ico, // Icon goes here
                      ),
                      title: Text(itemsList[index].name, style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(itemsList[index].subtitle),
                      trailing:CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 20,
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                },
              ),

            ],
          ),
        )



    );

  }
}
