// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'local.dart';

class HandChangedMapper extends SubClassMapperBase<HandChanged> {
  HandChangedMapper._();

  static HandChangedMapper? _instance;
  static HandChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HandChangedMapper._());
      LocalWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      ItemLocationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HandChanged';

  static ItemLocation? _$deck(HandChanged v) => v.deck;
  static const Field<HandChanged, ItemLocation> _f$deck =
      Field('deck', _$deck, opt: true);
  static bool? _$show(HandChanged v) => v.show;
  static const Field<HandChanged, bool> _f$show =
      Field('show', _$show, opt: true, def: true);

  @override
  final MappableFields<HandChanged> fields = const {
    #deck: _f$deck,
    #show: _f$show,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'HandChanged';
  @override
  late final ClassMapperBase superMapper =
      LocalWorldEventMapper.ensureInitialized();

  static HandChanged _instantiate(DecodingData data) {
    return HandChanged(deck: data.dec(_f$deck), show: data.dec(_f$show));
  }

  @override
  final Function instantiate = _instantiate;

  static HandChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HandChanged>(map);
  }

  static HandChanged fromJson(String json) {
    return ensureInitialized().decodeJson<HandChanged>(json);
  }
}

mixin HandChangedMappable {
  String toJson() {
    return HandChangedMapper.ensureInitialized()
        .encodeJson<HandChanged>(this as HandChanged);
  }

  Map<String, dynamic> toMap() {
    return HandChangedMapper.ensureInitialized()
        .encodeMap<HandChanged>(this as HandChanged);
  }

  HandChangedCopyWith<HandChanged, HandChanged, HandChanged> get copyWith =>
      _HandChangedCopyWithImpl(this as HandChanged, $identity, $identity);
  @override
  String toString() {
    return HandChangedMapper.ensureInitialized()
        .stringifyValue(this as HandChanged);
  }

  @override
  bool operator ==(Object other) {
    return HandChangedMapper.ensureInitialized()
        .equalsValue(this as HandChanged, other);
  }

  @override
  int get hashCode {
    return HandChangedMapper.ensureInitialized().hashValue(this as HandChanged);
  }
}

extension HandChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HandChanged, $Out> {
  HandChangedCopyWith<$R, HandChanged, $Out> get $asHandChanged =>
      $base.as((v, t, t2) => _HandChangedCopyWithImpl(v, t, t2));
}

