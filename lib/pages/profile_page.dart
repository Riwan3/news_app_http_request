import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark != false ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text(
          'Profile Developer',
          style:
              TextStyle(color: isDark != false ? Colors.black : Colors.white),
        ),
        backgroundColor: isDark != false ? Colors.white : Colors.grey,
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Icon(
              Icons.arrow_back,
              color: isDark != false ? Colors.black : Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Switch(
                activeColor: Colors.yellow,
                activeTrackColor: Colors.white,
                activeThumbImage: AssetImage('assets/icons/if_sun.png'),
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.black,
                inactiveThumbImage: AssetImage('assets/icons/if_moon.png'),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: isDark,
                onChanged: (bool value) {
                  setState(() {
                    isDark = value;
                  });
                  // isDark = true;
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      color: isDark != false ? Colors.white : Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(100.0))),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/feri.jpeg'),
                  ),
                ),
              ],
            ),
            // end avatar

            SizedBox(height: 20.0),
            Text(
              'Feri Gunawan',
              style: TextStyle(
                color: isDark != false ? Colors.white : Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            fieldProfile(
              isDark: isDark,
              text: 'NPM',
              content: '2110020005',
            ),
            SizedBox(height: 20.0),
            fieldProfile(
              isDark: isDark,
              text: 'Kelas',
              content: '5A SI Reguler Pagi Banjarmasin',
            ),
            SizedBox(height: 20.0),
            fieldProfile(
              isDark: isDark,
              text: 'Kontak',
              content: 'ferigun348@gmail.com',
            ),
            SizedBox(height: 20.0),
            fieldProfile(
              isDark: isDark,
              text: 'Alamat',
              content: 'Marabahan',
            ),
          ],
        ),
      ),
    );
  }
}

class fieldProfile extends StatelessWidget {
  const fieldProfile({
    this.content,
    this.text,
    Key key,
    @required this.isDark,
  }) : super(key: key);

  final bool isDark;
  final String text;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50.0),
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: isDark != false ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
                color: isDark != false ? Colors.black : Colors.white,
                fontSize: 16.0),
          ),
          SizedBox(width: 30.0),
          Text(
            ':',
            style: TextStyle(
                color: isDark != false ? Colors.black : Colors.white,
                fontSize: 16.0),
          ),
          SizedBox(width: 30.0),
          Text(
            content,
            style: TextStyle(
                color: isDark != false ? Colors.black : Colors.white,
                fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
