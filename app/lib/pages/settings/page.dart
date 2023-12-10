import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:material_leap/material_leap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'general.dart';
import 'personalization.dart';

enum SettingsView { general, personalization }

class SettingsPage extends StatefulWidget {
  final bool isDialog;
  const SettingsPage({super.key, this.isDialog = false});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  SettingsView _view = SettingsView.general;
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();

    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: widget.isDialog ? Colors.transparent : null,
        child: LayoutBuilder(builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          var navigation = Column(children: [
            Header(
              title: Text(AppLocalizations.of(context).settings),
              leading: IconButton(
                icon: const PhosphorIcon(PhosphorIconsLight.x),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Flexible(
              child: Material(
                color: widget.isDialog ? Colors.transparent : null,
                child: ListView(
                    controller: _scrollController,
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        title: Text(AppLocalizations.of(context).general),
                        leading: const PhosphorIcon(PhosphorIconsLight.gear),
                        selected:
                            !isMobile ? _view == SettingsView.general : false,
                        onTap: () {
                          if (isMobile) {
                            Navigator.of(context).pop();
                            GoRouter.of(context).go('/settings/general');
                          } else {
                            setState(() {
                              _view = SettingsView.general;
                            });
                          }
                        },
                      ),
                      ListTile(
                          leading:
                              const PhosphorIcon(PhosphorIconsLight.monitor),
                          title: Text(
                              AppLocalizations.of(context).personalization),
                          selected: !isMobile
                              ? _view == SettingsView.personalization
                              : false,
                          onTap: () {
                            if (isMobile) {
                              Navigator.of(context).pop();
                              GoRouter.of(context)
                                  .go('/settings/personalization');
                            } else {
                              setState(() {
                                _view = SettingsView.personalization;
                              });
                            }
                          }),
                      if (kIsWeb) ...[
                        const Divider(),
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: InkWell(
                                onTap: () => launchUrl(
                                    Uri.https('vercel.com', '', {
                                      'utm_source': 'Linwood',
                                      'utm_campaign': 'oss'
                                    }),
                                    mode: LaunchMode.externalApplication),
                                child: Material(
                                  color: Colors.transparent,
                                  child: SizedBox(
                                      height: 50,
                                      child: SvgPicture.asset(
                                          'assets/images/powered-by-vercel.svg',
                                          placeholderBuilder: (BuildContext
                                                  context) =>
                                              Container(
                                                  padding: const EdgeInsets.all(
                                                      30.0),
                                                  child:
                                                      const CircularProgressIndicator()),
                                          semanticsLabel: 'Powered by Vercel')),
                                )))
                      ],
                    ]),
              ),
            )
          ]);
          if (isMobile) {
            return navigation;
          }
          Widget content;
          switch (_view) {
            case SettingsView.general:
              content = const GeneralSettingsPage(inView: true);
              break;
            case SettingsView.personalization:
              content = const PersonalizationSettingsPage(inView: true);
              break;
          }
          return Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(width: 300, child: navigation),
            Expanded(child: content),
          ]);
        }),
      ),
    );
  }
}