abstract class HandChangedCopyWith<$R, $In extends HandChanged, $Out>
    implements LocalWorldEventCopyWith<$R, $In, $Out> {
  ItemLocationCopyWith<$R, ItemLocation, ItemLocation>? get deck;
  @override
  $R call({ItemLocation? deck, bool? show});
  HandChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HandChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HandChanged, $Out>
    implements HandChangedCopyWith<$R, HandChanged, $Out> {
  _HandChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HandChanged> $mapper =
      HandChangedMapper.ensureInitialized();
  @override
  ItemLocationCopyWith<$R, ItemLocation, ItemLocation>? get deck =>
      $value.deck?.copyWith.$chain((v) => call(deck: v));
  @override
  $R call({Object? deck = $none, bool? show}) => $apply(FieldCopyWithData(
      {if (deck != $none) #deck: deck, if (show != null) #show: show}));
  @override
  HandChanged $make(CopyWithData data) => HandChanged(
      deck: data.get(#deck, or: $value.deck),
      show: data.get(#show, or: $value.show));

  @override
  HandChangedCopyWith<$R2, HandChanged, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HandChangedCopyWithImpl($value, $cast, t);
}

class CellSwitchedMapper extends SubClassMapperBase<CellSwitched> {
  CellSwitchedMapper._();

  static CellSwitchedMapper? _instance;
  static CellSwitchedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CellSwitchedMapper._());
      LocalWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      VectorDefinitionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CellSwitched';

  static VectorDefinition? _$cell(CellSwitched v) => v.cell;
  static const Field<CellSwitched, VectorDefinition> _f$cell =
      Field('cell', _$cell);
  static bool _$toggle(CellSwitched v) => v.toggle;
  static const Field<CellSwitched, bool> _f$toggle =
      Field('toggle', _$toggle, opt: true, def: false);

  @override
  final MappableFields<CellSwitched> fields = const {
    #cell: _f$cell,
    #toggle: _f$toggle,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'CellSwitched';
  @override
  late final ClassMapperBase superMapper =
      LocalWorldEventMapper.ensureInitialized();

  static CellSwitched _instantiate(DecodingData data) {
    return CellSwitched(data.dec(_f$cell), toggle: data.dec(_f$toggle));
  }

  @override
  final Function instantiate = _instantiate;

  static CellSwitched fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CellSwitched>(map);
  }

  static CellSwitched fromJson(String json) {
    return ensureInitialized().decodeJson<CellSwitched>(json);
  }
}

mixin CellSwitchedMappable {
  String toJson() {
    return CellSwitchedMapper.ensureInitialized()
        .encodeJson<CellSwitched>(this as CellSwitched);
  }

  Map<String, dynamic> toMap() {
    return CellSwitchedMapper.ensureInitialized()
        .encodeMap<CellSwitched>(this as CellSwitched);
  }

  CellSwitchedCopyWith<CellSwitched, CellSwitched, CellSwitched> get copyWith =>
      _CellSwitchedCopyWithImpl(this as CellSwitched, $identity, $identity);
  @override
  String toString() {
    return CellSwitchedMapper.ensureInitialized()
        .stringifyValue(this as CellSwitched);
  }

  @override
  bool operator ==(Object other) {
    return CellSwitchedMapper.ensureInitialized()
        .equalsValue(this as CellSwitched, other);
  }

  @override
  int get hashCode {
    return CellSwitchedMapper.ensureInitialized()
        .hashValue(this as CellSwitched);
  }
}

extension CellSwitchedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CellSwitched, $Out> {
  CellSwitchedCopyWith<$R, CellSwitched, $Out> get $asCellSwitched =>
      $base.as((v, t, t2) => _CellSwitchedCopyWithImpl(v, t, t2));
}

abstract class CellSwitchedCopyWith<$R, $In extends CellSwitched, $Out>
    implements LocalWorldEventCopyWith<$R, $In, $Out> {
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition>? get cell;
  @override
  $R call({VectorDefinition? cell, bool? toggle});
  CellSwitchedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CellSwitchedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CellSwitched, $Out>
    implements CellSwitchedCopyWith<$R, CellSwitched, $Out> {
  _CellSwitchedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CellSwitched> $mapper =
      CellSwitchedMapper.ensureInitialized();
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition>? get cell =>
      $value.cell?.copyWith.$chain((v) => call(cell: v));
  @override
  $R call({Object? cell = $none, bool? toggle}) => $apply(FieldCopyWithData(
      {if (cell != $none) #cell: cell, if (toggle != null) #toggle: toggle}));
  @override
  CellSwitched $make(CopyWithData data) =>
      CellSwitched(data.get(#cell, or: $value.cell),
          toggle: data.get(#toggle, or: $value.toggle));

  @override
  CellSwitchedCopyWith<$R2, CellSwitched, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CellSwitchedCopyWithImpl($value, $cast, t);
}

class ColorSchemeChangedMapper extends SubClassMapperBase<ColorSchemeChanged> {
  ColorSchemeChangedMapper._();

  static ColorSchemeChangedMapper? _instance;
  static ColorSchemeChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorSchemeChangedMapper._());
      LocalWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ColorSchemeChanged';

  static ColorScheme? _$colorScheme(ColorSchemeChanged v) => v.colorScheme;
  static const Field<ColorSchemeChanged, ColorScheme> _f$colorScheme =
      Field('colorScheme', _$colorScheme);

  @override
  final MappableFields<ColorSchemeChanged> fields = const {
    #colorScheme: _f$colorScheme,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'ColorSchemeChanged';
  @override
  late final ClassMapperBase superMapper =
      LocalWorldEventMapper.ensureInitialized();

  static ColorSchemeChanged _instantiate(DecodingData data) {
    return ColorSchemeChanged(data.dec(_f$colorScheme));
  }

  @override
  final Function instantiate = _instantiate;

  static ColorSchemeChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColorSchemeChanged>(map);
  }

  static ColorSchemeChanged fromJson(String json) {
    return ensureInitialized().decodeJson<ColorSchemeChanged>(json);
  }
}

mixin ColorSchemeChangedMappable {
  String toJson() {
    return ColorSchemeChangedMapper.ensureInitialized()
        .encodeJson<ColorSchemeChanged>(this as ColorSchemeChanged);
  }

  Map<String, dynamic> toMap() {
    return ColorSchemeChangedMapper.ensureInitialized()
        .encodeMap<ColorSchemeChanged>(this as ColorSchemeChanged);
  }

  ColorSchemeChangedCopyWith<ColorSchemeChanged, ColorSchemeChanged,
          ColorSchemeChanged>
      get copyWith => _ColorSchemeChangedCopyWithImpl(
          this as ColorSchemeChanged, $identity, $identity);
  @override
  String toString() {
    return ColorSchemeChangedMapper.ensureInitialized()
        .stringifyValue(this as ColorSchemeChanged);
  }

  @override
  bool operator ==(Object other) {
    return ColorSchemeChangedMapper.ensureInitialized()
        .equalsValue(this as ColorSchemeChanged, other);
  }

  @override
  int get hashCode {
    return ColorSchemeChangedMapper.ensureInitialized()
        .hashValue(this as ColorSchemeChanged);
  }
}

extension ColorSchemeChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColorSchemeChanged, $Out> {
  ColorSchemeChangedCopyWith<$R, ColorSchemeChanged, $Out>
      get $asColorSchemeChanged =>
          $base.as((v, t, t2) => _ColorSchemeChangedCopyWithImpl(v, t, t2));
}

abstract class ColorSchemeChangedCopyWith<$R, $In extends ColorSchemeChanged,
    $Out> implements LocalWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call({ColorScheme? colorScheme});
  ColorSchemeChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ColorSchemeChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColorSchemeChanged, $Out>
    implements ColorSchemeChangedCopyWith<$R, ColorSchemeChanged, $Out> {
  _ColorSchemeChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColorSchemeChanged> $mapper =
      ColorSchemeChangedMapper.ensureInitialized();
  @override
  $R call({Object? colorScheme = $none}) => $apply(
      FieldCopyWithData({if (colorScheme != $none) #colorScheme: colorScheme}));
  @override
  ColorSchemeChanged $make(CopyWithData data) =>
      ColorSchemeChanged(data.get(#colorScheme, or: $value.colorScheme));

  @override
  ColorSchemeChangedCopyWith<$R2, ColorSchemeChanged, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ColorSchemeChangedCopyWithImpl($value, $cast, t);
}