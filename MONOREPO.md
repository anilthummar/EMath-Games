# Monorepo (Melos)

Flutter monorepo managed with [Melos](https://melos.invertase.dev/).

## Structure

```
.
├── lib/                    # Main app (flutter_base)
├── packages/
│   ├── config/             # Constants, env, base config
│   ├── common/             # Breakpoints, responsive UI, extensions
│   ├── database/           # Database layer (placeholder)
│   ├── dls/                # Design Language System
│   ├── fnc/                # Utilities (date, encryption, regex, scroll)
│   ├── graphql/            # GraphQL client, BaseGraphQLRepository, factory
│   ├── localization/      # Locale persistence, helpers
│   ├── network/            # ResponseHandler, BaseRepository, ApiConst
│   ├── notifications/     # Firebase, FCM, Awesome Notifications
│   ├── permission/         # Permission requests, status checks
│   ├── sentry/             # Crash reporting, API tracing (app_sentry)
│   ├── storage/            # SharedPref, encrypted storage
│   └── logger/             # Debug logging (app_logger)
├── melos.yaml
└── pubspec.yaml
```

## Packages

| Package | Purpose |
|---------|---------|
| `config` | AppConstant, base_config (dart-define), enums |
| `common` | BaseResponsiveView, breakpoints, context/string extensions |
| `database` | Database layer (placeholder) |
| `dls` | AppColors, AppStyles, Dimens, MyAppTheme, ToolBarModel |
| `fnc` | DateUtils, AESEncryption, RegExpressions, AppScrollBehavior |
| `graphql` | GraphQLClientWrapper, BaseGraphQLRepository, GraphQLClientFactory |
| `localization` | LocaleStorage, SharedPrefLocaleStorage |
| `network` | ResponseHandler, BaseRepository, ApiConst |
| `notifications` | FirebaseOptionsProvider, NotificationManager, AwesomeNotificationManager |
| `permission` | PermissionManager, PermissionConfig |
| `sentry` | SentryService, SentryConfig (app_sentry) |
| `storage` | SharedPref (encrypted) |
| `logger` | DebugLog (app_logger) |

## DI (GetIt)

- **Package-owned:** dls, fnc, logger, storage, sentry use `static final instance`
- **App-registered:** PermissionManager, MainConfig, AppRouter, ApiClient, repositories, blocs
- Call `setupLocator()` before `runApp()`

## Setup

```bash
dart pub global activate melos
melos bootstrap
```

## Commands

| Command | Description |
|---------|-------------|
| `melos bootstrap` | Install deps and link packages |
| `melos run run:app` | Run main app |
| `melos run build:apk` | Build release APK |
| `melos run build:ios` | Build iOS |
| `melos run analyze` | Run dart analyze |
| `melos run test` | Run tests |
| `melos run clean` | Clean all packages |
| `melos run format` | Format code |
| `melos run format:check` | Check formatting (CI) |
