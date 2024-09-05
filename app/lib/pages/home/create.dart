import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lw_file_system/lw_file_system.dart';
import 'package:material_leap/material_leap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:quokka/api/open.dart';
import 'package:quokka/api/save.dart';
import 'package:quokka/services/file_system.dart';
import 'package:quokka_api/quokka_api.dart';
import 'package:rxdart/rxdart.dart';

class CreateDialog extends StatefulWidget {
  const CreateDialog({super.key});

  @override
  State<CreateDialog> createState() => _CreateDialogState();
}

class _CreateDialogState extends State<CreateDialog>
    with TickerProviderStateMixin {
  late final TabController _tabController, _customTabController;
  final PageController _pageController = PageController(keepPage: true);
  final GlobalKey _pageKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController(),
      _descriptionController = TextEditingController();
  late final TypedKeyFileSystem<QuokkaData> _templateSystem, _worldSystem;
  late final QuokkaFileSystem _fileSystem;
  late Stream<List<FileSystemFile<QuokkaData>>> _templatesStream;
  late final Future<List<FileSystemFile<QuokkaData>>> _packsFuture;

  String? _selectedTemplate;
  List<String>? _selectedPacks;

  bool _infoView = false;

  @override
  void initState() {
    super.initState();
    _fileSystem = context.read<QuokkaFileSystem>();
    _worldSystem = _fileSystem.worldSystem;
    _templateSystem = _fileSystem.templateSystem;
    _templatesStream = ValueConnectableStream(_loadTemplates()).autoConnect();
    _packsFuture = _fileSystem.getPacks();
    _tabController = TabController(length: 2, vsync: this);
    _customTabController = TabController(length: 2, vsync: this);
  }

  void _reloadTemplates() => setState(() => _templatesStream =
      ValueConnectableStream(_loadTemplates()).autoConnect());

  Stream<List<FileSystemFile<QuokkaData>>> _loadTemplates() async* {
    await _templateSystem.initialize();
    yield* _templateSystem.fetchFiles();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _customTabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < LeapBreakpoints.medium;
    final selections = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TabBar(
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            HorizontalTab(
              icon: const PhosphorIcon(PhosphorIconsLight.globe),
              label: Text(AppLocalizations.of(context).custom),
            ),
            HorizontalTab(
              icon: const PhosphorIcon(PhosphorIconsLight.folder),
              label: Text(AppLocalizations.of(context).templates),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Column(children: [
                TabBar.secondary(
                  tabs: [
                    HorizontalTab(
                      label: Text(AppLocalizations.of(context).packs),
                      icon: const Icon(PhosphorIconsLight.package),
                    ),
                    HorizontalTab(
                      label: Text(AppLocalizations.of(context).configuration),
                      icon: const Icon(PhosphorIconsLight.wrench),
                    ),
                  ],
                  tabAlignment: TabAlignment.center,
                  controller: _customTabController,
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Material(
                    type: MaterialType.transparency,
                    child: TabBarView(
                      controller: _customTabController,
                      children: [
                        _CustomCreateView(
                          packsFuture: _packsFuture,
                          selectedPacksId: _selectedPacks,
                          onPacksSelected: (value) =>
                              setState(() => _selectedPacks = value),
                        ),
                        ListView(
                          children: [
                            ListTile(
                              title:
                                  Text(AppLocalizations.of(context).background),
                              subtitle:
                                  Text(AppLocalizations.of(context).comingSoon),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              Material(
                type: MaterialType.transparency,
                child: StreamBuilder(
                  stream: _templatesStream,
                  builder: (context, snapshot) {
                    final templates = snapshot.data;
                    if (templates == null) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return ListView.builder(
                      itemCount: templates.length,
                      itemBuilder: (context, index) {
                        final entry = templates[index];
                        final name = entry.pathWithoutLeadingSlash;
                        return ListTile(
                          title: Text(name),
                          trailing: MenuAnchor(
                            builder: defaultMenuButton(),
                            menuChildren: [
                              MenuItemButton(
                                leadingIcon:
                                    const Icon(PhosphorIconsLight.export),
                                child:
                                    Text(AppLocalizations.of(context).export),
                                onPressed: () => exportData(
                                    context, entry.data!, entry.fileName),
                              ),
                              MenuItemButton(
                                leadingIcon:
                                    const Icon(PhosphorIconsLight.trash),
                                child:
                                    Text(AppLocalizations.of(context).delete),
                                onPressed: () async {
                                  await _templateSystem.deleteFile(entry.path);
                                  _reloadTemplates();
                                },
                              )
                            ],
                          ),
                          selected: _selectedTemplate == name,
                          onTap: () => setState(
                              () => _selectedTemplate = entry.fileName),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
    final details = ListView(
      children: [
        Text(AppLocalizations.of(context).details,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            labelText: AppLocalizations.of(context).name,
            hintText: AppLocalizations.of(context).enterName,
            filled: true,
          ),
          controller: _nameController,
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            labelText: AppLocalizations.of(context).description,
            hintText: AppLocalizations.of(context).enterDescription,
            border: const OutlineInputBorder(),
          ),
          controller: _descriptionController,
          minLines: 3,
          maxLines: 5,
        ),
      ],
    );
    return ResponsiveAlertDialog(
      title: Text(AppLocalizations.of(context).create),
      constraints: const BoxConstraints(
        maxWidth: LeapBreakpoints.expanded,
        maxHeight: 700,
      ),
      content: IndexedStack(
        index: isMobile ? 0 : 1,
        key: _pageKey,
        children: [
          PageView(
            controller: _pageController,
            children: [
              selections,
              details,
            ],
            onPageChanged: (value) =>
                setState(() => _infoView = value.toInt() == 1),
          ),
          Row(
            children: [
              Expanded(child: selections),
              const SizedBox(width: 16),
              const VerticalDivider(),
              const SizedBox(width: 16),
              Expanded(child: details),
            ],
          )
        ],
      ),
      headerActions: [
        IconButton(
          onPressed: () => importFile(
            context,
            _fileSystem,
          ).then((_) => _reloadTemplates()),
          tooltip: AppLocalizations.of(context).import,
          icon: const Icon(PhosphorIconsLight.arrowSquareIn),
        ),
      ],
      actions: [
        TextButton.icon(
          onPressed: () => Navigator.of(context).pop(false),
          label: Text(AppLocalizations.of(context).cancel),
          icon: const Icon(PhosphorIconsLight.prohibit),
        ),
        if (isMobile && !_infoView) ...[
          FilledButton.icon(
            icon: const Icon(PhosphorIconsBold.arrowRight),
            label: Text(AppLocalizations.of(context).next),
            onPressed: () => _pageController.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            ),
          ),
        ] else ...[
          if (isMobile)
            ElevatedButton.icon(
              icon: const Icon(PhosphorIconsBold.arrowLeft),
              label: Text(AppLocalizations.of(context).back),
              onPressed: () => _pageController.previousPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
              ),
            ),
          FilledButton.icon(
            onPressed: () async {
              final name = _nameController.text;
              final description = _descriptionController.text;
              var template =
                  _selectedTemplate == null || _tabController.index == 0
                      ? null
                      : await _templateSystem.getFile(_selectedTemplate!);
              template ??= QuokkaData.empty().setInfo(
                GameInfo(
                  packs: _selectedPacks ??
                      (await _packsFuture).map((e) => e.path).toList(),
                ),
              );
              template = template.setFileMetadata(
                FileMetadata(
                  name: name,
                  description: description,
                  type: FileType.game,
                ),
              );
              await _worldSystem.createFile(name, template);

              if (context.mounted) {
                Navigator.of(context).pop(true);
              }
            },
            label: Text(AppLocalizations.of(context).create),
            icon: const Icon(PhosphorIconsLight.plus),
          ),
        ]
      ],
    );
  }
}

class _CustomCreateView extends StatelessWidget {
  final Future<List<FileSystemFile<QuokkaData>>> packsFuture;
  final List<String>? selectedPacksId;
  final void Function(List<String>) onPacksSelected;

  const _CustomCreateView({
    required this.packsFuture,
    required this.selectedPacksId,
    required this.onPacksSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FileSystemFile<QuokkaData>>>(
        future: packsFuture,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final allPacks = snapshot.data!;
          final addedPacks = selectedPacksId
                  ?.map((e) =>
                      allPacks.firstWhereOrNull((element) => element.path == e))
                  .nonNulls
                  .toList() ??
              allPacks;
          final notAdded = allPacks
              .where((e) => !(selectedPacksId?.contains(e.path) ?? true))
              .toList();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ReorderableListView.builder(
                  itemCount: addedPacks.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final pack = addedPacks[index];
                    return ListTile(
                      title: Text(pack.data?.getMetadata()?.name ??
                          AppLocalizations.of(context).unnamed),
                      subtitle: Text(pack.pathWithoutLeadingSlash),
                      key: ObjectKey(pack.path),
                      leading: IconButton.outlined(
                        icon: const Icon(PhosphorIconsLight.minus),
                        onPressed: () {
                          final newSelected = addedPacks
                              .map((e) => e.path)
                              .where((e) => e != pack.path)
                              .toList();
                          onPacksSelected(newSelected);
                        },
                      ),
                    );
                  },
                  onReorder: (int oldIndex, int newIndex) {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    final newSelected = addedPacks.map((e) => e.path).toList();
                    final item = newSelected.removeAt(oldIndex);
                    newSelected.insert(newIndex, item);
                    onPacksSelected(newSelected);
                  },
                ),
              ),
              SizedBox(
                height: 42,
                child: ElevatedButton.icon(
                  icon: const Icon(PhosphorIconsLight.plus),
                  label: Text(AppLocalizations.of(context).addPack),
                  onPressed: notAdded.isEmpty
                      ? null
                      : () {
                          showLeapBottomSheet(
                            context: context,
                            titleBuilder: (context) =>
                                Text(AppLocalizations.of(context).addPack),
                            childrenBuilder: (context) => notAdded.map((e) {
                              return ListTile(
                                title: Text(e.data!.getMetadata()?.name ??
                                    AppLocalizations.of(context).unnamed),
                                subtitle: Text(e.pathWithoutLeadingSlash),
                                onTap: () {
                                  Navigator.of(context).pop();
                                  onPacksSelected([
                                    ...?selectedPacksId,
                                    e.path,
                                  ]);
                                },
                              );
                            }).toList(),
                          );
                        },
                ),
              ),
            ],
          );
        });
  }
}
