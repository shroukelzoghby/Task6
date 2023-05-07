import 'package:flutter/material.dart';
class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int selectedindex = 0;
  List<Widget>widgetpages=[
    Listview(),
    Gridview(),
    TabBar(),
    Pageview(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App Bar"),
        actions: [
          Icon(Icons.refresh),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        fixedColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: selectedindex,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "List View", icon: Icon(Icons.list)),
          BottomNavigationBarItem(label: "Grid View", icon: Icon(Icons.grid_on_sharp)),
          BottomNavigationBarItem(label: "Tab Bar", icon: Icon(Icons.tab)),
          BottomNavigationBarItem(label: "Page View", icon: Icon(Icons.pages_rounded)),
        ],),
      body: widgetpages.elementAt(selectedindex),


    );
  }
}
class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, i) {
              return Container(child: Text("Item $i",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),));
            }),
      ),
    );
  }
}
class Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, i) {
              return Container(child: Text(" Item $i",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),);
            }
        ),
      ),
    );
  }
}
class TabBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: TabBarView(
            children: [
              Container(width: double.infinity,
                child: Text("Item 1",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                color: Colors.cyan,),
              Container(width: double.infinity,
                child: Text("Item 2",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                color: Colors.teal,),
              Container(width: double.infinity,
                child: Text("Item 3",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                color: Colors.grey,),
              Container(width: double.infinity,
                child: Text("Item 4",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                color: Colors.red,),
              Container(width: double.infinity,
                child: Text("Item 5",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                color: Colors.deepPurple,),
            ],
          )
      ),
    );
  }

}
class Pageview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600,
            color: Colors.deepPurple,
            child: PageView(
              children: [
                Text("Item 1",
                  style:TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )

                  ,),
                Text("Item 2",
                  style:TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )

                  ,),
                Text("Item 3",
                  style:TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )

                  ,),
                Text("Item 4",
                  style:TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )

                  ,),
                Text("Item 5",
                  style:TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )

                  ,),
              ],
            ),
          )
        ],
      ),

    );
  }
}




