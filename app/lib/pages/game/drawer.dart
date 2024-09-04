import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:material_leap/material_leap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:quokka/api/settings.dart';
import 'package:quokka/bloc/multiplayer.dart';
import 'package:quokka/bloc/world/bloc.dart';
import 'package:quokka/bloc/world/state.dart';
import 'package:quokka/helpers/visualizer.dart';
import 'package:quokka/pages/game/info.dart';
import 'package:quokka/pages/game/multiplayer.dart';
import 'package:quokka/pages/game/team.dart';
import 'package:quokka/pages/home/packs.dart';
import 'package:quokka_api/quokka_api.dart';

class GameDrawer extends StatelessWidget {
  const GameDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            BlocBuilder<WorldBloc, ClientWorldState>(
              buildWhen: (previous, current) =>
                  previous.name != current.name ||
                  previous.metadata != current.metadata,
              builder: (context, state) {
                final metadata = state.metadata;
                return Card.filled(
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            metadata.name,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineSmall,
                          ),
                          Text(
                            metadata.description,
                            maxLines: 5,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      final bloc = context.read<WorldBloc>();
                      showLeapBottomSheet(
                        context: context,
                        titleBuilder: (context) => Text(metadata.name),
                        actionsBuilder: (context) => [
                          IconButton(
                            icon: const Icon(PhosphorIconsLight.pencil),
                            tooltip: AppLocalizations.of(context).editInfo,
                            onPressed: () async {
                              final newInfo = await showDialog<FileMetadata>(
                                  context: context,
                                  builder: (context) => BlocProvider.value(
                                        value: bloc,
                                        child: EditInfoDialog(
                                          value: metadata,
                                        ),
                                      ));
                              if (newInfo == null) return;
                              bloc.process(MetadataChanged(newInfo.copyWith(
                                  type: metadata.type,
                                  namespace: metadata.namespace)));
                            },
                          ),
                        ],
                        childrenBuilder: (context) => [
                          BlocBuilder<WorldBloc, WorldState>(
                            bloc: bloc,
                            buildWhen: (previous, current) =>
                                previous.metadata != current.metadata,
                            builder: (context, state) =>
                                Text(state.metadata.description),
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(PhosphorIconsLight.arrowLeft),
              title: Text(MaterialLocalizations.of(context).backButtonTooltip),
              onTap: () => Scaffold.of(context).closeDrawer(),
            ),
            ListTile(
              leading: const Icon(PhosphorIconsLight.package),
              title: Text(AppLocalizations.of(context).packs),
              onTap: () {
                final bloc = context.read<WorldBloc>();
                showDialog(
                  builder: (context) => PacksDialog(
                    bloc: bloc,
                  ),
                  context: context,
                );
              },
            ),
            BlocBuilder<WorldBloc, ClientWorldState>(
              buildWhen: (previous, current) =>
                  previous.table.background != current.table.background,
              builder: (context, state) {
                final bloc = context.read<WorldBloc>();
                final assetManager = bloc.assetManager;
                final background = state.table.background;
                return ListTile(
                    leading: const Icon(PhosphorIconsLight.image),
                    title: Text(AppLocalizations.of(context).background),
                    subtitle: background == null
                        ? null
                        : Text(assetManager
                            .getTranslations(background.namespace)
                            .getBackgroundTranslation(background.id)
                            .name),
                    onTap: () => showLeapBottomSheet(
                        context: context,
                        titleBuilder: (context) =>
                            Text(AppLocalizations.of(context).background),
                        childrenBuilder: (context) => bloc.packs
                                .expand(
                                    (e) => e.value.getBackgroundItems(e.key))
                                .sorted((a, b) =>
                                    b.item.priority.compareTo(a.item.priority))
                                .map((entry) {
                              final translation = assetManager
                                  .getTranslations(entry.namespace)
                                  .getBackgroundTranslation(entry.id);
                              return ListTile(
                                title: Text(translation.name),
                                subtitle: translation.description == null
                                    ? null
                                    : Text(translation.description!),
                                onTap: () {
                                  bloc.process(
                                      BackgroundChanged(entry.location));
                                  Navigator.of(context).pop();
                                },
                                selected: background == entry.location,
                              );
                            }).toList()));
              },
            ),
            ListTile(
              leading: const Icon(PhosphorIconsLight.users),
              title: Text(AppLocalizations.of(context).multiplayer),
              onTap: () {
                Scaffold.of(context).closeDrawer();
                final multiplayer = context.read<MultiplayerCubit>();
                showDialog(
                  context: context,
                  builder: (context) => BlocProvider.value(
                      value: multiplayer, child: const MultiplayerDialog()),
                );
              },
            ),
            ListTile(
              leading: const Icon(PhosphorIconsLight.flag),
              title: Text(AppLocalizations.of(context).teams),
              onTap: () {
                final bloc = context.read<WorldBloc>();
                showLeapBottomSheet(
                  context: context,
                  titleBuilder: (context) =>
                      Text(AppLocalizations.of(context).teams),
                  actionsBuilder: (context) => [
                    IconButton(
                      icon: const Icon(PhosphorIconsLight.plusCircle),
                      onPressed: () => showDialog(
                          context: context,
                          builder: (context) => BlocProvider.value(
                              value: bloc, child: const TeamDialog())),
                    ),
                  ],
                  childrenBuilder: (context) => [
                    BlocBuilder<WorldBloc, ClientWorldState>(
                      buildWhen: (previous, current) =>
                          previous.info.teams != current.info.teams ||
                          previous.teamMembers != current.teamMembers,
                      bloc: bloc,
                      builder: (context, state) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: state.info.teams.entries.map((entry) {
                            final name = entry.key;
                            final team = entry.value;
                            final color = team.color;
                            final selected =
                                state.teamMembers[name]?.contains(state.id) ??
                                    false;
                            return ListTile(
                              title: Text(entry.key),
                              leading: ColorButton(
                                color: color?.color ?? Colors.transparent,
                                size: 24,
                              ),
                              selected: selected,
                              trailing: MenuAnchor(
                                builder: defaultMenuButton(),
                                menuChildren: [
                                  MenuItemButton(
                                    leadingIcon:
                                        const Icon(PhosphorIconsLight.pencil),
                                    child:
                                        Text(AppLocalizations.of(context).edit),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) =>
                                            BlocProvider.value(
                                          value: bloc,
                                          child: TeamDialog(
                                              team: name, data: team),
                                        ),
                                      );
                                    },
                                  ),
                                  MenuItemButton(
                                    leadingIcon:
                                        const Icon(PhosphorIconsLight.trash),
                                    child: Text(
                                        AppLocalizations.of(context).delete),
                                    onPressed: () {
                                      bloc.process(TeamRemoved(name));
                                    },
                                  ),
                                ],
                              ),
                              onTap: () {
                                if (selected) {
                                  bloc.process(TeamLeaveRequest(name));
                                } else {
                                  bloc.process(TeamJoinRequest(name));
                                }
                              },
                            );
                          }).toList(),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
            ListTile(
                leading: const Icon(PhosphorIconsLight.fileArchive),
                title: Text(AppLocalizations.of(context).saveAsTemplate),
                onTap: () async {
                  final bloc = context.read<WorldBloc>();
                  String name = '';
                  final result = await showDialog<bool>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(AppLocalizations.of(context).saveAsTemplate),
                      content: TextField(
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context).name,
                          filled: true,
                        ),
                        onChanged: (value) => name = value,
                        onSubmitted: (value) => Navigator.of(context).pop(true),
                        autofocus: true,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(AppLocalizations.of(context).cancel),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Text(AppLocalizations.of(context).save),
                        ),
                      ],
                    ),
                  );
                  if (!(result ?? false)) return;
                  final state = bloc.state;
                  var data = state.save();
                  data = data.setFileMetadata(data
                      .getMetadataOrDefault()
                      .copyWith(name: name, type: FileType.template));
                  state.fileSystem.templateSystem.createFile(name, data);
                }),
            ListTile(
              leading: const Icon(PhosphorIconsLight.gear),
              title: Text(AppLocalizations.of(context).settings),
              onTap: () => openSettings(context),
            ),
            ListTile(
              leading: const Icon(PhosphorIconsLight.door),
              title: Text(AppLocalizations.of(context).home),
              onTap: () => GoRouter.of(context).go('/'),
            ),
          ],
        ),
      ),
    );
  }
}