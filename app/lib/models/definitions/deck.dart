import 'package:dart_mappable/dart_mappable.dart';
import 'package:quokka/models/vector.dart';

part 'deck.mapper.dart';

@MappableClass()
class DeckDefinition with DeckDefinitionMappable {
  final String? name;
  final String? description;
  final List<FigureDeckDefinition> figures;

  DeckDefinition({
    this.name,
    this.description,
    this.figures = const [],
  });
}

@MappableClass()
class FigureDeckDefinition with FigureDeckDefinitionMappable {
  final String name;
  final VectorDefinition location;

  FigureDeckDefinition({
    required this.name,
    this.location = VectorDefinition.zero,
  });
}
