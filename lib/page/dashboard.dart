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
          children: const <Widget>[
            xn330(),
            Centrifuge(),
            defib(),
            facspresto(),
          ],
        ),
      ),
    );
  }
}

class xn330 extends StatelessWidget {
  const xn330({Key? key}) : super(key: key);
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not open tutorial $url';
    }
  }
  launchURL2(String url2) async {
    if (await canLaunch(url2)) {
      await launch(url2);
    } else {
      throw 'Could not open tutorial $url2';
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
            ElevatedButton(
              child: const Text('Info'),
              onPressed: () {
                const url2 = 'https://www.sysmex-ap.com/product/xn-330/';
                launchURL2(url2);
              },
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
                  onPressed: () {
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
                        'Hematology analyzers are used widely in patient and research settings to count and characterize blood cells for disease detection and monitoring. Basic analyzers return a complete blood count (CBC) with a three-part differential white blood cell (WBC) count. Sophisticated analyzers measure cell morphology and can detect small cell populations to diagnose rare blood conditions.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'PRECAUTIONS AND MAINTENANCE',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Use an inverter with a grounding plug to connect the machine',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Allow good air conditioning around the device(15 inches off the wall)',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Check if there are no air bubbless in the reagent tubing',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),

                    /*Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Always check for reagent leaks in the hydraulic circuit',
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),*/
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Always check for reagent leaks in the hydraulic circuit',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Avoid sudden shutdowns',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Mix thoroughly the sample before using it',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Avoid reagent polution by dust',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Always observe shutdown procedure',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Clean the device before and after analysis with distilled water and always wipe off traces of blood around the machine',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
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
                  onPressed: () {
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
                        'Centrifuges are used to separate fluids,gases or liquids based on density.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'PRICNCIPLES.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Separation is according to size and density,viscosity and rotor speed.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Gravitation causes particles of higher density to sink.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'PRECAUTIONS.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Do not open the lid while the rotor is running.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'If the centrifuge is wobbling or shaking, pull the plug.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Ensure a sturdy,level work surface.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'MAINTENANCE.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Regularly clean with neutral cleaning solution,alcohol based.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'this solution is applied with a soft cloth to the rotors and accessories.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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

class defib extends StatelessWidget {
  const defib({Key? key}) : super(key: key);
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
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
                  'assets/images/defibrillator-market.png',
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
                      "Defibrillator",
                    )),
                collapsed: ElevatedButton(
                  child: const Text('Tutorial'),
                  onPressed: () {
                    const url = 'https://www.youtube.com/watch?v=097aMg_Ocq8';
                    launchURL(url);
                  },
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'This is a device that sends an electric pulse or shock to the heart to restore a normal heartbeatS',
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
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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

class facspresto extends StatelessWidget {
  const facspresto({Key? key}) : super(key: key);
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
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
                  'assets/images/presto.jpg',
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
                      "BD FACSPresto",
                    )),
                collapsed: ElevatedButton(
                  child: const Text('Tutorial'),
                  onPressed: () {
                    const url = 'https://www.youtube.com/watch?v=QxGVYM3LDQI';
                    launchURL(url);
                  },
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'BD facspresto is a portable CD4 testing solution that offers a simple workflow with high precision and accuracy and ease of use.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'PRINCIPLES.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'When blood is introduced int the machine catridge, the specific antibodies bind to the surface antigens on the T lymphocytes and monocytes  during the incubation period.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'PRECAUTIONS.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Turnoff the instrument when it is not in use.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Cover the intrument with the included instrument cover when it is not in use.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'MAINTENANCE.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'As needed, clean the outside of the instrument or work station with a cloth dumpemed with either diluted bleach.',
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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

