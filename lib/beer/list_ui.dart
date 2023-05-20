import 'package:final_tpm/service/api_service.dart';
import 'package:final_tpm/beer/model/list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPokemon extends StatefulWidget {
  const ListPokemon({Key? key}) : super(key: key);

  @override
  State<ListPokemon> createState() => _ListPokemonState();
}

class _ListPokemonState extends State<ListPokemon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: _buildListPokemon(),
    ));
  }
}
Widget _buildListPokemon(){
  return Container(
    padding: const EdgeInsets.all(9.0),
    child: FutureBuilder(
      future: ApiDataSource.instance.getBeers(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
        if(snapshot.hasError){
          return _buildErrorSection();
        }
        if(snapshot.hasData){
          return GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250,
            childAspectRatio: 4/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index){
              Beer beer = Beer.fromJson(snapshot.data![index]);
              return InkWell(
                onTap: (){

                },
                child: GridTile(
                  child: Image.network(
                    beer.image_url!,
                    fit: BoxFit.cover,
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.black38,
                    title: Text(
                      beer.name!,
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    subtitle: Text(
                      beer.tagline!.toString(),
                      style: TextStyle(
                          fontSize: 10
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }
        return _buildLoadingSection();
      },
    ),
  );
}

Widget _buildErrorSection(){
  return Container(
    child: Text('Error Occured'),
  );
}

Widget _buildLoadingSection(){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator()
      ],
    ),
  );
}

// Widget _buildSuccessSection(ListPizzaModel data){
//   return
// }