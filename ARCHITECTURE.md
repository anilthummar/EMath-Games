# Architecture

## Monorepo

| Location | Role |
|----------|------|
| `/` | Main Flutter app (flutter_base) |
| `packages/` | Shared packages (config, dls, fnc, network, etc.) |

**DI:** App owns GetIt. Packages use `static final instance` where possible; only services needing app config (e.g. PermissionManager) are registered in app.

## App Structure

```
lib/
├── app/           # Core, initializer, translations
├── base/          # Singleton, MainConfig
├── gen/           # Generated (assets, fonts)
├── modules/       # Feature modules
├── service/       # Navigation, network, firebase
└── utils/         # App-specific extensions, helpers
```

## Module Structure (Bloc)

Each feature in `lib/modules/<name>/`:

| Layer | Folder | Contents |
|-------|--------|----------|
| Model | `model/` | Entities, request/response DTOs |
| Repository | `repository/` | Abstract repo + impl |
| Bloc | `bloc/` | Events, state, logic |
| UI | `ui/` | Pages, widgets |

View binds via `BlocProvider` / `BlocBuilder`; Bloc uses Repository and Model.

## Packages

| Package | Instance | Contents |
|---------|----------|----------|
| config | — | AppConstant, base_config, enums |
| database | — | Placeholder |
| dls | static | AppColors, AppStyles, Dimens, MyAppTheme |
| fnc | static | RegExpressions, AESEncryption, DateUtils |
| logger | static | DebugLog |
| storage | static | SharedPref |
| permission | GetIt | PermissionManager (needs onLog) |
| network | — | ResponseHandler, BaseRepository, ApiConst |
| graphql | — | GraphQLClientWrapper, BaseGraphQLRepository, GraphQLClientFactory |
| notifications | static | NotificationManager |
| sentry | static | SentryService |
| common | — | Breakpoints, BaseResponsiveView, string/context extensions |
| localization | — | LocaleStorage, SharedPrefLocaleStorage |
