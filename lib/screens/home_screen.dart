import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:productivity_tracker/bloc/app_bloc.dart';
import 'package:productivity_tracker/bloc/app_state.dart';
import 'package:productivity_tracker/utils/todos_list.dart';
import 'package:productivity_tracker/widgets/clip_widget.dart';
import 'package:productivity_tracker/widgets/custom_button.dart';
import 'package:productivity_tracker/widgets/list_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.log(Level.info, '${allTask.length}');
    return BlocBuilder<AppBloc, AppState>(builder: (context, state) {
      return Scaffold(
        drawer: const DrawerButtonIcon(),
        backgroundColor: const Color.fromARGB(250, 238, 198, 109),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFAF0E6),
                      Color.fromARGB(255, 237, 217, 197),
                      Color.fromARGB(250, 238, 198, 109)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Image.asset(
                          'assets/images/profile.jfif',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Hello,',
                        style: GoogleFonts.alata(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'MohammadHusen',
                        style: GoogleFonts.alata(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  const ClipBottomWidget(),
                  const ListOfCards(),
                  Positioned(
                    bottom: 120.0,
                    left: 12.0,
                    child: CustomButton(
                      callback: () {
                        Navigator.of(context).pushNamed('/addoverlay');
                      },
                    ),
                  ),
                  if (allTask.isNotEmpty)
                    Positioned(
                      left: 24,
                      top: 250.0,
                      child: Container(
                        decoration: const BoxDecoration(),
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: allTask.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    allTask[index].task,
                                  ),
                                  leading: Checkbox(
                                    onChanged: (value) {
                                      allTask[index].isCompleted = true;
                                    },
                                    value: allTask[index].isCompleted,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
