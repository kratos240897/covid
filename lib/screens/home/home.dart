import 'package:covid_details/routes/router.dart';
import 'package:covid_details/screens/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text(
          'Covid Live',
          style: TextStyle(
              fontFamily: GoogleFonts.actor().fontFamily,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Obx(() {
        return controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListView.separated(
                    itemCount: controller.countries.length,
                    separatorBuilder: ((_, _index) {
                      return const Divider(color: Colors.white);
                    }),
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () => Get.toNamed(AppRouter.DETAILS, arguments: {
                          'title': controller.countries[index].country,
                          'countries': controller.countries,
                          'codes': controller.countryCodes,
                          'index': index
                        }),
                        child: ListTile(
                          leading: const CircleAvatar(
                            child: FaIcon(FontAwesomeIcons.flag),
                          ),
                          title: Text(controller.countries[index].country,
                              style: TextStyle(
                                  fontFamily: GoogleFonts.spartan().fontFamily,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0)),
                          minVerticalPadding: 8.0,
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(controller.countries[index].region,
                                style: TextStyle(
                                    fontFamily:
                                        GoogleFonts.quicksand().fontFamily,
                                    color: Colors.lime,
                                    fontSize: 16.0)),
                          ),
                        ),
                      );
                    })),
              );
      }),
    );
  }
}
