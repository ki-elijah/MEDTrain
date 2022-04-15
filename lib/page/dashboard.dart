import 'dart:math' as math;
import 'package:url_launcher/link.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<DashboardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore!!!"),
      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            const xn330(),
            Centrifuge(),
            /*Defibrillators(),*/
          ],
        ),
      ),
    );
  }
}

class xn330 extends StatelessWidget {
  const xn330({Key? key}) : super(key: key);
  launchURL(String url) async{
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could not open tutorial $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150,
                  child: Container(
                    child: Image.asset(
                      'assets/images/330.png',
                      height: 300.0,
                      width: 300.0,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "XN-330",
                          )),
                    collapsed: ElevatedButton(
                      child: const Text('Tutorial'),
                      onPressed: (){
                        const url = 'https://www.youtube.com/watch?v=FxTwIYbflEI';
                        launchURL(url);
                        },
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Clean with a clean cloth',
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Incase of a break down, please call a Sysmex engineer',
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Centrifuge extends StatelessWidget {
  const Centrifuge({Key? key}) : super(key: key);
  launchURL(String url) async{
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could not open tutorial $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150,
                  child: Container(
                    child: Image.asset(
                      'assets/images/centrifuges.jpg',
                      height: 300.0,
                      width: 300.0,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Laboratory Centrifuges",
                        )),
                    collapsed: ElevatedButton(
                      child: const Text('Tutorial'),
                      onPressed: (){
                        const url = 'https://www.youtube.com/watch?v=E0Kt79N9Sm4';
                        launchURL(url);
                      },
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Remove all tube adapters from the buckets.',
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Wash buckets and adaptors in warm soap water. Mild multi-purpose cleaner or dish-washing liquid are well suited.',
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Use a sponge and a plastic brush. Metal brushes scratch the surface, which createproblems with corrosion in the future.',
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Only use kitchen scouring pads in extreme cases. But watch out, do not scratch thesurfaces.',
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
/*

class Defibrillators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
*/
