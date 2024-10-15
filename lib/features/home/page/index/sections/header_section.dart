part of '../page.dart';

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Sorohooo',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              Text(
                '@rizqiirkhamm',
                style: TextStyle(
                  color: Color(0xff504F5E),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/profile.png',
            width: 54,
            height: 54,
          ),
        ],
      ),
    );
  }
}
