import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

//RIVERPOD START
final pondDrawerProvider = StateProvider((ref) => const PondDrawer());
final pondEntryProvider = StateProvider((ref) => '');

//MAIN
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pond App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.green,
              brightness: Brightness.dark,
              surface: const Color(0xff003909))),
      home: const Journal(),
    );
  }
}

//POND HOME PAGE START
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//JOURNAL PAGE
class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    List<String> _journalEntries = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home: Journal',
          style: GoogleFonts.indieFlower(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      drawer: const PondDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child: Container()),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const PondPage()),
                  ));
                },
                child: Text(
                  'New Entry',
                  style: GoogleFonts.indieFlower(fontWeight: FontWeight.w700),
                )),
          ],
        ),
      ),
    );
  }
}

//DIARY PAGE
class Diary extends StatefulWidget {
  const Diary({Key? key}) : super(key: key);

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    List<String> _DiaryEntries = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home: Diary',
          style: GoogleFonts.indieFlower(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      drawer: const PondDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child: Container()),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const PondPage()),
                  ));
                },
                child: Text(
                  'New Entry',
                  style: GoogleFonts.indieFlower(fontWeight: FontWeight.w700),
                )),
          ],
        ),
      ),
    );
  }
}

//NOTES PAGE
class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    List<String> _NotesEntries = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home: Notes',
          style: GoogleFonts.indieFlower(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      drawer: const PondDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child: Container()),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const PondPage()),
                  ));
                },
                child: Text(
                  'New Entry',
                  style: GoogleFonts.indieFlower(fontWeight: FontWeight.w700),
                )),
          ],
        ),
      ),
    );
  }
}

//POND DRAWER
class PondDrawer extends ConsumerWidget {
  const PondDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: SizedBox(
          width: 80,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 15, top: 44),
                  // child:
                  IconButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    icon: const Icon(Icons.cancel),
                  ),
                  // )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 14),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const Notes()),
                    ));
                  }),
                  child: Text(
                    'Notes',
                    style: GoogleFonts.indieFlower(
                        fontWeight: FontWeight.w700, color: Colors.yellow),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 14),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const Journal()),
                    ));
                  }),
                  child: Text(
                    'Journal',
                    style: GoogleFonts.indieFlower(
                        fontWeight: FontWeight.w700, color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 14),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const Diary()),
                    ));
                  }),
                  child: Text(
                    'Diary',
                    style: GoogleFonts.indieFlower(
                        fontWeight: FontWeight.w700, color: Colors.pink),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
            ],
          )),
    );
  }
}

//POND NEW ENTRY
class PondPage extends ConsumerWidget {
  const PondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String title = ref.watch(pondEntryProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.indieFlower(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
        child: Column(
          children: [
            const TextField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Add')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
