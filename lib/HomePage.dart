import 'package:flutter/material.dart';
import 'package:prov/Provider/FavouriteProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController text = TextEditingController();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Favourite Item Demo"),
          ),
          body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Consumer<FavouriteProvider>(builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: TextFormField(
                decoration:  InputDecoration(labelText: "Enter New Item",enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                )),
                controller: text,
                onFieldSubmitted: (val) {
                  value.addList(val);
                  text.clear();
                },
              ),
            );
          }),
          Consumer<FavouriteProvider>(builder: (context, value, child) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: value.list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      value.fav.contains(index) ? value.remove(index) : value.addFav(index);
                    },
                    title: Text(value.list[index].toString()),
                    trailing: value.fav.contains(index)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(Icons.favorite_outline),
                  );
                });
          }),
        ],
      )),
    );
  }
}
