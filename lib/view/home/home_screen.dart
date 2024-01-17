import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:odugur/core/app_color.dart';
import 'package:odugur/view/home/widgets/home_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'COINIHA',
          style: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Container(
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: const Color(0xff272A34),
                borderRadius: BorderRadius.circular(20)),
            child: RichText(
              text: const TextSpan(
                text: 'your daily checkin has been ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  fontFamily: 'baloo2',
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'approved',
                    style: TextStyle(
                      color: Color(0xff6D4EFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xff272A34),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/UI/1.png"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: AppColor.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Fares',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Row(
            children: [
              HomeCard(
                title: "22",
                sousTitle: "User’s Rank",
              ),
              Spacer(
                flex: 1,
              ),
              HomeCard(
                title: "345",
                sousTitle: "Earned Coins",
              ),
            ],
          ),
          const Row(
            children: [
              HomeCard(
                title: "22",
                sousTitle: "User’s Rank",
              ),
              Spacer(
                flex: 1,
              ),
              HomeCard(
                title: "345",
                sousTitle: "Earned Coins",
              ),
            ],
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Looks like that some coins\nare waiting for you ...',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      SvgPicture.asset(
                        'assets/images/logo.svg',
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const CopyWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CopyWidget extends StatefulWidget {
  const CopyWidget({
    super.key,
  });

  @override
  State<CopyWidget> createState() => _CopyWidgetState();
}

class _CopyWidgetState extends State<CopyWidget> {
  bool isCopying = false;
  @override
  Widget build(BuildContext context) {
    String txt = isCopying ? "Copied!" : "Copy Invite Link";
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: isCopying
            ? const Color.fromARGB(255, 73, 41, 212)
            : AppColor.primary,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () async {
        setState(() {
          isCopying = true;
        });
        await Future.delayed(const Duration(seconds: 2));
        setState(() {
          isCopying = false;
        });
      },
      child: Text(
        txt,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
