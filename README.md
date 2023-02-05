- flutter pub global activate get_cli
- export PATH="$PATH":"$HOME/development/flutter/.pub-cache/bin"
- export PATH="$PATH":"$HOME/.pub-cache/bin"
- get init
- get create project:project_name
- get create page:login [controller,view,binding]

- get create controller:another on [page]
- get create view:another on [page]
- get create provider:another on [page]

- get generate model on [page]
- get generate model on [page] from [api]
- get generate model on [page] with [assets/models]
- get generate locales assets/locales

- npm install -g firebase-tools
- dart pub global activate flutterfire_cli
- export PATH="$PATH":"$HOME/.pub-cache/bin"
- flutterfire configure
- flutter build apk --release --no-sound-null-safety