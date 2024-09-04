// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'event.dart';

class WorldEventMapper extends ClassMapperBase<WorldEvent> {
  WorldEventMapper._();

  static WorldEventMapper? _instance;
  static WorldEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorldEventMapper._());
      PlayableWorldEventMapper.ensureInitialized();
      ClientWorldEventMapper.ensureInitialized();
      HybridWorldEventMapper.ensureInitialized();
      LocalWorldEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WorldEvent';

  @override
  final MappableFields<WorldEvent> fields = const {};

  static WorldEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'WorldEvent', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static WorldEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorldEvent>(map);
  }

  static WorldEvent fromJson(String json) {
    return ensureInitialized().decodeJson<WorldEvent>(json);
  }
}

mixin WorldEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  WorldEventCopyWith<WorldEvent, WorldEvent, WorldEvent> get copyWith;
}

abstract class WorldEventCopyWith<$R, $In extends WorldEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  WorldEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class PlayableWorldEventMapper extends SubClassMapperBase<PlayableWorldEvent> {
  PlayableWorldEventMapper._();

  static PlayableWorldEventMapper? _instance;
  static PlayableWorldEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayableWorldEventMapper._());
      WorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      ServerWorldEventMapper.ensureInitialized();
      LocalWorldEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayableWorldEvent';

  @override
  final MappableFields<PlayableWorldEvent> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'PlayableWorldEvent';
  @override
  late final ClassMapperBase superMapper = WorldEventMapper.ensureInitialized();

  static PlayableWorldEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'PlayableWorldEvent', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static PlayableWorldEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayableWorldEvent>(map);
  }

  static PlayableWorldEvent fromJson(String json) {
    return ensureInitialized().decodeJson<PlayableWorldEvent>(json);
  }
}

mixin PlayableWorldEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  PlayableWorldEventCopyWith<PlayableWorldEvent, PlayableWorldEvent,
      PlayableWorldEvent> get copyWith;
}

abstract class PlayableWorldEventCopyWith<$R, $In extends PlayableWorldEvent,
    $Out> implements WorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  PlayableWorldEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class ServerWorldEventMapper extends SubClassMapperBase<ServerWorldEvent> {
  ServerWorldEventMapper._();

  static ServerWorldEventMapper? _instance;
  static ServerWorldEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerWorldEventMapper._());
      PlayableWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      WorldInitializedMapper.ensureInitialized();
      TeamJoinedMapper.ensureInitialized();
      TeamLeftMapper.ensureInitialized();
      VariationChangedMapper.ensureInitialized();
      CellShuffledMapper.ensureInitialized();
      HybridWorldEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerWorldEvent';

  @override
  final MappableFields<ServerWorldEvent> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'ServerWorldEvent';
  @override
  late final ClassMapperBase superMapper =
      PlayableWorldEventMapper.ensureInitialized();

  static ServerWorldEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'ServerWorldEvent', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static ServerWorldEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerWorldEvent>(map);
  }

  static ServerWorldEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerWorldEvent>(json);
  }
}

mixin ServerWorldEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ServerWorldEventCopyWith<ServerWorldEvent, ServerWorldEvent, ServerWorldEvent>
      get copyWith;
}

abstract class ServerWorldEventCopyWith<$R, $In extends ServerWorldEvent, $Out>
    implements PlayableWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  ServerWorldEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class WorldInitializedMapper extends SubClassMapperBase<WorldInitialized> {
  WorldInitializedMapper._();

  static WorldInitializedMapper? _instance;
  static WorldInitializedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorldInitializedMapper._());
      ServerWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      GameTableMapper.ensureInitialized();
      GameInfoMapper.ensureInitialized();
      FileMetadataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WorldInitialized';

  static GameTable _$table(WorldInitialized v) => v.table;
  static const Field<WorldInitialized, GameTable> _f$table =
      Field('table', _$table);
  static GameInfo _$info(WorldInitialized v) => v.info;
  static const Field<WorldInitialized, GameInfo> _f$info =
      Field('info', _$info);
  static Map<String, Set<int>> _$teamMembers(WorldInitialized v) =>
      v.teamMembers;
  static const Field<WorldInitialized, Map<String, Set<int>>> _f$teamMembers =
      Field('teamMembers', _$teamMembers, opt: true, def: const {});
  static int? _$id(WorldInitialized v) => v.id;
  static const Field<WorldInitialized, int> _f$id =
      Field('id', _$id, opt: true);
  static Map<String, FileMetadata> _$packsSignature(WorldInitialized v) =>
      v.packsSignature;
  static const Field<WorldInitialized, Map<String, FileMetadata>>
      _f$packsSignature =
      Field('packsSignature', _$packsSignature, opt: true, def: const {});

  @override
  final MappableFields<WorldInitialized> fields = const {
    #table: _f$table,
    #info: _f$info,
    #teamMembers: _f$teamMembers,
    #id: _f$id,
    #packsSignature: _f$packsSignature,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'WorldInitialized';
  @override
  late final ClassMapperBase superMapper =
      ServerWorldEventMapper.ensureInitialized();

  static WorldInitialized _instantiate(DecodingData data) {
    return WorldInitialized(
        table: data.dec(_f$table),
        info: data.dec(_f$info),
        teamMembers: data.dec(_f$teamMembers),
        id: data.dec(_f$id),
        packsSignature: data.dec(_f$packsSignature));
  }

  @override
  final Function instantiate = _instantiate;

  static WorldInitialized fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorldInitialized>(map);
  }

  static WorldInitialized fromJson(String json) {
    return ensureInitialized().decodeJson<WorldInitialized>(json);
  }
}

mixin WorldInitializedMappable {
  String toJson() {
    return WorldInitializedMapper.ensureInitialized()
        .encodeJson<WorldInitialized>(this as WorldInitialized);
  }

  Map<String, dynamic> toMap() {
    return WorldInitializedMapper.ensureInitialized()
        .encodeMap<WorldInitialized>(this as WorldInitialized);
  }

  WorldInitializedCopyWith<WorldInitialized, WorldInitialized, WorldInitialized>
      get copyWith => _WorldInitializedCopyWithImpl(
          this as WorldInitialized, $identity, $identity);
  @override
  String toString() {
    return WorldInitializedMapper.ensureInitialized()
        .stringifyValue(this as WorldInitialized);
  }

  @override
  bool operator ==(Object other) {
    return WorldInitializedMapper.ensureInitialized()
        .equalsValue(this as WorldInitialized, other);
  }

  @override
  int get hashCode {
    return WorldInitializedMapper.ensureInitialized()
        .hashValue(this as WorldInitialized);
  }
}

extension WorldInitializedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WorldInitialized, $Out> {
  WorldInitializedCopyWith<$R, WorldInitialized, $Out>
      get $asWorldInitialized =>
          $base.as((v, t, t2) => _WorldInitializedCopyWithImpl(v, t, t2));
}

