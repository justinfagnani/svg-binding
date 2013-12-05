import 'package:polymer/builder.dart';

main(args) {
  build(entryPoints: ['web/clock.html'],
        options: parseOptions(args));
}
