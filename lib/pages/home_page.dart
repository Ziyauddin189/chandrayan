import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';


class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  Container(
                    child: _bookRideWidget(),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                  child: _astroImageWidget(),

              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _pageTitle() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          const Text(
            "Chandrayaan 3",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Text(
            "India IS ROcking !!",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }


  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destionationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _destionationDropDownWidget() {
    return CustomDropDownButtonClass(
      values: const [
        'South Pole',
        'North Pole',
      ],
      width: _deviceWidth,
    );
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButtonClass(
          values: const ['360°', '270°', '90°', '75°'],
          width: _deviceWidth * 0.45,
        ),
        CustomDropDownButtonClass(
          values: const ['East', 'West', 'North', 'South'],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "View Moon Live!",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
