import 'package:coffee_app/home_screen.dart';
import 'package:coffee_app/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  static var routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(AppTheme.systemUiTrans);
    // this will prevent change oriontation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Spacer(
                    flex: 20,
                  ),
                  Expanded(
                    flex: 20,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 50,
                            child: Text(
                              'Coffee a day\nkeeps the doc away',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                          Spacer(
                            flex: 10,
                          ),
                          Expanded(
                            flex: 40,
                            child: Text(
                              'Get started by ordering your\nfavorite cup of coffee!',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: FractionallySizedBox(
                      widthFactor: 0.8,
                      child: Card(
                        elevation: 0,
                        clipBehavior: Clip.antiAlias,
                        color: Colors.transparent,
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppTheme.radius),
                          side: BorderSide(
                            width: 2,
                            color: AppTheme.primary,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: FractionallySizedBox(
                                widthFactor: 0.8,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 75,
                                      child: FittedBox(
                                        child: Text(
                                          'Get your cup of coffee'
                                              .toUpperCase(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3,
                                        ),
                                      ),
                                    ),
                                    Spacer(
                                      flex: 10,
                                    ),
                                    Expanded(
                                        flex: 15,
                                        child: SvgPicture.asset(
                                            'assets/images/icon_next.svg'))
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  splashFactory: InkRipple.splashFactory,
                                  splashColor: AppTheme.shadow.withOpacity(0.1),
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, HomeScreen.routeName);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