abstract class WorldInitializedCopyWith<$R, $In extends WorldInitialized, $Out>
    implements ServerWorldEventCopyWith<$R, $In, $Out> {
  GameTableCopyWith<$R, GameTable, GameTable> get table;
  GameInfoCopyWith<$R, GameInfo, GameInfo> get info;
  MapCopyWith<$R, String, Set<int>, ObjectCopyWith<$R, Set<int>, Set<int>>>
      get teamMembers;
  MapCopyWith<$R, String, FileMetadata,
      FileMetadataCopyWith<$R, FileMetadata, FileMetadata>> get packsSignature;
  @override
  $R call(
      {GameTable? table,
      GameInfo? info,
      Map<String, Set<int>>? teamMembers,
      int? id,
      Map<String, FileMetadata>? packsSignature});
  WorldInitializedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WorldInitializedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorldInitialized, $Out>
    implements WorldInitializedCopyWith<$R, WorldInitialized, $Out> {
  _WorldInitializedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorldInitialized> $mapper =
      WorldInitializedMapper.ensureInitialized();
  @override
  GameTableCopyWith<$R, GameTable, GameTable> get table =>
      $value.table.copyWith.$chain((v) => call(table: v));
  @override
  GameInfoCopyWith<$R, GameInfo, GameInfo> get info =>
      $value.info.copyWith.$chain((v) => call(info: v));
  @override
  MapCopyWith<$R, String, Set<int>, ObjectCopyWith<$R, Set<int>, Set<int>>>
      get teamMembers => MapCopyWith(
          $value.teamMembers,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(teamMembers: v));
  @override
  MapCopyWith<$R, String, FileMetadata,
          FileMetadataCopyWith<$R, FileMetadata, FileMetadata>>
      get packsSignature => MapCopyWith($value.packsSignature,
          (v, t) => v.copyWith.$chain(t), (v) => call(packsSignature: v));
  @override
  $R call(
          {GameTable? table,
          GameInfo? info,
          Map<String, Set<int>>? teamMembers,
          Object? id = $none,
          Map<String, FileMetadata>? packsSignature}) =>
      $apply(FieldCopyWithData({
        if (table != null) #table: table,
        if (info != null) #info: info,
        if (teamMembers != null) #teamMembers: teamMembers,
        if (id != $none) #id: id,
        if (packsSignature != null) #packsSignature: packsSignature
      }));
  @override
  WorldInitialized $make(CopyWithData data) => WorldInitialized(
      table: data.get(#table, or: $value.table),
      info: data.get(#info, or: $value.info),
      teamMembers: data.get(#teamMembers, or: $value.teamMembers),
      id: data.get(#id, or: $value.id),
      packsSignature: data.get(#packsSignature, or: $value.packsSignature));

  @override
  WorldInitializedCopyWith<$R2, WorldInitialized, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WorldInitializedCopyWithImpl($value, $cast, t);
}

class TeamJoinedMapper extends SubClassMapperBase<TeamJoined> {
  TeamJoinedMapper._();

  static TeamJoinedMapper? _instance;
  static TeamJoinedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TeamJoinedMapper._());
      ServerWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TeamJoined';

  static int _$user(TeamJoined v) => v.user;
  static const Field<TeamJoined, int> _f$user = Field('user', _$user);
  static String _$team(TeamJoined v) => v.team;
  static const Field<TeamJoined, String> _f$team = Field('team', _$team);

  @override
  final MappableFields<TeamJoined> fields = const {
    #user: _f$user,
    #team: _f$team,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'TeamJoined';
  @override
  late final ClassMapperBase superMapper =
      ServerWorldEventMapper.ensureInitialized();

  static TeamJoined _instantiate(DecodingData data) {
    return TeamJoined(data.dec(_f$user), data.dec(_f$team));
  }

  @override
  final Function instantiate = _instantiate;

  static TeamJoined fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TeamJoined>(map);
  }

  static TeamJoined fromJson(String json) {
    return ensureInitialized().decodeJson<TeamJoined>(json);
  }
}

mixin TeamJoinedMappable {
  String toJson() {
    return TeamJoinedMapper.ensureInitialized()
        .encodeJson<TeamJoined>(this as TeamJoined);
  }

  Map<String, dynamic> toMap() {
    return TeamJoinedMapper.ensureInitialized()
        .encodeMap<TeamJoined>(this as TeamJoined);
  }

  TeamJoinedCopyWith<TeamJoined, TeamJoined, TeamJoined> get copyWith =>
      _TeamJoinedCopyWithImpl(this as TeamJoined, $identity, $identity);
  @override
  String toString() {
    return TeamJoinedMapper.ensureInitialized()
        .stringifyValue(this as TeamJoined);
  }

  @override
  bool operator ==(Object other) {
    return TeamJoinedMapper.ensureInitialized()
        .equalsValue(this as TeamJoined, other);
  }

  @override
  int get hashCode {
    return TeamJoinedMapper.ensureInitialized().hashValue(this as TeamJoined);
  }
}

extension TeamJoinedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TeamJoined, $Out> {
  TeamJoinedCopyWith<$R, TeamJoined, $Out> get $asTeamJoined =>
      $base.as((v, t, t2) => _TeamJoinedCopyWithImpl(v, t, t2));
}

abstract class TeamJoinedCopyWith<$R, $In extends TeamJoined, $Out>
    implements ServerWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? user, String? team});
  TeamJoinedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TeamJoinedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TeamJoined, $Out>
    implements TeamJoinedCopyWith<$R, TeamJoined, $Out> {
  _TeamJoinedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TeamJoined> $mapper =
      TeamJoinedMapper.ensureInitialized();
  @override
  $R call({int? user, String? team}) => $apply(FieldCopyWithData(
      {if (user != null) #user: user, if (team != null) #team: team}));
  @override
  TeamJoined $make(CopyWithData data) => TeamJoined(
      data.get(#user, or: $value.user), data.get(#team, or: $value.team));

  @override
  TeamJoinedCopyWith<$R2, TeamJoined, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TeamJoinedCopyWithImpl($value, $cast, t);
}

class TeamLeftMapper extends SubClassMapperBase<TeamLeft> {
  TeamLeftMapper._();

  static TeamLeftMapper? _instance;
  static TeamLeftMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TeamLeftMapper._());
      ServerWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TeamLeft';

  static int _$user(TeamLeft v) => v.user;
  static const Field<TeamLeft, int> _f$user = Field('user', _$user);
  static String _$team(TeamLeft v) => v.team;
  static const Field<TeamLeft, String> _f$team = Field('team', _$team);

  @override
  final MappableFields<TeamLeft> fields = const {
    #user: _f$user,
    #team: _f$team,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'TeamLeft';
  @override
  late final ClassMapperBase superMapper =
      ServerWorldEventMapper.ensureInitialized();

  static TeamLeft _instantiate(DecodingData data) {
    return TeamLeft(data.dec(_f$user), data.dec(_f$team));
  }

  @override
  final Function instantiate = _instantiate;

  static TeamLeft fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TeamLeft>(map);
  }

  static TeamLeft fromJson(String json) {
    return ensureInitialized().decodeJson<TeamLeft>(json);
  }
}

mixin TeamLeftMappable {
  String toJson() {
    return TeamLeftMapper.ensureInitialized()
        .encodeJson<TeamLeft>(this as TeamLeft);
  }

  Map<String, dynamic> toMap() {
    return TeamLeftMapper.ensureInitialized()
        .encodeMap<TeamLeft>(this as TeamLeft);
  }

  TeamLeftCopyWith<TeamLeft, TeamLeft, TeamLeft> get copyWith =>
      _TeamLeftCopyWithImpl(this as TeamLeft, $identity, $identity);
  @override
  String toString() {
    return TeamLeftMapper.ensureInitialized().stringifyValue(this as TeamLeft);
  }

  @override
  bool operator ==(Object other) {
    return TeamLeftMapper.ensureInitialized()
        .equalsValue(this as TeamLeft, other);
  }

  @override
  int get hashCode {
    return TeamLeftMapper.ensureInitialized().hashValue(this as TeamLeft);
  }
}

extension TeamLeftValueCopy<$R, $Out> on ObjectCopyWith<$R, TeamLeft, $Out> {
  TeamLeftCopyWith<$R, TeamLeft, $Out> get $asTeamLeft =>
      $base.as((v, t, t2) => _TeamLeftCopyWithImpl(v, t, t2));
}

abstract class TeamLeftCopyWith<$R, $In extends TeamLeft, $Out>
    implements ServerWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? user, String? team});
  TeamLeftCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TeamLeftCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TeamLeft, $Out>
    implements TeamLeftCopyWith<$R, TeamLeft, $Out> {
  _TeamLeftCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TeamLeft> $mapper =
      TeamLeftMapper.ensureInitialized();
  @override
  $R call({int? user, String? team}) => $apply(FieldCopyWithData(
      {if (user != null) #user: user, if (team != null) #team: team}));
  @override
  TeamLeft $make(CopyWithData data) => TeamLeft(
      data.get(#user, or: $value.user), data.get(#team, or: $value.team));

  @override
  TeamLeftCopyWith<$R2, TeamLeft, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TeamLeftCopyWithImpl($value, $cast, t);
}

class VariationChangedMapper extends SubClassMapperBase<VariationChanged> {
  VariationChangedMapper._();

  static VariationChangedMapper? _instance;
  static VariationChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VariationChangedMapper._());
      ServerWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      VectorDefinitionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VariationChanged';

  static VectorDefinition _$cell(VariationChanged v) => v.cell;
  static const Field<VariationChanged, VectorDefinition> _f$cell =
      Field('cell', _$cell);
  static int _$object(VariationChanged v) => v.object;
  static const Field<VariationChanged, int> _f$object =
      Field('object', _$object);
  static String? _$variation(VariationChanged v) => v.variation;
  static const Field<VariationChanged, String> _f$variation =
      Field('variation', _$variation);

  @override
  final MappableFields<VariationChanged> fields = const {
    #cell: _f$cell,
    #object: _f$object,
    #variation: _f$variation,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'VariationChanged';
  @override
  late final ClassMapperBase superMapper =
      ServerWorldEventMapper.ensureInitialized();

  static VariationChanged _instantiate(DecodingData data) {
    return VariationChanged(
        data.dec(_f$cell), data.dec(_f$object), data.dec(_f$variation));
  }

  @override
  final Function instantiate = _instantiate;

  static VariationChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VariationChanged>(map);
  }

  static VariationChanged fromJson(String json) {
    return ensureInitialized().decodeJson<VariationChanged>(json);
  }
}

mixin VariationChangedMappable {
  String toJson() {
    return VariationChangedMapper.ensureInitialized()
        .encodeJson<VariationChanged>(this as VariationChanged);
  }

  Map<String, dynamic> toMap() {
    return VariationChangedMapper.ensureInitialized()
        .encodeMap<VariationChanged>(this as VariationChanged);
  }

  VariationChangedCopyWith<VariationChanged, VariationChanged, VariationChanged>
      get copyWith => _VariationChangedCopyWithImpl(
          this as VariationChanged, $identity, $identity);
  @override
  String toString() {
    return VariationChangedMapper.ensureInitialized()
        .stringifyValue(this as VariationChanged);
  }

  @override
  bool operator ==(Object other) {
    return VariationChangedMapper.ensureInitialized()
        .equalsValue(this as VariationChanged, other);
  }

  @override
  int get hashCode {
    return VariationChangedMapper.ensureInitialized()
        .hashValue(this as VariationChanged);
  }
}

extension VariationChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VariationChanged, $Out> {
  VariationChangedCopyWith<$R, VariationChanged, $Out>
      get $asVariationChanged =>
          $base.as((v, t, t2) => _VariationChangedCopyWithImpl(v, t, t2));
}

abstract class VariationChangedCopyWith<$R, $In extends VariationChanged, $Out>
    implements ServerWorldEventCopyWith<$R, $In, $Out> {
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell;
  @override
  $R call({VectorDefinition? cell, int? object, String? variation});
  VariationChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VariationChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VariationChanged, $Out>
    implements VariationChangedCopyWith<$R, VariationChanged, $Out> {
  _VariationChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VariationChanged> $mapper =
      VariationChangedMapper.ensureInitialized();
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell =>
      $value.cell.copyWith.$chain((v) => call(cell: v));
  @override
  $R call({VectorDefinition? cell, int? object, Object? variation = $none}) =>
      $apply(FieldCopyWithData({
        if (cell != null) #cell: cell,
        if (object != null) #object: object,
        if (variation != $none) #variation: variation
      }));
  @override
  VariationChanged $make(CopyWithData data) => VariationChanged(
      data.get(#cell, or: $value.cell),
      data.get(#object, or: $value.object),
      data.get(#variation, or: $value.variation));

  @override
  VariationChangedCopyWith<$R2, VariationChanged, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VariationChangedCopyWithImpl($value, $cast, t);
}

class CellShuffledMapper extends SubClassMapperBase<CellShuffled> {
  CellShuffledMapper._();

  static CellShuffledMapper? _instance;
  static CellShuffledMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CellShuffledMapper._());
      ServerWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      VectorDefinitionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CellShuffled';

  static VectorDefinition _$cell(CellShuffled v) => v.cell;
  static const Field<CellShuffled, VectorDefinition> _f$cell =
      Field('cell', _$cell);
  static List<int> _$positions(CellShuffled v) => v.positions;
  static const Field<CellShuffled, List<int>> _f$positions =
      Field('positions', _$positions);

  @override
  final MappableFields<CellShuffled> fields = const {
    #cell: _f$cell,
    #positions: _f$positions,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'CellShuffled';
  @override
  late final ClassMapperBase superMapper =
      ServerWorldEventMapper.ensureInitialized();

  static CellShuffled _instantiate(DecodingData data) {
    return CellShuffled(data.dec(_f$cell), data.dec(_f$positions));
  }

  @override
  final Function instantiate = _instantiate;

  static CellShuffled fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CellShuffled>(map);
  }

  static CellShuffled fromJson(String json) {
    return ensureInitialized().decodeJson<CellShuffled>(json);
  }
}

mixin CellShuffledMappable {
  String toJson() {
    return CellShuffledMapper.ensureInitialized()
        .encodeJson<CellShuffled>(this as CellShuffled);
  }

  Map<String, dynamic> toMap() {
    return CellShuffledMapper.ensureInitialized()
        .encodeMap<CellShuffled>(this as CellShuffled);
  }

  CellShuffledCopyWith<CellShuffled, CellShuffled, CellShuffled> get copyWith =>
      _CellShuffledCopyWithImpl(this as CellShuffled, $identity, $identity);
  @override
  String toString() {
    return CellShuffledMapper.ensureInitialized()
        .stringifyValue(this as CellShuffled);
  }

  @override
  bool operator ==(Object other) {
    return CellShuffledMapper.ensureInitialized()
        .equalsValue(this as CellShuffled, other);
  }

  @override
  int get hashCode {
    return CellShuffledMapper.ensureInitialized()
        .hashValue(this as CellShuffled);
  }
}

extension CellShuffledValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CellShuffled, $Out> {
  CellShuffledCopyWith<$R, CellShuffled, $Out> get $asCellShuffled =>
      $base.as((v, t, t2) => _CellShuffledCopyWithImpl(v, t, t2));
}

abstract class CellShuffledCopyWith<$R, $In extends CellShuffled, $Out>
    implements ServerWorldEventCopyWith<$R, $In, $Out> {
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get positions;
  @override
  $R call({VectorDefinition? cell, List<int>? positions});
  CellShuffledCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CellShuffledCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CellShuffled, $Out>
    implements CellShuffledCopyWith<$R, CellShuffled, $Out> {
  _CellShuffledCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CellShuffled> $mapper =
      CellShuffledMapper.ensureInitialized();
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell =>
      $value.cell.copyWith.$chain((v) => call(cell: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get positions =>
      ListCopyWith($value.positions, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(positions: v));
  @override
  $R call({VectorDefinition? cell, List<int>? positions}) =>
      $apply(FieldCopyWithData({
        if (cell != null) #cell: cell,
        if (positions != null) #positions: positions
      }));
  @override
  CellShuffled $make(CopyWithData data) => CellShuffled(
      data.get(#cell, or: $value.cell),
      data.get(#positions, or: $value.positions));

  @override
  CellShuffledCopyWith<$R2, CellShuffled, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CellShuffledCopyWithImpl($value, $cast, t);
}

class ClientWorldEventMapper extends SubClassMapperBase<ClientWorldEvent> {
  ClientWorldEventMapper._();

  static ClientWorldEventMapper? _instance;
  static ClientWorldEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientWorldEventMapper._());
      WorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      TeamJoinRequestMapper.ensureInitialized();
      TeamLeaveRequestMapper.ensureInitialized();
      RollObjectRequestMapper.ensureInitialized();
      ShuffleCellRequestMapper.ensureInitialized();
      PacksChangeRequestMapper.ensureInitialized();
      HybridWorldEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWorldEvent';

  @override
  final MappableFields<ClientWorldEvent> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'ClientWorldEvent';
  @override
  late final ClassMapperBase superMapper = WorldEventMapper.ensureInitialized();

  static ClientWorldEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'ClientWorldEvent', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWorldEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWorldEvent>(map);
  }

  static ClientWorldEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWorldEvent>(json);
  }
}

mixin ClientWorldEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ClientWorldEventCopyWith<ClientWorldEvent, ClientWorldEvent, ClientWorldEvent>
      get copyWith;
}

abstract class ClientWorldEventCopyWith<$R, $In extends ClientWorldEvent, $Out>
    implements WorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  ClientWorldEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class TeamJoinRequestMapper extends SubClassMapperBase<TeamJoinRequest> {
  TeamJoinRequestMapper._();

  static TeamJoinRequestMapper? _instance;
  static TeamJoinRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TeamJoinRequestMapper._());
      ClientWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TeamJoinRequest';

  static String _$team(TeamJoinRequest v) => v.team;
  static const Field<TeamJoinRequest, String> _f$team = Field('team', _$team);

  @override
  final MappableFields<TeamJoinRequest> fields = const {
    #team: _f$team,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'TeamJoinRequest';
  @override
  late final ClassMapperBase superMapper =
      ClientWorldEventMapper.ensureInitialized();

  static TeamJoinRequest _instantiate(DecodingData data) {
    return TeamJoinRequest(data.dec(_f$team));
  }

  @override
  final Function instantiate = _instantiate;

  static TeamJoinRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TeamJoinRequest>(map);
  }

  static TeamJoinRequest fromJson(String json) {
    return ensureInitialized().decodeJson<TeamJoinRequest>(json);
  }
}

mixin TeamJoinRequestMappable {
  String toJson() {
    return TeamJoinRequestMapper.ensureInitialized()
        .encodeJson<TeamJoinRequest>(this as TeamJoinRequest);
  }

  Map<String, dynamic> toMap() {
    return TeamJoinRequestMapper.ensureInitialized()
        .encodeMap<TeamJoinRequest>(this as TeamJoinRequest);
  }

  TeamJoinRequestCopyWith<TeamJoinRequest, TeamJoinRequest, TeamJoinRequest>
      get copyWith => _TeamJoinRequestCopyWithImpl(
          this as TeamJoinRequest, $identity, $identity);
  @override
  String toString() {
    return TeamJoinRequestMapper.ensureInitialized()
        .stringifyValue(this as TeamJoinRequest);
  }

  @override
  bool operator ==(Object other) {
    return TeamJoinRequestMapper.ensureInitialized()
        .equalsValue(this as TeamJoinRequest, other);
  }

  @override
  int get hashCode {
    return TeamJoinRequestMapper.ensureInitialized()
        .hashValue(this as TeamJoinRequest);
  }
}

extension TeamJoinRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TeamJoinRequest, $Out> {
  TeamJoinRequestCopyWith<$R, TeamJoinRequest, $Out> get $asTeamJoinRequest =>
      $base.as((v, t, t2) => _TeamJoinRequestCopyWithImpl(v, t, t2));
}

abstract class TeamJoinRequestCopyWith<$R, $In extends TeamJoinRequest, $Out>
    implements ClientWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? team});
  TeamJoinRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TeamJoinRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TeamJoinRequest, $Out>
    implements TeamJoinRequestCopyWith<$R, TeamJoinRequest, $Out> {
  _TeamJoinRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TeamJoinRequest> $mapper =
      TeamJoinRequestMapper.ensureInitialized();
  @override
  $R call({String? team}) =>
      $apply(FieldCopyWithData({if (team != null) #team: team}));
  @override
  TeamJoinRequest $make(CopyWithData data) =>
      TeamJoinRequest(data.get(#team, or: $value.team));

  @override
  TeamJoinRequestCopyWith<$R2, TeamJoinRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TeamJoinRequestCopyWithImpl($value, $cast, t);
}

class TeamLeaveRequestMapper extends SubClassMapperBase<TeamLeaveRequest> {
  TeamLeaveRequestMapper._();

  static TeamLeaveRequestMapper? _instance;
  static TeamLeaveRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TeamLeaveRequestMapper._());
      ClientWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TeamLeaveRequest';

  static String _$team(TeamLeaveRequest v) => v.team;
  static const Field<TeamLeaveRequest, String> _f$team = Field('team', _$team);

  @override
  final MappableFields<TeamLeaveRequest> fields = const {
    #team: _f$team,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'TeamLeaveRequest';
  @override
  late final ClassMapperBase superMapper =
      ClientWorldEventMapper.ensureInitialized();

  static TeamLeaveRequest _instantiate(DecodingData data) {
    return TeamLeaveRequest(data.dec(_f$team));
  }

  @override
  final Function instantiate = _instantiate;

  static TeamLeaveRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TeamLeaveRequest>(map);
  }

  static TeamLeaveRequest fromJson(String json) {
    return ensureInitialized().decodeJson<TeamLeaveRequest>(json);
  }
}

mixin TeamLeaveRequestMappable {
  String toJson() {
    return TeamLeaveRequestMapper.ensureInitialized()
        .encodeJson<TeamLeaveRequest>(this as TeamLeaveRequest);
  }

  Map<String, dynamic> toMap() {
    return TeamLeaveRequestMapper.ensureInitialized()
        .encodeMap<TeamLeaveRequest>(this as TeamLeaveRequest);
  }

  TeamLeaveRequestCopyWith<TeamLeaveRequest, TeamLeaveRequest, TeamLeaveRequest>
      get copyWith => _TeamLeaveRequestCopyWithImpl(
          this as TeamLeaveRequest, $identity, $identity);
  @override
  String toString() {
    return TeamLeaveRequestMapper.ensureInitialized()
        .stringifyValue(this as TeamLeaveRequest);
  }

  @override
  bool operator ==(Object other) {
    return TeamLeaveRequestMapper.ensureInitialized()
        .equalsValue(this as TeamLeaveRequest, other);
  }

  @override
  int get hashCode {
    return TeamLeaveRequestMapper.ensureInitialized()
        .hashValue(this as TeamLeaveRequest);
  }
}

extension TeamLeaveRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TeamLeaveRequest, $Out> {
  TeamLeaveRequestCopyWith<$R, TeamLeaveRequest, $Out>
      get $asTeamLeaveRequest =>
          $base.as((v, t, t2) => _TeamLeaveRequestCopyWithImpl(v, t, t2));
}

abstract class TeamLeaveRequestCopyWith<$R, $In extends TeamLeaveRequest, $Out>
    implements ClientWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? team});
  TeamLeaveRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TeamLeaveRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TeamLeaveRequest, $Out>
    implements TeamLeaveRequestCopyWith<$R, TeamLeaveRequest, $Out> {
  _TeamLeaveRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TeamLeaveRequest> $mapper =
      TeamLeaveRequestMapper.ensureInitialized();
  @override
  $R call({String? team}) =>
      $apply(FieldCopyWithData({if (team != null) #team: team}));
  @override
  TeamLeaveRequest $make(CopyWithData data) =>
      TeamLeaveRequest(data.get(#team, or: $value.team));

  @override
  TeamLeaveRequestCopyWith<$R2, TeamLeaveRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TeamLeaveRequestCopyWithImpl($value, $cast, t);
}

class RollObjectRequestMapper extends SubClassMapperBase<RollObjectRequest> {
  RollObjectRequestMapper._();

  static RollObjectRequestMapper? _instance;
  static RollObjectRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RollObjectRequestMapper._());
      ClientWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      VectorDefinitionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RollObjectRequest';

  static VectorDefinition _$cell(RollObjectRequest v) => v.cell;
  static const Field<RollObjectRequest, VectorDefinition> _f$cell =
      Field('cell', _$cell);
  static int _$object(RollObjectRequest v) => v.object;
  static const Field<RollObjectRequest, int> _f$object =
      Field('object', _$object);

  @override
  final MappableFields<RollObjectRequest> fields = const {
    #cell: _f$cell,
    #object: _f$object,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'RollObjectRequest';
  @override
  late final ClassMapperBase superMapper =
      ClientWorldEventMapper.ensureInitialized();

  static RollObjectRequest _instantiate(DecodingData data) {
    return RollObjectRequest(data.dec(_f$cell), data.dec(_f$object));
  }

  @override
  final Function instantiate = _instantiate;

  static RollObjectRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RollObjectRequest>(map);
  }

  static RollObjectRequest fromJson(String json) {
    return ensureInitialized().decodeJson<RollObjectRequest>(json);
  }
}

mixin RollObjectRequestMappable {
  String toJson() {
    return RollObjectRequestMapper.ensureInitialized()
        .encodeJson<RollObjectRequest>(this as RollObjectRequest);
  }

  Map<String, dynamic> toMap() {
    return RollObjectRequestMapper.ensureInitialized()
        .encodeMap<RollObjectRequest>(this as RollObjectRequest);
  }

  RollObjectRequestCopyWith<RollObjectRequest, RollObjectRequest,
          RollObjectRequest>
      get copyWith => _RollObjectRequestCopyWithImpl(
          this as RollObjectRequest, $identity, $identity);
  @override
  String toString() {
    return RollObjectRequestMapper.ensureInitialized()
        .stringifyValue(this as RollObjectRequest);
  }

  @override
  bool operator ==(Object other) {
    return RollObjectRequestMapper.ensureInitialized()
        .equalsValue(this as RollObjectRequest, other);
  }

  @override
  int get hashCode {
    return RollObjectRequestMapper.ensureInitialized()
        .hashValue(this as RollObjectRequest);
  }
}

extension RollObjectRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RollObjectRequest, $Out> {
  RollObjectRequestCopyWith<$R, RollObjectRequest, $Out>
      get $asRollObjectRequest =>
          $base.as((v, t, t2) => _RollObjectRequestCopyWithImpl(v, t, t2));
}

abstract class RollObjectRequestCopyWith<$R, $In extends RollObjectRequest,
    $Out> implements ClientWorldEventCopyWith<$R, $In, $Out> {
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell;
  @override
  $R call({VectorDefinition? cell, int? object});
  RollObjectRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RollObjectRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RollObjectRequest, $Out>
    implements RollObjectRequestCopyWith<$R, RollObjectRequest, $Out> {
  _RollObjectRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RollObjectRequest> $mapper =
      RollObjectRequestMapper.ensureInitialized();
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell =>
      $value.cell.copyWith.$chain((v) => call(cell: v));
  @override
  $R call({VectorDefinition? cell, int? object}) => $apply(FieldCopyWithData(
      {if (cell != null) #cell: cell, if (object != null) #object: object}));
  @override
  RollObjectRequest $make(CopyWithData data) => RollObjectRequest(
      data.get(#cell, or: $value.cell), data.get(#object, or: $value.object));

  @override
  RollObjectRequestCopyWith<$R2, RollObjectRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RollObjectRequestCopyWithImpl($value, $cast, t);
}

class ShuffleCellRequestMapper extends SubClassMapperBase<ShuffleCellRequest> {
  ShuffleCellRequestMapper._();

  static ShuffleCellRequestMapper? _instance;
  static ShuffleCellRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShuffleCellRequestMapper._());
      ClientWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      VectorDefinitionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ShuffleCellRequest';

  static VectorDefinition _$cell(ShuffleCellRequest v) => v.cell;
  static const Field<ShuffleCellRequest, VectorDefinition> _f$cell =
      Field('cell', _$cell);

  @override
  final MappableFields<ShuffleCellRequest> fields = const {
    #cell: _f$cell,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'ShuffleCellRequest';
  @override
  late final ClassMapperBase superMapper =
      ClientWorldEventMapper.ensureInitialized();

  static ShuffleCellRequest _instantiate(DecodingData data) {
    return ShuffleCellRequest(data.dec(_f$cell));
  }

  @override
  final Function instantiate = _instantiate;

  static ShuffleCellRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShuffleCellRequest>(map);
  }

  static ShuffleCellRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ShuffleCellRequest>(json);
  }
}

mixin ShuffleCellRequestMappable {
  String toJson() {
    return ShuffleCellRequestMapper.ensureInitialized()
        .encodeJson<ShuffleCellRequest>(this as ShuffleCellRequest);
  }

  Map<String, dynamic> toMap() {
    return ShuffleCellRequestMapper.ensureInitialized()
        .encodeMap<ShuffleCellRequest>(this as ShuffleCellRequest);
  }

  ShuffleCellRequestCopyWith<ShuffleCellRequest, ShuffleCellRequest,
          ShuffleCellRequest>
      get copyWith => _ShuffleCellRequestCopyWithImpl(
          this as ShuffleCellRequest, $identity, $identity);
  @override
  String toString() {
    return ShuffleCellRequestMapper.ensureInitialized()
        .stringifyValue(this as ShuffleCellRequest);
  }

  @override
  bool operator ==(Object other) {
    return ShuffleCellRequestMapper.ensureInitialized()
        .equalsValue(this as ShuffleCellRequest, other);
  }

  @override
  int get hashCode {
    return ShuffleCellRequestMapper.ensureInitialized()
        .hashValue(this as ShuffleCellRequest);
  }
}

extension ShuffleCellRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShuffleCellRequest, $Out> {
  ShuffleCellRequestCopyWith<$R, ShuffleCellRequest, $Out>
      get $asShuffleCellRequest =>
          $base.as((v, t, t2) => _ShuffleCellRequestCopyWithImpl(v, t, t2));
}

abstract class ShuffleCellRequestCopyWith<$R, $In extends ShuffleCellRequest,
    $Out> implements ClientWorldEventCopyWith<$R, $In, $Out> {
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell;
  @override
  $R call({VectorDefinition? cell});
  ShuffleCellRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ShuffleCellRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShuffleCellRequest, $Out>
    implements ShuffleCellRequestCopyWith<$R, ShuffleCellRequest, $Out> {
  _ShuffleCellRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShuffleCellRequest> $mapper =
      ShuffleCellRequestMapper.ensureInitialized();
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell =>
      $value.cell.copyWith.$chain((v) => call(cell: v));
  @override
  $R call({VectorDefinition? cell}) =>
      $apply(FieldCopyWithData({if (cell != null) #cell: cell}));
  @override
  ShuffleCellRequest $make(CopyWithData data) =>
      ShuffleCellRequest(data.get(#cell, or: $value.cell));

  @override
  ShuffleCellRequestCopyWith<$R2, ShuffleCellRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShuffleCellRequestCopyWithImpl($value, $cast, t);
}

class PacksChangeRequestMapper extends SubClassMapperBase<PacksChangeRequest> {
  PacksChangeRequestMapper._();

  static PacksChangeRequestMapper? _instance;
  static PacksChangeRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PacksChangeRequestMapper._());
      ClientWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PacksChangeRequest';

  static Set<String> _$packs(PacksChangeRequest v) => v.packs;
  static const Field<PacksChangeRequest, Set<String>> _f$packs =
      Field('packs', _$packs);

  @override
  final MappableFields<PacksChangeRequest> fields = const {
    #packs: _f$packs,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'PacksChangeRequest';
  @override
  late final ClassMapperBase superMapper =
      ClientWorldEventMapper.ensureInitialized();

  static PacksChangeRequest _instantiate(DecodingData data) {
    return PacksChangeRequest(data.dec(_f$packs));
  }

  @override
  final Function instantiate = _instantiate;

  static PacksChangeRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PacksChangeRequest>(map);
  }

  static PacksChangeRequest fromJson(String json) {
    return ensureInitialized().decodeJson<PacksChangeRequest>(json);
  }
}

mixin PacksChangeRequestMappable {
  String toJson() {
    return PacksChangeRequestMapper.ensureInitialized()
        .encodeJson<PacksChangeRequest>(this as PacksChangeRequest);
  }

  Map<String, dynamic> toMap() {
    return PacksChangeRequestMapper.ensureInitialized()
        .encodeMap<PacksChangeRequest>(this as PacksChangeRequest);
  }

  PacksChangeRequestCopyWith<PacksChangeRequest, PacksChangeRequest,
          PacksChangeRequest>
      get copyWith => _PacksChangeRequestCopyWithImpl(
          this as PacksChangeRequest, $identity, $identity);
  @override
  String toString() {
    return PacksChangeRequestMapper.ensureInitialized()
        .stringifyValue(this as PacksChangeRequest);
  }

  @override
  bool operator ==(Object other) {
    return PacksChangeRequestMapper.ensureInitialized()
        .equalsValue(this as PacksChangeRequest, other);
  }

  @override
  int get hashCode {
    return PacksChangeRequestMapper.ensureInitialized()
        .hashValue(this as PacksChangeRequest);
  }
}

extension PacksChangeRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PacksChangeRequest, $Out> {
  PacksChangeRequestCopyWith<$R, PacksChangeRequest, $Out>
      get $asPacksChangeRequest =>
          $base.as((v, t, t2) => _PacksChangeRequestCopyWithImpl(v, t, t2));
}

abstract class PacksChangeRequestCopyWith<$R, $In extends PacksChangeRequest,
    $Out> implements ClientWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call({Set<String>? packs});
  PacksChangeRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PacksChangeRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PacksChangeRequest, $Out>
    implements PacksChangeRequestCopyWith<$R, PacksChangeRequest, $Out> {
  _PacksChangeRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PacksChangeRequest> $mapper =
      PacksChangeRequestMapper.ensureInitialized();
  @override
  $R call({Set<String>? packs}) =>
      $apply(FieldCopyWithData({if (packs != null) #packs: packs}));
  @override
  PacksChangeRequest $make(CopyWithData data) =>
      PacksChangeRequest(data.get(#packs, or: $value.packs));

  @override
  PacksChangeRequestCopyWith<$R2, PacksChangeRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PacksChangeRequestCopyWithImpl($value, $cast, t);
}

class HybridWorldEventMapper extends SubClassMapperBase<HybridWorldEvent> {
  HybridWorldEventMapper._();

  static HybridWorldEventMapper? _instance;
  static HybridWorldEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HybridWorldEventMapper._());
      WorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      BackgroundChangedMapper.ensureInitialized();
      ObjectsSpawnedMapper.ensureInitialized();
      ObjectsMovedMapper.ensureInitialized();
      CellHideChangedMapper.ensureInitialized();
      ObjectIndexChangedMapper.ensureInitialized();
      TeamChangedMapper.ensureInitialized();
      TeamRemovedMapper.ensureInitialized();
      MetadataChangedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HybridWorldEvent';

  @override
  final MappableFields<HybridWorldEvent> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'HybridWorldEvent';
  @override
  late final ClassMapperBase superMapper = WorldEventMapper.ensureInitialized();

  static HybridWorldEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'HybridWorldEvent', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static HybridWorldEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HybridWorldEvent>(map);
  }

  static HybridWorldEvent fromJson(String json) {
    return ensureInitialized().decodeJson<HybridWorldEvent>(json);
  }
}

mixin HybridWorldEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  HybridWorldEventCopyWith<HybridWorldEvent, HybridWorldEvent, HybridWorldEvent>
      get copyWith;
}

abstract class HybridWorldEventCopyWith<$R, $In extends HybridWorldEvent, $Out>
    implements
        WorldEventCopyWith<$R, $In, $Out>,
        ClientWorldEventCopyWith<$R, $In, $Out>,
        ServerWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  HybridWorldEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class BackgroundChangedMapper extends SubClassMapperBase<BackgroundChanged> {
  BackgroundChangedMapper._();

  static BackgroundChangedMapper? _instance;
  static BackgroundChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BackgroundChangedMapper._());
      HybridWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      ItemLocationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BackgroundChanged';

  static ItemLocation _$background(BackgroundChanged v) => v.background;
  static const Field<BackgroundChanged, ItemLocation> _f$background =
      Field('background', _$background);

  @override
  final MappableFields<BackgroundChanged> fields = const {
    #background: _f$background,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'BackgroundChanged';
  @override
  late final ClassMapperBase superMapper =
      HybridWorldEventMapper.ensureInitialized();

  static BackgroundChanged _instantiate(DecodingData data) {
    return BackgroundChanged(data.dec(_f$background));
  }

  @override
  final Function instantiate = _instantiate;

  static BackgroundChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BackgroundChanged>(map);
  }

  static BackgroundChanged fromJson(String json) {
    return ensureInitialized().decodeJson<BackgroundChanged>(json);
  }
}

mixin BackgroundChangedMappable {
  String toJson() {
    return BackgroundChangedMapper.ensureInitialized()
        .encodeJson<BackgroundChanged>(this as BackgroundChanged);
  }

  Map<String, dynamic> toMap() {
    return BackgroundChangedMapper.ensureInitialized()
        .encodeMap<BackgroundChanged>(this as BackgroundChanged);
  }

  BackgroundChangedCopyWith<BackgroundChanged, BackgroundChanged,
          BackgroundChanged>
      get copyWith => _BackgroundChangedCopyWithImpl(
          this as BackgroundChanged, $identity, $identity);
  @override
  String toString() {
    return BackgroundChangedMapper.ensureInitialized()
        .stringifyValue(this as BackgroundChanged);
  }

  @override
  bool operator ==(Object other) {
    return BackgroundChangedMapper.ensureInitialized()
        .equalsValue(this as BackgroundChanged, other);
  }

  @override
  int get hashCode {
    return BackgroundChangedMapper.ensureInitialized()
        .hashValue(this as BackgroundChanged);
  }
}

extension BackgroundChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BackgroundChanged, $Out> {
  BackgroundChangedCopyWith<$R, BackgroundChanged, $Out>
      get $asBackgroundChanged =>
          $base.as((v, t, t2) => _BackgroundChangedCopyWithImpl(v, t, t2));
}

abstract class BackgroundChangedCopyWith<$R, $In extends BackgroundChanged,
    $Out> implements HybridWorldEventCopyWith<$R, $In, $Out> {
  ItemLocationCopyWith<$R, ItemLocation, ItemLocation> get background;
  @override
  $R call({ItemLocation? background});
  BackgroundChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BackgroundChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BackgroundChanged, $Out>
    implements BackgroundChangedCopyWith<$R, BackgroundChanged, $Out> {
  _BackgroundChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BackgroundChanged> $mapper =
      BackgroundChangedMapper.ensureInitialized();
  @override
  ItemLocationCopyWith<$R, ItemLocation, ItemLocation> get background =>
      $value.background.copyWith.$chain((v) => call(background: v));
  @override
  $R call({ItemLocation? background}) => $apply(
      FieldCopyWithData({if (background != null) #background: background}));
  @override
  BackgroundChanged $make(CopyWithData data) =>
      BackgroundChanged(data.get(#background, or: $value.background));

  @override
  BackgroundChangedCopyWith<$R2, BackgroundChanged, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BackgroundChangedCopyWithImpl($value, $cast, t);
}

class ObjectsSpawnedMapper extends SubClassMapperBase<ObjectsSpawned> {
  ObjectsSpawnedMapper._();

  static ObjectsSpawnedMapper? _instance;
  static ObjectsSpawnedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ObjectsSpawnedMapper._());
      HybridWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      VectorDefinitionMapper.ensureInitialized();
      GameObjectMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ObjectsSpawned';

  static VectorDefinition _$cell(ObjectsSpawned v) => v.cell;
  static const Field<ObjectsSpawned, VectorDefinition> _f$cell =
      Field('cell', _$cell);
  static List<GameObject> _$objects(ObjectsSpawned v) => v.objects;
  static const Field<ObjectsSpawned, List<GameObject>> _f$objects =
      Field('objects', _$objects);

  @override
  final MappableFields<ObjectsSpawned> fields = const {
    #cell: _f$cell,
    #objects: _f$objects,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'ObjectsSpawned';
  @override
  late final ClassMapperBase superMapper =
      HybridWorldEventMapper.ensureInitialized();

  static ObjectsSpawned _instantiate(DecodingData data) {
    return ObjectsSpawned(data.dec(_f$cell), data.dec(_f$objects));
  }

  @override
  final Function instantiate = _instantiate;

  static ObjectsSpawned fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ObjectsSpawned>(map);
  }

  static ObjectsSpawned fromJson(String json) {
    return ensureInitialized().decodeJson<ObjectsSpawned>(json);
  }
}

mixin ObjectsSpawnedMappable {
  String toJson() {
    return ObjectsSpawnedMapper.ensureInitialized()
        .encodeJson<ObjectsSpawned>(this as ObjectsSpawned);
  }

  Map<String, dynamic> toMap() {
    return ObjectsSpawnedMapper.ensureInitialized()
        .encodeMap<ObjectsSpawned>(this as ObjectsSpawned);
  }

  ObjectsSpawnedCopyWith<ObjectsSpawned, ObjectsSpawned, ObjectsSpawned>
      get copyWith => _ObjectsSpawnedCopyWithImpl(
          this as ObjectsSpawned, $identity, $identity);
  @override
  String toString() {
    return ObjectsSpawnedMapper.ensureInitialized()
        .stringifyValue(this as ObjectsSpawned);
  }

  @override
  bool operator ==(Object other) {
    return ObjectsSpawnedMapper.ensureInitialized()
        .equalsValue(this as ObjectsSpawned, other);
  }

  @override
  int get hashCode {
    return ObjectsSpawnedMapper.ensureInitialized()
        .hashValue(this as ObjectsSpawned);
  }
}

extension ObjectsSpawnedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ObjectsSpawned, $Out> {
  ObjectsSpawnedCopyWith<$R, ObjectsSpawned, $Out> get $asObjectsSpawned =>
      $base.as((v, t, t2) => _ObjectsSpawnedCopyWithImpl(v, t, t2));
}

abstract class ObjectsSpawnedCopyWith<$R, $In extends ObjectsSpawned, $Out>
    implements HybridWorldEventCopyWith<$R, $In, $Out> {
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell;
  ListCopyWith<$R, GameObject, GameObjectCopyWith<$R, GameObject, GameObject>>
      get objects;
  @override
  $R call({VectorDefinition? cell, List<GameObject>? objects});
  ObjectsSpawnedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ObjectsSpawnedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ObjectsSpawned, $Out>
    implements ObjectsSpawnedCopyWith<$R, ObjectsSpawned, $Out> {
  _ObjectsSpawnedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ObjectsSpawned> $mapper =
      ObjectsSpawnedMapper.ensureInitialized();
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell =>
      $value.cell.copyWith.$chain((v) => call(cell: v));
  @override
  ListCopyWith<$R, GameObject, GameObjectCopyWith<$R, GameObject, GameObject>>
      get objects => ListCopyWith($value.objects,
          (v, t) => v.copyWith.$chain(t), (v) => call(objects: v));
  @override
  $R call({VectorDefinition? cell, List<GameObject>? objects}) =>
      $apply(FieldCopyWithData({
        if (cell != null) #cell: cell,
        if (objects != null) #objects: objects
      }));
  @override
  ObjectsSpawned $make(CopyWithData data) => ObjectsSpawned(
      data.get(#cell, or: $value.cell), data.get(#objects, or: $value.objects));

  @override
  ObjectsSpawnedCopyWith<$R2, ObjectsSpawned, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ObjectsSpawnedCopyWithImpl($value, $cast, t);
}

class ObjectsMovedMapper extends SubClassMapperBase<ObjectsMoved> {
  ObjectsMovedMapper._();

  static ObjectsMovedMapper? _instance;
  static ObjectsMovedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ObjectsMovedMapper._());
      HybridWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      VectorDefinitionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ObjectsMoved';

  static List<int> _$objects(ObjectsMoved v) => v.objects;
  static const Field<ObjectsMoved, List<int>> _f$objects =
      Field('objects', _$objects);
  static VectorDefinition _$from(ObjectsMoved v) => v.from;
  static const Field<ObjectsMoved, VectorDefinition> _f$from =
      Field('from', _$from);
  static VectorDefinition _$to(ObjectsMoved v) => v.to;
  static const Field<ObjectsMoved, VectorDefinition> _f$to = Field('to', _$to);

  @override
  final MappableFields<ObjectsMoved> fields = const {
    #objects: _f$objects,
    #from: _f$from,
    #to: _f$to,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'ObjectsMoved';
  @override
  late final ClassMapperBase superMapper =
      HybridWorldEventMapper.ensureInitialized();

  static ObjectsMoved _instantiate(DecodingData data) {
    return ObjectsMoved(
        data.dec(_f$objects), data.dec(_f$from), data.dec(_f$to));
  }

  @override
  final Function instantiate = _instantiate;

  static ObjectsMoved fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ObjectsMoved>(map);
  }

  static ObjectsMoved fromJson(String json) {
    return ensureInitialized().decodeJson<ObjectsMoved>(json);
  }
}

mixin ObjectsMovedMappable {
  String toJson() {
    return ObjectsMovedMapper.ensureInitialized()
        .encodeJson<ObjectsMoved>(this as ObjectsMoved);
  }

  Map<String, dynamic> toMap() {
    return ObjectsMovedMapper.ensureInitialized()
        .encodeMap<ObjectsMoved>(this as ObjectsMoved);
  }

  ObjectsMovedCopyWith<ObjectsMoved, ObjectsMoved, ObjectsMoved> get copyWith =>
      _ObjectsMovedCopyWithImpl(this as ObjectsMoved, $identity, $identity);
  @override
  String toString() {
    return ObjectsMovedMapper.ensureInitialized()
        .stringifyValue(this as ObjectsMoved);
  }

  @override
  bool operator ==(Object other) {
    return ObjectsMovedMapper.ensureInitialized()
        .equalsValue(this as ObjectsMoved, other);
  }

  @override
  int get hashCode {
    return ObjectsMovedMapper.ensureInitialized()
        .hashValue(this as ObjectsMoved);
  }
}

extension ObjectsMovedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ObjectsMoved, $Out> {
  ObjectsMovedCopyWith<$R, ObjectsMoved, $Out> get $asObjectsMoved =>
      $base.as((v, t, t2) => _ObjectsMovedCopyWithImpl(v, t, t2));
}

abstract class ObjectsMovedCopyWith<$R, $In extends ObjectsMoved, $Out>
    implements HybridWorldEventCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get objects;
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get from;
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get to;
  @override
  $R call({List<int>? objects, VectorDefinition? from, VectorDefinition? to});
  ObjectsMovedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ObjectsMovedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ObjectsMoved, $Out>
    implements ObjectsMovedCopyWith<$R, ObjectsMoved, $Out> {
  _ObjectsMovedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ObjectsMoved> $mapper =
      ObjectsMovedMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get objects =>
      ListCopyWith($value.objects, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(objects: v));
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get from =>
      $value.from.copyWith.$chain((v) => call(from: v));
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get to =>
      $value.to.copyWith.$chain((v) => call(to: v));
  @override
  $R call({List<int>? objects, VectorDefinition? from, VectorDefinition? to}) =>
      $apply(FieldCopyWithData({
        if (objects != null) #objects: objects,
        if (from != null) #from: from,
        if (to != null) #to: to
      }));
  @override
  ObjectsMoved $make(CopyWithData data) => ObjectsMoved(
      data.get(#objects, or: $value.objects),
      data.get(#from, or: $value.from),
      data.get(#to, or: $value.to));

  @override
  ObjectsMovedCopyWith<$R2, ObjectsMoved, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ObjectsMovedCopyWithImpl($value, $cast, t);
}

class CellHideChangedMapper extends SubClassMapperBase<CellHideChanged> {
  CellHideChangedMapper._();

  static CellHideChangedMapper? _instance;
  static CellHideChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CellHideChangedMapper._());
      HybridWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      VectorDefinitionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CellHideChanged';

  static VectorDefinition _$cell(CellHideChanged v) => v.cell;
  static const Field<CellHideChanged, VectorDefinition> _f$cell =
      Field('cell', _$cell);
  static int? _$object(CellHideChanged v) => v.object;
  static const Field<CellHideChanged, int> _f$object =
      Field('object', _$object, opt: true);
  static bool? _$hide(CellHideChanged v) => v.hide;
  static const Field<CellHideChanged, bool> _f$hide =
      Field('hide', _$hide, opt: true);

  @override
  final MappableFields<CellHideChanged> fields = const {
    #cell: _f$cell,
    #object: _f$object,
    #hide: _f$hide,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'CellHideChanged';
  @override
  late final ClassMapperBase superMapper =
      HybridWorldEventMapper.ensureInitialized();

  static CellHideChanged _instantiate(DecodingData data) {
    return CellHideChanged(data.dec(_f$cell),
        object: data.dec(_f$object), hide: data.dec(_f$hide));
  }

  @override
  final Function instantiate = _instantiate;

  static CellHideChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CellHideChanged>(map);
  }

  static CellHideChanged fromJson(String json) {
    return ensureInitialized().decodeJson<CellHideChanged>(json);
  }
}

mixin CellHideChangedMappable {
  String toJson() {
    return CellHideChangedMapper.ensureInitialized()
        .encodeJson<CellHideChanged>(this as CellHideChanged);
  }

  Map<String, dynamic> toMap() {
    return CellHideChangedMapper.ensureInitialized()
        .encodeMap<CellHideChanged>(this as CellHideChanged);
  }

  CellHideChangedCopyWith<CellHideChanged, CellHideChanged, CellHideChanged>
      get copyWith => _CellHideChangedCopyWithImpl(
          this as CellHideChanged, $identity, $identity);
  @override
  String toString() {
    return CellHideChangedMapper.ensureInitialized()
        .stringifyValue(this as CellHideChanged);
  }

  @override
  bool operator ==(Object other) {
    return CellHideChangedMapper.ensureInitialized()
        .equalsValue(this as CellHideChanged, other);
  }

  @override
  int get hashCode {
    return CellHideChangedMapper.ensureInitialized()
        .hashValue(this as CellHideChanged);
  }
}

extension CellHideChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CellHideChanged, $Out> {
  CellHideChangedCopyWith<$R, CellHideChanged, $Out> get $asCellHideChanged =>
      $base.as((v, t, t2) => _CellHideChangedCopyWithImpl(v, t, t2));
}

abstract class CellHideChangedCopyWith<$R, $In extends CellHideChanged, $Out>
    implements HybridWorldEventCopyWith<$R, $In, $Out> {
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell;
  @override
  $R call({VectorDefinition? cell, int? object, bool? hide});
  CellHideChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CellHideChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CellHideChanged, $Out>
    implements CellHideChangedCopyWith<$R, CellHideChanged, $Out> {
  _CellHideChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CellHideChanged> $mapper =
      CellHideChangedMapper.ensureInitialized();
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell =>
      $value.cell.copyWith.$chain((v) => call(cell: v));
  @override
  $R call(
          {VectorDefinition? cell,
          Object? object = $none,
          Object? hide = $none}) =>
      $apply(FieldCopyWithData({
        if (cell != null) #cell: cell,
        if (object != $none) #object: object,
        if (hide != $none) #hide: hide
      }));
  @override
  CellHideChanged $make(CopyWithData data) =>
      CellHideChanged(data.get(#cell, or: $value.cell),
          object: data.get(#object, or: $value.object),
          hide: data.get(#hide, or: $value.hide));

  @override
  CellHideChangedCopyWith<$R2, CellHideChanged, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CellHideChangedCopyWithImpl($value, $cast, t);
}

class ObjectIndexChangedMapper extends SubClassMapperBase<ObjectIndexChanged> {
  ObjectIndexChangedMapper._();

  static ObjectIndexChangedMapper? _instance;
  static ObjectIndexChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ObjectIndexChangedMapper._());
      HybridWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      VectorDefinitionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ObjectIndexChanged';

  static VectorDefinition _$cell(ObjectIndexChanged v) => v.cell;
  static const Field<ObjectIndexChanged, VectorDefinition> _f$cell =
      Field('cell', _$cell);
  static int _$object(ObjectIndexChanged v) => v.object;
  static const Field<ObjectIndexChanged, int> _f$object =
      Field('object', _$object);
  static int _$index(ObjectIndexChanged v) => v.index;
  static const Field<ObjectIndexChanged, int> _f$index =
      Field('index', _$index);

  @override
  final MappableFields<ObjectIndexChanged> fields = const {
    #cell: _f$cell,
    #object: _f$object,
    #index: _f$index,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'ObjectIndexChanged';
  @override
  late final ClassMapperBase superMapper =
      HybridWorldEventMapper.ensureInitialized();

  static ObjectIndexChanged _instantiate(DecodingData data) {
    return ObjectIndexChanged(
        data.dec(_f$cell), data.dec(_f$object), data.dec(_f$index));
  }

  @override
  final Function instantiate = _instantiate;

  static ObjectIndexChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ObjectIndexChanged>(map);
  }

  static ObjectIndexChanged fromJson(String json) {
    return ensureInitialized().decodeJson<ObjectIndexChanged>(json);
  }
}

mixin ObjectIndexChangedMappable {
  String toJson() {
    return ObjectIndexChangedMapper.ensureInitialized()
        .encodeJson<ObjectIndexChanged>(this as ObjectIndexChanged);
  }

  Map<String, dynamic> toMap() {
    return ObjectIndexChangedMapper.ensureInitialized()
        .encodeMap<ObjectIndexChanged>(this as ObjectIndexChanged);
  }

  ObjectIndexChangedCopyWith<ObjectIndexChanged, ObjectIndexChanged,
          ObjectIndexChanged>
      get copyWith => _ObjectIndexChangedCopyWithImpl(
          this as ObjectIndexChanged, $identity, $identity);
  @override
  String toString() {
    return ObjectIndexChangedMapper.ensureInitialized()
        .stringifyValue(this as ObjectIndexChanged);
  }

  @override
  bool operator ==(Object other) {
    return ObjectIndexChangedMapper.ensureInitialized()
        .equalsValue(this as ObjectIndexChanged, other);
  }

  @override
  int get hashCode {
    return ObjectIndexChangedMapper.ensureInitialized()
        .hashValue(this as ObjectIndexChanged);
  }
}

extension ObjectIndexChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ObjectIndexChanged, $Out> {
  ObjectIndexChangedCopyWith<$R, ObjectIndexChanged, $Out>
      get $asObjectIndexChanged =>
          $base.as((v, t, t2) => _ObjectIndexChangedCopyWithImpl(v, t, t2));
}

abstract class ObjectIndexChangedCopyWith<$R, $In extends ObjectIndexChanged,
    $Out> implements HybridWorldEventCopyWith<$R, $In, $Out> {
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell;
  @override
  $R call({VectorDefinition? cell, int? object, int? index});
  ObjectIndexChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ObjectIndexChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ObjectIndexChanged, $Out>
    implements ObjectIndexChangedCopyWith<$R, ObjectIndexChanged, $Out> {
  _ObjectIndexChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ObjectIndexChanged> $mapper =
      ObjectIndexChangedMapper.ensureInitialized();
  @override
  VectorDefinitionCopyWith<$R, VectorDefinition, VectorDefinition> get cell =>
      $value.cell.copyWith.$chain((v) => call(cell: v));
  @override
  $R call({VectorDefinition? cell, int? object, int? index}) =>
      $apply(FieldCopyWithData({
        if (cell != null) #cell: cell,
        if (object != null) #object: object,
        if (index != null) #index: index
      }));
  @override
  ObjectIndexChanged $make(CopyWithData data) => ObjectIndexChanged(
      data.get(#cell, or: $value.cell),
      data.get(#object, or: $value.object),
      data.get(#index, or: $value.index));

  @override
  ObjectIndexChangedCopyWith<$R2, ObjectIndexChanged, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ObjectIndexChangedCopyWithImpl($value, $cast, t);
}

class TeamChangedMapper extends SubClassMapperBase<TeamChanged> {
  TeamChangedMapper._();

  static TeamChangedMapper? _instance;
  static TeamChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TeamChangedMapper._());
      HybridWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      GameTeamMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TeamChanged';

  static String _$name(TeamChanged v) => v.name;
  static const Field<TeamChanged, String> _f$name = Field('name', _$name);
  static GameTeam _$team(TeamChanged v) => v.team;
  static const Field<TeamChanged, GameTeam> _f$team = Field('team', _$team);

  @override
  final MappableFields<TeamChanged> fields = const {
    #name: _f$name,
    #team: _f$team,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'TeamChanged';
  @override
  late final ClassMapperBase superMapper =
      HybridWorldEventMapper.ensureInitialized();

  static TeamChanged _instantiate(DecodingData data) {
    return TeamChanged(data.dec(_f$name), data.dec(_f$team));
  }

  @override
  final Function instantiate = _instantiate;

  static TeamChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TeamChanged>(map);
  }

  static TeamChanged fromJson(String json) {
    return ensureInitialized().decodeJson<TeamChanged>(json);
  }
}

mixin TeamChangedMappable {
  String toJson() {
    return TeamChangedMapper.ensureInitialized()
        .encodeJson<TeamChanged>(this as TeamChanged);
  }

  Map<String, dynamic> toMap() {
    return TeamChangedMapper.ensureInitialized()
        .encodeMap<TeamChanged>(this as TeamChanged);
  }

  TeamChangedCopyWith<TeamChanged, TeamChanged, TeamChanged> get copyWith =>
      _TeamChangedCopyWithImpl(this as TeamChanged, $identity, $identity);
  @override
  String toString() {
    return TeamChangedMapper.ensureInitialized()
        .stringifyValue(this as TeamChanged);
  }

  @override
  bool operator ==(Object other) {
    return TeamChangedMapper.ensureInitialized()
        .equalsValue(this as TeamChanged, other);
  }

  @override
  int get hashCode {
    return TeamChangedMapper.ensureInitialized().hashValue(this as TeamChanged);
  }
}

extension TeamChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TeamChanged, $Out> {
  TeamChangedCopyWith<$R, TeamChanged, $Out> get $asTeamChanged =>
      $base.as((v, t, t2) => _TeamChangedCopyWithImpl(v, t, t2));
}

abstract class TeamChangedCopyWith<$R, $In extends TeamChanged, $Out>
    implements HybridWorldEventCopyWith<$R, $In, $Out> {
  GameTeamCopyWith<$R, GameTeam, GameTeam> get team;
  @override
  $R call({String? name, GameTeam? team});
  TeamChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TeamChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TeamChanged, $Out>
    implements TeamChangedCopyWith<$R, TeamChanged, $Out> {
  _TeamChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TeamChanged> $mapper =
      TeamChangedMapper.ensureInitialized();
  @override
  GameTeamCopyWith<$R, GameTeam, GameTeam> get team =>
      $value.team.copyWith.$chain((v) => call(team: v));
  @override
  $R call({String? name, GameTeam? team}) => $apply(FieldCopyWithData(
      {if (name != null) #name: name, if (team != null) #team: team}));
  @override
  TeamChanged $make(CopyWithData data) => TeamChanged(
      data.get(#name, or: $value.name), data.get(#team, or: $value.team));

  @override
  TeamChangedCopyWith<$R2, TeamChanged, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TeamChangedCopyWithImpl($value, $cast, t);
}

class TeamRemovedMapper extends SubClassMapperBase<TeamRemoved> {
  TeamRemovedMapper._();

  static TeamRemovedMapper? _instance;
  static TeamRemovedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TeamRemovedMapper._());
      HybridWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TeamRemoved';

  static String _$team(TeamRemoved v) => v.team;
  static const Field<TeamRemoved, String> _f$team = Field('team', _$team);

  @override
  final MappableFields<TeamRemoved> fields = const {
    #team: _f$team,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'TeamRemoved';
  @override
  late final ClassMapperBase superMapper =
      HybridWorldEventMapper.ensureInitialized();

  static TeamRemoved _instantiate(DecodingData data) {
    return TeamRemoved(data.dec(_f$team));
  }

  @override
  final Function instantiate = _instantiate;

  static TeamRemoved fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TeamRemoved>(map);
  }

  static TeamRemoved fromJson(String json) {
    return ensureInitialized().decodeJson<TeamRemoved>(json);
  }
}

mixin TeamRemovedMappable {
  String toJson() {
    return TeamRemovedMapper.ensureInitialized()
        .encodeJson<TeamRemoved>(this as TeamRemoved);
  }

  Map<String, dynamic> toMap() {
    return TeamRemovedMapper.ensureInitialized()
        .encodeMap<TeamRemoved>(this as TeamRemoved);
  }

  TeamRemovedCopyWith<TeamRemoved, TeamRemoved, TeamRemoved> get copyWith =>
      _TeamRemovedCopyWithImpl(this as TeamRemoved, $identity, $identity);
  @override
  String toString() {
    return TeamRemovedMapper.ensureInitialized()
        .stringifyValue(this as TeamRemoved);
  }

  @override
  bool operator ==(Object other) {
    return TeamRemovedMapper.ensureInitialized()
        .equalsValue(this as TeamRemoved, other);
  }

  @override
  int get hashCode {
    return TeamRemovedMapper.ensureInitialized().hashValue(this as TeamRemoved);
  }
}

extension TeamRemovedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TeamRemoved, $Out> {
  TeamRemovedCopyWith<$R, TeamRemoved, $Out> get $asTeamRemoved =>
      $base.as((v, t, t2) => _TeamRemovedCopyWithImpl(v, t, t2));
}

abstract class TeamRemovedCopyWith<$R, $In extends TeamRemoved, $Out>
    implements HybridWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? team});
  TeamRemovedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TeamRemovedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TeamRemoved, $Out>
    implements TeamRemovedCopyWith<$R, TeamRemoved, $Out> {
  _TeamRemovedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TeamRemoved> $mapper =
      TeamRemovedMapper.ensureInitialized();
  @override
  $R call({String? team}) =>
      $apply(FieldCopyWithData({if (team != null) #team: team}));
  @override
  TeamRemoved $make(CopyWithData data) =>
      TeamRemoved(data.get(#team, or: $value.team));

  @override
  TeamRemovedCopyWith<$R2, TeamRemoved, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TeamRemovedCopyWithImpl($value, $cast, t);
}

class MetadataChangedMapper extends SubClassMapperBase<MetadataChanged> {
  MetadataChangedMapper._();

  static MetadataChangedMapper? _instance;
  static MetadataChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetadataChangedMapper._());
      HybridWorldEventMapper.ensureInitialized().addSubMapper(_instance!);
      FileMetadataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MetadataChanged';

  static FileMetadata _$metadata(MetadataChanged v) => v.metadata;
  static const Field<MetadataChanged, FileMetadata> _f$metadata =
      Field('metadata', _$metadata);

  @override
  final MappableFields<MetadataChanged> fields = const {
    #metadata: _f$metadata,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'MetadataChanged';
  @override
  late final ClassMapperBase superMapper =
      HybridWorldEventMapper.ensureInitialized();

  static MetadataChanged _instantiate(DecodingData data) {
    return MetadataChanged(data.dec(_f$metadata));
  }

  @override
  final Function instantiate = _instantiate;

  static MetadataChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MetadataChanged>(map);
  }

  static MetadataChanged fromJson(String json) {
    return ensureInitialized().decodeJson<MetadataChanged>(json);
  }
}

mixin MetadataChangedMappable {
  String toJson() {
    return MetadataChangedMapper.ensureInitialized()
        .encodeJson<MetadataChanged>(this as MetadataChanged);
  }

  Map<String, dynamic> toMap() {
    return MetadataChangedMapper.ensureInitialized()
        .encodeMap<MetadataChanged>(this as MetadataChanged);
  }

  MetadataChangedCopyWith<MetadataChanged, MetadataChanged, MetadataChanged>
      get copyWith => _MetadataChangedCopyWithImpl(
          this as MetadataChanged, $identity, $identity);
  @override
  String toString() {
    return MetadataChangedMapper.ensureInitialized()
        .stringifyValue(this as MetadataChanged);
  }

  @override
  bool operator ==(Object other) {
    return MetadataChangedMapper.ensureInitialized()
        .equalsValue(this as MetadataChanged, other);
  }

  @override
  int get hashCode {
    return MetadataChangedMapper.ensureInitialized()
        .hashValue(this as MetadataChanged);
  }
}

extension MetadataChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MetadataChanged, $Out> {
  MetadataChangedCopyWith<$R, MetadataChanged, $Out> get $asMetadataChanged =>
      $base.as((v, t, t2) => _MetadataChangedCopyWithImpl(v, t, t2));
}

abstract class MetadataChangedCopyWith<$R, $In extends MetadataChanged, $Out>
    implements HybridWorldEventCopyWith<$R, $In, $Out> {
  FileMetadataCopyWith<$R, FileMetadata, FileMetadata> get metadata;
  @override
  $R call({FileMetadata? metadata});
  MetadataChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MetadataChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MetadataChanged, $Out>
    implements MetadataChangedCopyWith<$R, MetadataChanged, $Out> {
  _MetadataChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MetadataChanged> $mapper =
      MetadataChangedMapper.ensureInitialized();
  @override
  FileMetadataCopyWith<$R, FileMetadata, FileMetadata> get metadata =>
      $value.metadata.copyWith.$chain((v) => call(metadata: v));
  @override
  $R call({FileMetadata? metadata}) =>
      $apply(FieldCopyWithData({if (metadata != null) #metadata: metadata}));
  @override
  MetadataChanged $make(CopyWithData data) =>
      MetadataChanged(data.get(#metadata, or: $value.metadata));

  @override
  MetadataChangedCopyWith<$R2, MetadataChanged, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MetadataChangedCopyWithImpl($value, $cast, t);
}

class LocalWorldEventMapper extends SubClassMapperBase<LocalWorldEvent> {
  LocalWorldEventMapper._();

  static LocalWorldEventMapper? _instance;
  static LocalWorldEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocalWorldEventMapper._());
      WorldEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LocalWorldEvent';

  @override
  final MappableFields<LocalWorldEvent> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'LocalWorldEvent';
  @override
  late final ClassMapperBase superMapper = WorldEventMapper.ensureInitialized();

  static LocalWorldEvent _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('LocalWorldEvent');
  }

  @override
  final Function instantiate = _instantiate;

  static LocalWorldEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocalWorldEvent>(map);
  }

  static LocalWorldEvent fromJson(String json) {
    return ensureInitialized().decodeJson<LocalWorldEvent>(json);
  }
}

mixin LocalWorldEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  LocalWorldEventCopyWith<LocalWorldEvent, LocalWorldEvent, LocalWorldEvent>
      get copyWith;
}

abstract class LocalWorldEventCopyWith<$R, $In extends LocalWorldEvent, $Out>
    implements
        WorldEventCopyWith<$R, $In, $Out>,
        PlayableWorldEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LocalWorldEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}