import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_db.g.dart';

class ItemsTable extends Table {
  @override
  String get tableName => 'items';

  IntColumn get itemId => integer().named('item_id').autoIncrement()();
  TextColumn get itemName => text().named('item_name')();

  // Drift stores DateTime as INTEGER (unix seconds) by default in SQLite and converts for you.
  DateTimeColumn get expiryDate => dateTime().named('expiry_date').nullable()();

  TextColumn get aiStatus => text().named('ai_status').nullable()();

  // Keep it as a TEXT path/url to a local file or remote url
  TextColumn get nerfModel => text().named('nerf_model').nullable()();
}

class ItemImagesTable extends Table {
  @override
  String get tableName => 'item_images';

  IntColumn get imageId => integer().named('image_id').autoIncrement()();

  IntColumn get itemId => integer()
      .named('item_id')
      .references(ItemsTable, #itemId, onDelete: KeyAction.cascade)();

  TextColumn get imageUrl => text().named('image_url')();

  BoolColumn get isPrimary =>
      boolean().named('is_primary').withDefault(const Constant(false))();

  TextColumn get ocrMetadata => text().named('ocr_metadata').nullable()();
}

class RemindersTable extends Table {
  @override
  String get tableName => 'reminders';

  IntColumn get remId => integer().named('rem_id').autoIncrement()();

  IntColumn get itemId => integer()
      .named('item_id')
      .references(ItemsTable, #itemId, onDelete: KeyAction.cascade)();

  TextColumn get reminderType => text().named('reminder_type')();

  // e.g. number of days before expiry, or minutes, etc (your app defines the unit)
  IntColumn get offsetInterval => integer().named('offset_interval')();

  DateTimeColumn get lastSentAt =>
      dateTime().named('last_sent_at').nullable()();
}

@DriftDatabase(tables: [ItemsTable, ItemImagesTable, RemindersTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
    : super(
        driftDatabase(
          name: 'expiry_watch',
          // stored in app documents dir automatically
        ),
      );

  @override
  int get schemaVersion => 1;
}
