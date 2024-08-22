import 'package:flame/components.dart';
import 'package:quokka_api/quokka_api.dart';

extension VectorToDefinition on Vector2 {
  VectorDefinition toDefinition() => VectorDefinition(x.toInt(), y.toInt());
}

extension DefinitionToVector on VectorDefinition {
  Vector2 toVector() => Vector2(x.toDouble(), y.toDouble());
}
