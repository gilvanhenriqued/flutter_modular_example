import 'package:dio/dio.dart';
import 'package:flutter_modular_example/app/shared/models/pokemon_model.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository(this.dio);
  
  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');

    List<PokemonModel> pokeList = [];

    for (var json in (response.data['results'] as List)){
      PokemonModel model = PokemonModel(name: json['name']);
      pokeList.add(model);
    }

    return pokeList;    
  }
  
}