import '../../../../utils/exports.dart';

/// Entry screen shown after splash (formerly login).
@RoutePage(name: 'StartScreenRoute')
class StartScreenPage extends StatelessWidget {
  /// Creates a start screen page.
  const StartScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StartScreenBloc>(
      create: (BuildContext ctx) => StartScreenBloc(),
      child: const Scaffold(
        body: StartScreenForm(),
      ),
    );
  }
}
