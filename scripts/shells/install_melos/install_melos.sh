COMMAND="export PATH=\"\$PATH:/Users/$USER/.pub-cache/bin\""

if grep -xq "$COMMAND" "/Users/$USER/.zshrc"; then
  echo "Melos was add to path..."
  echo "Exit ..."
  echo "\n\n"
else
  echo "Not find melos in PATH ..."
  echo "Start add melos to PATH ..."
  echo "\n$COMMAND" >>"/Users/$USER/.zshrc"
  echo "Melos was add to path..."
  echo "Exit ..."
  echo "\n\n"
fi

echo "Start check dart or flutter support ..."
if ! command -v dart &>/dev/null; then
  echo "Dart command not found please install dart or flutter .."
  echo "Exit ..."
  echo "\n\n"
  exit
else
  echo "Dart or flutter is support ..."
  echo "Exit ..."
  echo "\n\n"
  echo "Start activate melos ..."
  dart pub global activate melos
  echo "Melos activate success please start new session terminal to begin use ..."
  echo "Exit ..."
  echo "\n\n"
fi
