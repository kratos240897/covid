import 'package:cached_network_image/cached_network_image.dart';
import 'package:covid_details/models/countries_response.dart';
import 'package:covid_details/screens/details/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class Details extends StatefulWidget {
  final int index;
  final String title;
  final List<CountryDetails> countries;
  final List<String> countryCodes;
  const Details(
      {Key? key,
      required this.title,
      required this.countries,
      required this.countryCodes,
      required this.index})
      : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final DetailsController controller = Get.find<DetailsController>();

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      controller.getCovidDetails(widget.countryCodes[0]);
      controller.selectedIndex.value = widget.index;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text(
          'Details',
          style: TextStyle(
              fontFamily: GoogleFonts.actor().fontFamily,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() {
              return controller.isLoading.value
                  ? Container(
                      margin: const EdgeInsets.only(left: 25.0),
                      child: const CircularProgressIndicator())
                  : Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 25.0),
                          child: Text(
                            controller.covidResponse.country,
                            style: TextStyle(
                                fontFamily: GoogleFonts.roboto().fontFamily,
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        SizedBox(
                          height: 30.0,
                          width: 30.0,
                          child: CachedNetworkImage(
                              imageUrl:
                                  controller.covidResponse.countryInfo.flag),
                        )
                      ],
                    );
            }),
            CarouselSlider(
              countryCodes: widget.countryCodes,
              controller: controller,
            ),
          ],
        )),
      ),
    );
  }
}

class CarouselSlider extends StatefulWidget {
  final List<String> countryCodes;
  final DetailsController controller;
  const CarouselSlider(
      {Key? key, required this.countryCodes, required this.controller})
      : super(key: key);

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  int _initalPage = 1;
  PageController? _pageController;

  @override
  void initState() {
    _pageController =
        PageController(viewportFraction: 0.8, initialPage: _initalPage);
    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: AspectRatio(
          aspectRatio: 0.80,
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) => setState(() {
                    _initalPage = value;
                  }),
              physics: const ClampingScrollPhysics(),
              itemCount: widget.countryCodes.length,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: _pageController!,
                  builder: (context, child) {
                    double value = 0;
                    if (_pageController!.position.haveDimensions) {
                      value = index - _pageController!.page!.toDouble();
                      value = (value * 0.038).clamp(-1, 1);
                    }
                    return AnimatedOpacity(
                      duration: const Duration(milliseconds: 350),
                      opacity: _initalPage == index ? 1 : 0.4,
                      child: Transform.rotate(
                          angle: math.pi * value,
                          child: CountryCard(
                              pageController: _pageController!,
                              controller: widget.controller,
                              countryCode: widget.countryCodes[index])),
                    );
                  },
                );
              })),
    );
  }
}

class CountryCard extends StatefulWidget {
  final String countryCode;
  final DetailsController controller;
  final PageController pageController;
  const CountryCard(
      {Key? key,
      required this.countryCode,
      required this.controller,
      required this.pageController})
      : super(key: key);

  @override
  State<CountryCard> createState() => _CountryCardState();
}

class _CountryCardState extends State<CountryCard> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      widget.controller.getCovidDetails(widget.countryCode);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return widget.controller.isLoading.value
          ? Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0)),
              child: const Center(child: CircularProgressIndicator()),
            )
          : LayoutBuilder(builder: (context, constraints) {
              return Container(
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Active',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.actor().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            const SizedBox(width: 5.0),
                            const FaIcon(FontAwesomeIcons.adjust)
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()),
                          child: Text(
                              widget.controller.covidResponse.active.toString(),
                              style: TextStyle(
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontSize: 16.0)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Cases',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.actor().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            const SizedBox(width: 5.0),
                            const FaIcon(FontAwesomeIcons.peopleArrows)
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()),
                          child: Text(
                              widget.controller.covidResponse.cases.toString(),
                              style: TextStyle(
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontSize: 16.0)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Deaths',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.actor().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            const SizedBox(width: 5.0),
                            const FaIcon(FontAwesomeIcons.hospital)
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()),
                          child: Text(
                              widget.controller.covidResponse.deaths.toString(),
                              style: TextStyle(
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontSize: 16.0)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Critical',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.actor().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            const SizedBox(width: 5.0),
                            const FaIcon(FontAwesomeIcons.prescription)
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()),
                          child: Text(
                              widget.controller.covidResponse.critical
                                  .toString(),
                              style: TextStyle(
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontSize: 16.0)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Tests',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.actor().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            const SizedBox(width: 5.0),
                            const FaIcon(FontAwesomeIcons.medkit)
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()),
                          child: Text(
                              widget.controller.covidResponse.tests.toString(),
                              style: TextStyle(
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontSize: 16.0)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Recovered',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.actor().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            const SizedBox(width: 5.0),
                            const FaIcon(FontAwesomeIcons.recycle)
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()),
                          child: Text(
                              widget.controller.covidResponse.recovered
                                  .toString(),
                              style: TextStyle(
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontSize: 16.0)),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            });
    });
  }
}
