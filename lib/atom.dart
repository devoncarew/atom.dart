library atom;

import "dart:js" as js;

import "utils.dart";

part "src/core.dart";
part "src/command_registry.dart";
part "src/config.dart";
part "src/text_editor.dart";
part "src/workspace.dart";
part "src/packages.dart";
part "src/themes.dart";
part "src/styles.dart";

js.JsObject require(String input) => js.context.callMethod("require", [input]);
js.JsObject get global => js.context;

js.JsObject toJsObject(Map map) {
  return new js.JsObject.jsify(map);
}
