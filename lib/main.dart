import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rounded Expansion Tile",style: TextStyle(fontSize: 15),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        children: [
          Card(
            elevation: 0,
            color: Colors.white,
            child: RoundedExpansionTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              title: const Text('BorderRadius.circular(4)'),
              children: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text('Child $i'),
                  )
              ],
            ),
          ),
          const Divider(height: 20),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: RoundedExpansionTile(
              leading: const Icon(Icons.person,color: Colors.black,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              title: const Text('BorderRadius.circular(8)'),
              subtitle: const Text('In card'),
              children: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text('Child $i'),
                  )
              ],
            ),
          ),
          const Divider(height: 20),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: RoundedExpansionTile(
              leading: const Icon(Icons.person,color: Colors.black,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              title: const Text('BorderRadius.circular(16)'),
              subtitle: const Text('In card'),
              children: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text('Child $i'),
                  )
              ],
            ),
          ),
          const Divider(height: 20),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            child: RoundedExpansionTile(
              leading: const Icon(Icons.person,color: Colors.black,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              title: const Text('BorderRadius.circular(24)'),
              subtitle: const Text('In card'),
              children: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text('Child $i'),
                  )
              ],
            ),
          ),
          const Divider(height: 20),
          Card(
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
            child: RoundedExpansionTile(
              focusColor: Colors.green,
              leading: const Icon(Icons.person,color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
              title: const Text('Without trailing',style: TextStyle(color: Colors.white),),
              noTrailing: true,
              children: [
                for (var i = 0; i < 5; i++)
                ListTile(
                  title: Text('Child $i',style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
          const Divider(height: 20),
          Card(
            color: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
            child: RoundedExpansionTile(
              focusColor: Colors.green,
              leading: const Icon(Icons.person,color: Colors.white,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28)),
              title: const Text('Custom trailing',style: TextStyle(color: Colors.white),),
              trailing: const Icon(Icons.info_outline,color: Colors.white),
              rotateTrailing: false,
              children: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text('Child $i',style: TextStyle(color: Colors.white),),
                  )
              ],
            ),
          ),
          const Divider(height: 20),
          Card(
            color: Colors.red,
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
            child: RoundedExpansionTile(
              leading: const Icon(Icons.person,color: Colors.white,),
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(24)),
              title: const Text('Default trailing',style: TextStyle(color: Colors.white),),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      color: Colors.grey.shade200,
                    ),
                    child: const Center(
                      child: Text(
                        'Widget',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(height: 20),
          Card(
            color: Colors.purple,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
            child: RoundedExpansionTile(
              leading: const Icon(Icons.person,color: Colors.white,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28)),
              title: const Text('Custom trailing with rotation',style: TextStyle(color: Colors.white),),
              trailing: const Icon(Icons.keyboard_arrow_down,color: Colors.white,),
              rotateTrailing: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      color: Colors.grey.shade200,
                    ),
                    child: const Center(
                      child: Text(
                        'Widget',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}