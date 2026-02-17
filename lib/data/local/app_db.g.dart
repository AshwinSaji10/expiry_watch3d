// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $ItemsTableTable extends ItemsTable
    with TableInfo<$ItemsTableTable, ItemsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _itemNameMeta = const VerificationMeta(
    'itemName',
  );
  @override
  late final GeneratedColumn<String> itemName = GeneratedColumn<String>(
    'item_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expiryDateMeta = const VerificationMeta(
    'expiryDate',
  );
  @override
  late final GeneratedColumn<DateTime> expiryDate = GeneratedColumn<DateTime>(
    'expiry_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _aiStatusMeta = const VerificationMeta(
    'aiStatus',
  );
  @override
  late final GeneratedColumn<String> aiStatus = GeneratedColumn<String>(
    'ai_status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nerfModelMeta = const VerificationMeta(
    'nerfModel',
  );
  @override
  late final GeneratedColumn<String> nerfModel = GeneratedColumn<String>(
    'nerf_model',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    itemId,
    itemName,
    expiryDate,
    aiStatus,
    nerfModel,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'items';
  @override
  VerificationContext validateIntegrity(
    Insertable<ItemsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    }
    if (data.containsKey('item_name')) {
      context.handle(
        _itemNameMeta,
        itemName.isAcceptableOrUnknown(data['item_name']!, _itemNameMeta),
      );
    } else if (isInserting) {
      context.missing(_itemNameMeta);
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
        _expiryDateMeta,
        expiryDate.isAcceptableOrUnknown(data['expiry_date']!, _expiryDateMeta),
      );
    }
    if (data.containsKey('ai_status')) {
      context.handle(
        _aiStatusMeta,
        aiStatus.isAcceptableOrUnknown(data['ai_status']!, _aiStatusMeta),
      );
    }
    if (data.containsKey('nerf_model')) {
      context.handle(
        _nerfModelMeta,
        nerfModel.isAcceptableOrUnknown(data['nerf_model']!, _nerfModelMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {itemId};
  @override
  ItemsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemsTableData(
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}item_id'],
      )!,
      itemName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_name'],
      )!,
      expiryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}expiry_date'],
      ),
      aiStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ai_status'],
      ),
      nerfModel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nerf_model'],
      ),
    );
  }

  @override
  $ItemsTableTable createAlias(String alias) {
    return $ItemsTableTable(attachedDatabase, alias);
  }
}

class ItemsTableData extends DataClass implements Insertable<ItemsTableData> {
  final int itemId;
  final String itemName;
  final DateTime? expiryDate;
  final String? aiStatus;
  final String? nerfModel;
  const ItemsTableData({
    required this.itemId,
    required this.itemName,
    this.expiryDate,
    this.aiStatus,
    this.nerfModel,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<int>(itemId);
    map['item_name'] = Variable<String>(itemName);
    if (!nullToAbsent || expiryDate != null) {
      map['expiry_date'] = Variable<DateTime>(expiryDate);
    }
    if (!nullToAbsent || aiStatus != null) {
      map['ai_status'] = Variable<String>(aiStatus);
    }
    if (!nullToAbsent || nerfModel != null) {
      map['nerf_model'] = Variable<String>(nerfModel);
    }
    return map;
  }

  ItemsTableCompanion toCompanion(bool nullToAbsent) {
    return ItemsTableCompanion(
      itemId: Value(itemId),
      itemName: Value(itemName),
      expiryDate: expiryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expiryDate),
      aiStatus: aiStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(aiStatus),
      nerfModel: nerfModel == null && nullToAbsent
          ? const Value.absent()
          : Value(nerfModel),
    );
  }

  factory ItemsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemsTableData(
      itemId: serializer.fromJson<int>(json['itemId']),
      itemName: serializer.fromJson<String>(json['itemName']),
      expiryDate: serializer.fromJson<DateTime?>(json['expiryDate']),
      aiStatus: serializer.fromJson<String?>(json['aiStatus']),
      nerfModel: serializer.fromJson<String?>(json['nerfModel']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<int>(itemId),
      'itemName': serializer.toJson<String>(itemName),
      'expiryDate': serializer.toJson<DateTime?>(expiryDate),
      'aiStatus': serializer.toJson<String?>(aiStatus),
      'nerfModel': serializer.toJson<String?>(nerfModel),
    };
  }

  ItemsTableData copyWith({
    int? itemId,
    String? itemName,
    Value<DateTime?> expiryDate = const Value.absent(),
    Value<String?> aiStatus = const Value.absent(),
    Value<String?> nerfModel = const Value.absent(),
  }) => ItemsTableData(
    itemId: itemId ?? this.itemId,
    itemName: itemName ?? this.itemName,
    expiryDate: expiryDate.present ? expiryDate.value : this.expiryDate,
    aiStatus: aiStatus.present ? aiStatus.value : this.aiStatus,
    nerfModel: nerfModel.present ? nerfModel.value : this.nerfModel,
  );
  ItemsTableData copyWithCompanion(ItemsTableCompanion data) {
    return ItemsTableData(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      itemName: data.itemName.present ? data.itemName.value : this.itemName,
      expiryDate: data.expiryDate.present
          ? data.expiryDate.value
          : this.expiryDate,
      aiStatus: data.aiStatus.present ? data.aiStatus.value : this.aiStatus,
      nerfModel: data.nerfModel.present ? data.nerfModel.value : this.nerfModel,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemsTableData(')
          ..write('itemId: $itemId, ')
          ..write('itemName: $itemName, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('aiStatus: $aiStatus, ')
          ..write('nerfModel: $nerfModel')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(itemId, itemName, expiryDate, aiStatus, nerfModel);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemsTableData &&
          other.itemId == this.itemId &&
          other.itemName == this.itemName &&
          other.expiryDate == this.expiryDate &&
          other.aiStatus == this.aiStatus &&
          other.nerfModel == this.nerfModel);
}

class ItemsTableCompanion extends UpdateCompanion<ItemsTableData> {
  final Value<int> itemId;
  final Value<String> itemName;
  final Value<DateTime?> expiryDate;
  final Value<String?> aiStatus;
  final Value<String?> nerfModel;
  const ItemsTableCompanion({
    this.itemId = const Value.absent(),
    this.itemName = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.aiStatus = const Value.absent(),
    this.nerfModel = const Value.absent(),
  });
  ItemsTableCompanion.insert({
    this.itemId = const Value.absent(),
    required String itemName,
    this.expiryDate = const Value.absent(),
    this.aiStatus = const Value.absent(),
    this.nerfModel = const Value.absent(),
  }) : itemName = Value(itemName);
  static Insertable<ItemsTableData> custom({
    Expression<int>? itemId,
    Expression<String>? itemName,
    Expression<DateTime>? expiryDate,
    Expression<String>? aiStatus,
    Expression<String>? nerfModel,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (itemName != null) 'item_name': itemName,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (aiStatus != null) 'ai_status': aiStatus,
      if (nerfModel != null) 'nerf_model': nerfModel,
    });
  }

  ItemsTableCompanion copyWith({
    Value<int>? itemId,
    Value<String>? itemName,
    Value<DateTime?>? expiryDate,
    Value<String?>? aiStatus,
    Value<String?>? nerfModel,
  }) {
    return ItemsTableCompanion(
      itemId: itemId ?? this.itemId,
      itemName: itemName ?? this.itemName,
      expiryDate: expiryDate ?? this.expiryDate,
      aiStatus: aiStatus ?? this.aiStatus,
      nerfModel: nerfModel ?? this.nerfModel,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (itemName.present) {
      map['item_name'] = Variable<String>(itemName.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<DateTime>(expiryDate.value);
    }
    if (aiStatus.present) {
      map['ai_status'] = Variable<String>(aiStatus.value);
    }
    if (nerfModel.present) {
      map['nerf_model'] = Variable<String>(nerfModel.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemsTableCompanion(')
          ..write('itemId: $itemId, ')
          ..write('itemName: $itemName, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('aiStatus: $aiStatus, ')
          ..write('nerfModel: $nerfModel')
          ..write(')'))
        .toString();
  }
}

class $ItemImagesTableTable extends ItemImagesTable
    with TableInfo<$ItemImagesTableTable, ItemImagesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemImagesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _imageIdMeta = const VerificationMeta(
    'imageId',
  );
  @override
  late final GeneratedColumn<int> imageId = GeneratedColumn<int>(
    'image_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES items (item_id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isPrimaryMeta = const VerificationMeta(
    'isPrimary',
  );
  @override
  late final GeneratedColumn<bool> isPrimary = GeneratedColumn<bool>(
    'is_primary',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_primary" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _ocrMetadataMeta = const VerificationMeta(
    'ocrMetadata',
  );
  @override
  late final GeneratedColumn<String> ocrMetadata = GeneratedColumn<String>(
    'ocr_metadata',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    imageId,
    itemId,
    imageUrl,
    isPrimary,
    ocrMetadata,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_images';
  @override
  VerificationContext validateIntegrity(
    Insertable<ItemImagesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('image_id')) {
      context.handle(
        _imageIdMeta,
        imageId.isAcceptableOrUnknown(data['image_id']!, _imageIdMeta),
      );
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('is_primary')) {
      context.handle(
        _isPrimaryMeta,
        isPrimary.isAcceptableOrUnknown(data['is_primary']!, _isPrimaryMeta),
      );
    }
    if (data.containsKey('ocr_metadata')) {
      context.handle(
        _ocrMetadataMeta,
        ocrMetadata.isAcceptableOrUnknown(
          data['ocr_metadata']!,
          _ocrMetadataMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {imageId};
  @override
  ItemImagesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemImagesTableData(
      imageId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}image_id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}item_id'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      )!,
      isPrimary: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_primary'],
      )!,
      ocrMetadata: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ocr_metadata'],
      ),
    );
  }

  @override
  $ItemImagesTableTable createAlias(String alias) {
    return $ItemImagesTableTable(attachedDatabase, alias);
  }
}

class ItemImagesTableData extends DataClass
    implements Insertable<ItemImagesTableData> {
  final int imageId;
  final int itemId;
  final String imageUrl;
  final bool isPrimary;
  final String? ocrMetadata;
  const ItemImagesTableData({
    required this.imageId,
    required this.itemId,
    required this.imageUrl,
    required this.isPrimary,
    this.ocrMetadata,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['image_id'] = Variable<int>(imageId);
    map['item_id'] = Variable<int>(itemId);
    map['image_url'] = Variable<String>(imageUrl);
    map['is_primary'] = Variable<bool>(isPrimary);
    if (!nullToAbsent || ocrMetadata != null) {
      map['ocr_metadata'] = Variable<String>(ocrMetadata);
    }
    return map;
  }

  ItemImagesTableCompanion toCompanion(bool nullToAbsent) {
    return ItemImagesTableCompanion(
      imageId: Value(imageId),
      itemId: Value(itemId),
      imageUrl: Value(imageUrl),
      isPrimary: Value(isPrimary),
      ocrMetadata: ocrMetadata == null && nullToAbsent
          ? const Value.absent()
          : Value(ocrMetadata),
    );
  }

  factory ItemImagesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemImagesTableData(
      imageId: serializer.fromJson<int>(json['imageId']),
      itemId: serializer.fromJson<int>(json['itemId']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      isPrimary: serializer.fromJson<bool>(json['isPrimary']),
      ocrMetadata: serializer.fromJson<String?>(json['ocrMetadata']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'imageId': serializer.toJson<int>(imageId),
      'itemId': serializer.toJson<int>(itemId),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'isPrimary': serializer.toJson<bool>(isPrimary),
      'ocrMetadata': serializer.toJson<String?>(ocrMetadata),
    };
  }

  ItemImagesTableData copyWith({
    int? imageId,
    int? itemId,
    String? imageUrl,
    bool? isPrimary,
    Value<String?> ocrMetadata = const Value.absent(),
  }) => ItemImagesTableData(
    imageId: imageId ?? this.imageId,
    itemId: itemId ?? this.itemId,
    imageUrl: imageUrl ?? this.imageUrl,
    isPrimary: isPrimary ?? this.isPrimary,
    ocrMetadata: ocrMetadata.present ? ocrMetadata.value : this.ocrMetadata,
  );
  ItemImagesTableData copyWithCompanion(ItemImagesTableCompanion data) {
    return ItemImagesTableData(
      imageId: data.imageId.present ? data.imageId.value : this.imageId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      isPrimary: data.isPrimary.present ? data.isPrimary.value : this.isPrimary,
      ocrMetadata: data.ocrMetadata.present
          ? data.ocrMetadata.value
          : this.ocrMetadata,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemImagesTableData(')
          ..write('imageId: $imageId, ')
          ..write('itemId: $itemId, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('isPrimary: $isPrimary, ')
          ..write('ocrMetadata: $ocrMetadata')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(imageId, itemId, imageUrl, isPrimary, ocrMetadata);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemImagesTableData &&
          other.imageId == this.imageId &&
          other.itemId == this.itemId &&
          other.imageUrl == this.imageUrl &&
          other.isPrimary == this.isPrimary &&
          other.ocrMetadata == this.ocrMetadata);
}

class ItemImagesTableCompanion extends UpdateCompanion<ItemImagesTableData> {
  final Value<int> imageId;
  final Value<int> itemId;
  final Value<String> imageUrl;
  final Value<bool> isPrimary;
  final Value<String?> ocrMetadata;
  const ItemImagesTableCompanion({
    this.imageId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.isPrimary = const Value.absent(),
    this.ocrMetadata = const Value.absent(),
  });
  ItemImagesTableCompanion.insert({
    this.imageId = const Value.absent(),
    required int itemId,
    required String imageUrl,
    this.isPrimary = const Value.absent(),
    this.ocrMetadata = const Value.absent(),
  }) : itemId = Value(itemId),
       imageUrl = Value(imageUrl);
  static Insertable<ItemImagesTableData> custom({
    Expression<int>? imageId,
    Expression<int>? itemId,
    Expression<String>? imageUrl,
    Expression<bool>? isPrimary,
    Expression<String>? ocrMetadata,
  }) {
    return RawValuesInsertable({
      if (imageId != null) 'image_id': imageId,
      if (itemId != null) 'item_id': itemId,
      if (imageUrl != null) 'image_url': imageUrl,
      if (isPrimary != null) 'is_primary': isPrimary,
      if (ocrMetadata != null) 'ocr_metadata': ocrMetadata,
    });
  }

  ItemImagesTableCompanion copyWith({
    Value<int>? imageId,
    Value<int>? itemId,
    Value<String>? imageUrl,
    Value<bool>? isPrimary,
    Value<String?>? ocrMetadata,
  }) {
    return ItemImagesTableCompanion(
      imageId: imageId ?? this.imageId,
      itemId: itemId ?? this.itemId,
      imageUrl: imageUrl ?? this.imageUrl,
      isPrimary: isPrimary ?? this.isPrimary,
      ocrMetadata: ocrMetadata ?? this.ocrMetadata,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (imageId.present) {
      map['image_id'] = Variable<int>(imageId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (isPrimary.present) {
      map['is_primary'] = Variable<bool>(isPrimary.value);
    }
    if (ocrMetadata.present) {
      map['ocr_metadata'] = Variable<String>(ocrMetadata.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemImagesTableCompanion(')
          ..write('imageId: $imageId, ')
          ..write('itemId: $itemId, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('isPrimary: $isPrimary, ')
          ..write('ocrMetadata: $ocrMetadata')
          ..write(')'))
        .toString();
  }
}

class $RemindersTableTable extends RemindersTable
    with TableInfo<$RemindersTableTable, RemindersTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RemindersTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _remIdMeta = const VerificationMeta('remId');
  @override
  late final GeneratedColumn<int> remId = GeneratedColumn<int>(
    'rem_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES items (item_id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _reminderTypeMeta = const VerificationMeta(
    'reminderType',
  );
  @override
  late final GeneratedColumn<String> reminderType = GeneratedColumn<String>(
    'reminder_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _offsetIntervalMeta = const VerificationMeta(
    'offsetInterval',
  );
  @override
  late final GeneratedColumn<int> offsetInterval = GeneratedColumn<int>(
    'offset_interval',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastSentAtMeta = const VerificationMeta(
    'lastSentAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastSentAt = GeneratedColumn<DateTime>(
    'last_sent_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    remId,
    itemId,
    reminderType,
    offsetInterval,
    lastSentAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reminders';
  @override
  VerificationContext validateIntegrity(
    Insertable<RemindersTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('rem_id')) {
      context.handle(
        _remIdMeta,
        remId.isAcceptableOrUnknown(data['rem_id']!, _remIdMeta),
      );
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('reminder_type')) {
      context.handle(
        _reminderTypeMeta,
        reminderType.isAcceptableOrUnknown(
          data['reminder_type']!,
          _reminderTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_reminderTypeMeta);
    }
    if (data.containsKey('offset_interval')) {
      context.handle(
        _offsetIntervalMeta,
        offsetInterval.isAcceptableOrUnknown(
          data['offset_interval']!,
          _offsetIntervalMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_offsetIntervalMeta);
    }
    if (data.containsKey('last_sent_at')) {
      context.handle(
        _lastSentAtMeta,
        lastSentAt.isAcceptableOrUnknown(
          data['last_sent_at']!,
          _lastSentAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {remId};
  @override
  RemindersTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RemindersTableData(
      remId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rem_id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}item_id'],
      )!,
      reminderType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reminder_type'],
      )!,
      offsetInterval: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}offset_interval'],
      )!,
      lastSentAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_sent_at'],
      ),
    );
  }

  @override
  $RemindersTableTable createAlias(String alias) {
    return $RemindersTableTable(attachedDatabase, alias);
  }
}

class RemindersTableData extends DataClass
    implements Insertable<RemindersTableData> {
  final int remId;
  final int itemId;
  final String reminderType;
  final int offsetInterval;
  final DateTime? lastSentAt;
  const RemindersTableData({
    required this.remId,
    required this.itemId,
    required this.reminderType,
    required this.offsetInterval,
    this.lastSentAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['rem_id'] = Variable<int>(remId);
    map['item_id'] = Variable<int>(itemId);
    map['reminder_type'] = Variable<String>(reminderType);
    map['offset_interval'] = Variable<int>(offsetInterval);
    if (!nullToAbsent || lastSentAt != null) {
      map['last_sent_at'] = Variable<DateTime>(lastSentAt);
    }
    return map;
  }

  RemindersTableCompanion toCompanion(bool nullToAbsent) {
    return RemindersTableCompanion(
      remId: Value(remId),
      itemId: Value(itemId),
      reminderType: Value(reminderType),
      offsetInterval: Value(offsetInterval),
      lastSentAt: lastSentAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSentAt),
    );
  }

  factory RemindersTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RemindersTableData(
      remId: serializer.fromJson<int>(json['remId']),
      itemId: serializer.fromJson<int>(json['itemId']),
      reminderType: serializer.fromJson<String>(json['reminderType']),
      offsetInterval: serializer.fromJson<int>(json['offsetInterval']),
      lastSentAt: serializer.fromJson<DateTime?>(json['lastSentAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'remId': serializer.toJson<int>(remId),
      'itemId': serializer.toJson<int>(itemId),
      'reminderType': serializer.toJson<String>(reminderType),
      'offsetInterval': serializer.toJson<int>(offsetInterval),
      'lastSentAt': serializer.toJson<DateTime?>(lastSentAt),
    };
  }

  RemindersTableData copyWith({
    int? remId,
    int? itemId,
    String? reminderType,
    int? offsetInterval,
    Value<DateTime?> lastSentAt = const Value.absent(),
  }) => RemindersTableData(
    remId: remId ?? this.remId,
    itemId: itemId ?? this.itemId,
    reminderType: reminderType ?? this.reminderType,
    offsetInterval: offsetInterval ?? this.offsetInterval,
    lastSentAt: lastSentAt.present ? lastSentAt.value : this.lastSentAt,
  );
  RemindersTableData copyWithCompanion(RemindersTableCompanion data) {
    return RemindersTableData(
      remId: data.remId.present ? data.remId.value : this.remId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      reminderType: data.reminderType.present
          ? data.reminderType.value
          : this.reminderType,
      offsetInterval: data.offsetInterval.present
          ? data.offsetInterval.value
          : this.offsetInterval,
      lastSentAt: data.lastSentAt.present
          ? data.lastSentAt.value
          : this.lastSentAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RemindersTableData(')
          ..write('remId: $remId, ')
          ..write('itemId: $itemId, ')
          ..write('reminderType: $reminderType, ')
          ..write('offsetInterval: $offsetInterval, ')
          ..write('lastSentAt: $lastSentAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(remId, itemId, reminderType, offsetInterval, lastSentAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RemindersTableData &&
          other.remId == this.remId &&
          other.itemId == this.itemId &&
          other.reminderType == this.reminderType &&
          other.offsetInterval == this.offsetInterval &&
          other.lastSentAt == this.lastSentAt);
}

class RemindersTableCompanion extends UpdateCompanion<RemindersTableData> {
  final Value<int> remId;
  final Value<int> itemId;
  final Value<String> reminderType;
  final Value<int> offsetInterval;
  final Value<DateTime?> lastSentAt;
  const RemindersTableCompanion({
    this.remId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.reminderType = const Value.absent(),
    this.offsetInterval = const Value.absent(),
    this.lastSentAt = const Value.absent(),
  });
  RemindersTableCompanion.insert({
    this.remId = const Value.absent(),
    required int itemId,
    required String reminderType,
    required int offsetInterval,
    this.lastSentAt = const Value.absent(),
  }) : itemId = Value(itemId),
       reminderType = Value(reminderType),
       offsetInterval = Value(offsetInterval);
  static Insertable<RemindersTableData> custom({
    Expression<int>? remId,
    Expression<int>? itemId,
    Expression<String>? reminderType,
    Expression<int>? offsetInterval,
    Expression<DateTime>? lastSentAt,
  }) {
    return RawValuesInsertable({
      if (remId != null) 'rem_id': remId,
      if (itemId != null) 'item_id': itemId,
      if (reminderType != null) 'reminder_type': reminderType,
      if (offsetInterval != null) 'offset_interval': offsetInterval,
      if (lastSentAt != null) 'last_sent_at': lastSentAt,
    });
  }

  RemindersTableCompanion copyWith({
    Value<int>? remId,
    Value<int>? itemId,
    Value<String>? reminderType,
    Value<int>? offsetInterval,
    Value<DateTime?>? lastSentAt,
  }) {
    return RemindersTableCompanion(
      remId: remId ?? this.remId,
      itemId: itemId ?? this.itemId,
      reminderType: reminderType ?? this.reminderType,
      offsetInterval: offsetInterval ?? this.offsetInterval,
      lastSentAt: lastSentAt ?? this.lastSentAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (remId.present) {
      map['rem_id'] = Variable<int>(remId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (reminderType.present) {
      map['reminder_type'] = Variable<String>(reminderType.value);
    }
    if (offsetInterval.present) {
      map['offset_interval'] = Variable<int>(offsetInterval.value);
    }
    if (lastSentAt.present) {
      map['last_sent_at'] = Variable<DateTime>(lastSentAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RemindersTableCompanion(')
          ..write('remId: $remId, ')
          ..write('itemId: $itemId, ')
          ..write('reminderType: $reminderType, ')
          ..write('offsetInterval: $offsetInterval, ')
          ..write('lastSentAt: $lastSentAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ItemsTableTable itemsTable = $ItemsTableTable(this);
  late final $ItemImagesTableTable itemImagesTable = $ItemImagesTableTable(
    this,
  );
  late final $RemindersTableTable remindersTable = $RemindersTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    itemsTable,
    itemImagesTable,
    remindersTable,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'items',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('item_images', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'items',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('reminders', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$ItemsTableTableCreateCompanionBuilder =
    ItemsTableCompanion Function({
      Value<int> itemId,
      required String itemName,
      Value<DateTime?> expiryDate,
      Value<String?> aiStatus,
      Value<String?> nerfModel,
    });
typedef $$ItemsTableTableUpdateCompanionBuilder =
    ItemsTableCompanion Function({
      Value<int> itemId,
      Value<String> itemName,
      Value<DateTime?> expiryDate,
      Value<String?> aiStatus,
      Value<String?> nerfModel,
    });

final class $$ItemsTableTableReferences
    extends BaseReferences<_$AppDatabase, $ItemsTableTable, ItemsTableData> {
  $$ItemsTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ItemImagesTableTable, List<ItemImagesTableData>>
  _itemImagesTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.itemImagesTable,
    aliasName: $_aliasNameGenerator(
      db.itemsTable.itemId,
      db.itemImagesTable.itemId,
    ),
  );

  $$ItemImagesTableTableProcessedTableManager get itemImagesTableRefs {
    final manager = $$ItemImagesTableTableTableManager(
      $_db,
      $_db.itemImagesTable,
    ).filter((f) => f.itemId.itemId.sqlEquals($_itemColumn<int>('item_id')!));

    final cache = $_typedResult.readTableOrNull(
      _itemImagesTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RemindersTableTable, List<RemindersTableData>>
  _remindersTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.remindersTable,
    aliasName: $_aliasNameGenerator(
      db.itemsTable.itemId,
      db.remindersTable.itemId,
    ),
  );

  $$RemindersTableTableProcessedTableManager get remindersTableRefs {
    final manager = $$RemindersTableTableTableManager(
      $_db,
      $_db.remindersTable,
    ).filter((f) => f.itemId.itemId.sqlEquals($_itemColumn<int>('item_id')!));

    final cache = $_typedResult.readTableOrNull(_remindersTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ItemsTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemsTableTable> {
  $$ItemsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get itemName => $composableBuilder(
    column: $table.itemName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get aiStatus => $composableBuilder(
    column: $table.aiStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nerfModel => $composableBuilder(
    column: $table.nerfModel,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> itemImagesTableRefs(
    Expression<bool> Function($$ItemImagesTableTableFilterComposer f) f,
  ) {
    final $$ItemImagesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemImagesTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemImagesTableTableFilterComposer(
            $db: $db,
            $table: $db.itemImagesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> remindersTableRefs(
    Expression<bool> Function($$RemindersTableTableFilterComposer f) f,
  ) {
    final $$RemindersTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.remindersTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RemindersTableTableFilterComposer(
            $db: $db,
            $table: $db.remindersTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemsTableTable> {
  $$ItemsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get itemName => $composableBuilder(
    column: $table.itemName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get aiStatus => $composableBuilder(
    column: $table.aiStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nerfModel => $composableBuilder(
    column: $table.nerfModel,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ItemsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemsTableTable> {
  $$ItemsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<String> get itemName =>
      $composableBuilder(column: $table.itemName, builder: (column) => column);

  GeneratedColumn<DateTime> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get aiStatus =>
      $composableBuilder(column: $table.aiStatus, builder: (column) => column);

  GeneratedColumn<String> get nerfModel =>
      $composableBuilder(column: $table.nerfModel, builder: (column) => column);

  Expression<T> itemImagesTableRefs<T extends Object>(
    Expression<T> Function($$ItemImagesTableTableAnnotationComposer a) f,
  ) {
    final $$ItemImagesTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemImagesTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemImagesTableTableAnnotationComposer(
            $db: $db,
            $table: $db.itemImagesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> remindersTableRefs<T extends Object>(
    Expression<T> Function($$RemindersTableTableAnnotationComposer a) f,
  ) {
    final $$RemindersTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.remindersTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RemindersTableTableAnnotationComposer(
            $db: $db,
            $table: $db.remindersTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItemsTableTable,
          ItemsTableData,
          $$ItemsTableTableFilterComposer,
          $$ItemsTableTableOrderingComposer,
          $$ItemsTableTableAnnotationComposer,
          $$ItemsTableTableCreateCompanionBuilder,
          $$ItemsTableTableUpdateCompanionBuilder,
          (ItemsTableData, $$ItemsTableTableReferences),
          ItemsTableData,
          PrefetchHooks Function({
            bool itemImagesTableRefs,
            bool remindersTableRefs,
          })
        > {
  $$ItemsTableTableTableManager(_$AppDatabase db, $ItemsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                Value<String> itemName = const Value.absent(),
                Value<DateTime?> expiryDate = const Value.absent(),
                Value<String?> aiStatus = const Value.absent(),
                Value<String?> nerfModel = const Value.absent(),
              }) => ItemsTableCompanion(
                itemId: itemId,
                itemName: itemName,
                expiryDate: expiryDate,
                aiStatus: aiStatus,
                nerfModel: nerfModel,
              ),
          createCompanionCallback:
              ({
                Value<int> itemId = const Value.absent(),
                required String itemName,
                Value<DateTime?> expiryDate = const Value.absent(),
                Value<String?> aiStatus = const Value.absent(),
                Value<String?> nerfModel = const Value.absent(),
              }) => ItemsTableCompanion.insert(
                itemId: itemId,
                itemName: itemName,
                expiryDate: expiryDate,
                aiStatus: aiStatus,
                nerfModel: nerfModel,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ItemsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({itemImagesTableRefs = false, remindersTableRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (itemImagesTableRefs) db.itemImagesTable,
                    if (remindersTableRefs) db.remindersTable,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (itemImagesTableRefs)
                        await $_getPrefetchedData<
                          ItemsTableData,
                          $ItemsTableTable,
                          ItemImagesTableData
                        >(
                          currentTable: table,
                          referencedTable: $$ItemsTableTableReferences
                              ._itemImagesTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ItemsTableTableReferences(
                                db,
                                table,
                                p0,
                              ).itemImagesTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.itemId == item.itemId,
                              ),
                          typedResults: items,
                        ),
                      if (remindersTableRefs)
                        await $_getPrefetchedData<
                          ItemsTableData,
                          $ItemsTableTable,
                          RemindersTableData
                        >(
                          currentTable: table,
                          referencedTable: $$ItemsTableTableReferences
                              ._remindersTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ItemsTableTableReferences(
                                db,
                                table,
                                p0,
                              ).remindersTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.itemId == item.itemId,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ItemsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItemsTableTable,
      ItemsTableData,
      $$ItemsTableTableFilterComposer,
      $$ItemsTableTableOrderingComposer,
      $$ItemsTableTableAnnotationComposer,
      $$ItemsTableTableCreateCompanionBuilder,
      $$ItemsTableTableUpdateCompanionBuilder,
      (ItemsTableData, $$ItemsTableTableReferences),
      ItemsTableData,
      PrefetchHooks Function({
        bool itemImagesTableRefs,
        bool remindersTableRefs,
      })
    >;
typedef $$ItemImagesTableTableCreateCompanionBuilder =
    ItemImagesTableCompanion Function({
      Value<int> imageId,
      required int itemId,
      required String imageUrl,
      Value<bool> isPrimary,
      Value<String?> ocrMetadata,
    });
typedef $$ItemImagesTableTableUpdateCompanionBuilder =
    ItemImagesTableCompanion Function({
      Value<int> imageId,
      Value<int> itemId,
      Value<String> imageUrl,
      Value<bool> isPrimary,
      Value<String?> ocrMetadata,
    });

final class $$ItemImagesTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ItemImagesTableTable,
          ItemImagesTableData
        > {
  $$ItemImagesTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ItemsTableTable _itemIdTable(_$AppDatabase db) =>
      db.itemsTable.createAlias(
        $_aliasNameGenerator(db.itemImagesTable.itemId, db.itemsTable.itemId),
      );

  $$ItemsTableTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemsTableTableTableManager(
      $_db,
      $_db.itemsTable,
    ).filter((f) => f.itemId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ItemImagesTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemImagesTableTable> {
  $$ItemImagesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get imageId => $composableBuilder(
    column: $table.imageId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPrimary => $composableBuilder(
    column: $table.isPrimary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ocrMetadata => $composableBuilder(
    column: $table.ocrMetadata,
    builder: (column) => ColumnFilters(column),
  );

  $$ItemsTableTableFilterComposer get itemId {
    final $$ItemsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemsTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableTableFilterComposer(
            $db: $db,
            $table: $db.itemsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItemImagesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemImagesTableTable> {
  $$ItemImagesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get imageId => $composableBuilder(
    column: $table.imageId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPrimary => $composableBuilder(
    column: $table.isPrimary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ocrMetadata => $composableBuilder(
    column: $table.ocrMetadata,
    builder: (column) => ColumnOrderings(column),
  );

  $$ItemsTableTableOrderingComposer get itemId {
    final $$ItemsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemsTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableTableOrderingComposer(
            $db: $db,
            $table: $db.itemsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItemImagesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemImagesTableTable> {
  $$ItemImagesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get imageId =>
      $composableBuilder(column: $table.imageId, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<bool> get isPrimary =>
      $composableBuilder(column: $table.isPrimary, builder: (column) => column);

  GeneratedColumn<String> get ocrMetadata => $composableBuilder(
    column: $table.ocrMetadata,
    builder: (column) => column,
  );

  $$ItemsTableTableAnnotationComposer get itemId {
    final $$ItemsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemsTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.itemsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItemImagesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItemImagesTableTable,
          ItemImagesTableData,
          $$ItemImagesTableTableFilterComposer,
          $$ItemImagesTableTableOrderingComposer,
          $$ItemImagesTableTableAnnotationComposer,
          $$ItemImagesTableTableCreateCompanionBuilder,
          $$ItemImagesTableTableUpdateCompanionBuilder,
          (ItemImagesTableData, $$ItemImagesTableTableReferences),
          ItemImagesTableData,
          PrefetchHooks Function({bool itemId})
        > {
  $$ItemImagesTableTableTableManager(
    _$AppDatabase db,
    $ItemImagesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemImagesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemImagesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemImagesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> imageId = const Value.absent(),
                Value<int> itemId = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
                Value<bool> isPrimary = const Value.absent(),
                Value<String?> ocrMetadata = const Value.absent(),
              }) => ItemImagesTableCompanion(
                imageId: imageId,
                itemId: itemId,
                imageUrl: imageUrl,
                isPrimary: isPrimary,
                ocrMetadata: ocrMetadata,
              ),
          createCompanionCallback:
              ({
                Value<int> imageId = const Value.absent(),
                required int itemId,
                required String imageUrl,
                Value<bool> isPrimary = const Value.absent(),
                Value<String?> ocrMetadata = const Value.absent(),
              }) => ItemImagesTableCompanion.insert(
                imageId: imageId,
                itemId: itemId,
                imageUrl: imageUrl,
                isPrimary: isPrimary,
                ocrMetadata: ocrMetadata,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ItemImagesTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (itemId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.itemId,
                                referencedTable:
                                    $$ItemImagesTableTableReferences
                                        ._itemIdTable(db),
                                referencedColumn:
                                    $$ItemImagesTableTableReferences
                                        ._itemIdTable(db)
                                        .itemId,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ItemImagesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItemImagesTableTable,
      ItemImagesTableData,
      $$ItemImagesTableTableFilterComposer,
      $$ItemImagesTableTableOrderingComposer,
      $$ItemImagesTableTableAnnotationComposer,
      $$ItemImagesTableTableCreateCompanionBuilder,
      $$ItemImagesTableTableUpdateCompanionBuilder,
      (ItemImagesTableData, $$ItemImagesTableTableReferences),
      ItemImagesTableData,
      PrefetchHooks Function({bool itemId})
    >;
typedef $$RemindersTableTableCreateCompanionBuilder =
    RemindersTableCompanion Function({
      Value<int> remId,
      required int itemId,
      required String reminderType,
      required int offsetInterval,
      Value<DateTime?> lastSentAt,
    });
typedef $$RemindersTableTableUpdateCompanionBuilder =
    RemindersTableCompanion Function({
      Value<int> remId,
      Value<int> itemId,
      Value<String> reminderType,
      Value<int> offsetInterval,
      Value<DateTime?> lastSentAt,
    });

final class $$RemindersTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RemindersTableTable,
          RemindersTableData
        > {
  $$RemindersTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ItemsTableTable _itemIdTable(_$AppDatabase db) =>
      db.itemsTable.createAlias(
        $_aliasNameGenerator(db.remindersTable.itemId, db.itemsTable.itemId),
      );

  $$ItemsTableTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemsTableTableTableManager(
      $_db,
      $_db.itemsTable,
    ).filter((f) => f.itemId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RemindersTableTableFilterComposer
    extends Composer<_$AppDatabase, $RemindersTableTable> {
  $$RemindersTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get remId => $composableBuilder(
    column: $table.remId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reminderType => $composableBuilder(
    column: $table.reminderType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get offsetInterval => $composableBuilder(
    column: $table.offsetInterval,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSentAt => $composableBuilder(
    column: $table.lastSentAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ItemsTableTableFilterComposer get itemId {
    final $$ItemsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemsTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableTableFilterComposer(
            $db: $db,
            $table: $db.itemsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RemindersTableTableOrderingComposer
    extends Composer<_$AppDatabase, $RemindersTableTable> {
  $$RemindersTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get remId => $composableBuilder(
    column: $table.remId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reminderType => $composableBuilder(
    column: $table.reminderType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get offsetInterval => $composableBuilder(
    column: $table.offsetInterval,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSentAt => $composableBuilder(
    column: $table.lastSentAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ItemsTableTableOrderingComposer get itemId {
    final $$ItemsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemsTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableTableOrderingComposer(
            $db: $db,
            $table: $db.itemsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RemindersTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $RemindersTableTable> {
  $$RemindersTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get remId =>
      $composableBuilder(column: $table.remId, builder: (column) => column);

  GeneratedColumn<String> get reminderType => $composableBuilder(
    column: $table.reminderType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get offsetInterval => $composableBuilder(
    column: $table.offsetInterval,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastSentAt => $composableBuilder(
    column: $table.lastSentAt,
    builder: (column) => column,
  );

  $$ItemsTableTableAnnotationComposer get itemId {
    final $$ItemsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemsTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.itemsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RemindersTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RemindersTableTable,
          RemindersTableData,
          $$RemindersTableTableFilterComposer,
          $$RemindersTableTableOrderingComposer,
          $$RemindersTableTableAnnotationComposer,
          $$RemindersTableTableCreateCompanionBuilder,
          $$RemindersTableTableUpdateCompanionBuilder,
          (RemindersTableData, $$RemindersTableTableReferences),
          RemindersTableData,
          PrefetchHooks Function({bool itemId})
        > {
  $$RemindersTableTableTableManager(
    _$AppDatabase db,
    $RemindersTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RemindersTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RemindersTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RemindersTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> remId = const Value.absent(),
                Value<int> itemId = const Value.absent(),
                Value<String> reminderType = const Value.absent(),
                Value<int> offsetInterval = const Value.absent(),
                Value<DateTime?> lastSentAt = const Value.absent(),
              }) => RemindersTableCompanion(
                remId: remId,
                itemId: itemId,
                reminderType: reminderType,
                offsetInterval: offsetInterval,
                lastSentAt: lastSentAt,
              ),
          createCompanionCallback:
              ({
                Value<int> remId = const Value.absent(),
                required int itemId,
                required String reminderType,
                required int offsetInterval,
                Value<DateTime?> lastSentAt = const Value.absent(),
              }) => RemindersTableCompanion.insert(
                remId: remId,
                itemId: itemId,
                reminderType: reminderType,
                offsetInterval: offsetInterval,
                lastSentAt: lastSentAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RemindersTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (itemId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.itemId,
                                referencedTable: $$RemindersTableTableReferences
                                    ._itemIdTable(db),
                                referencedColumn:
                                    $$RemindersTableTableReferences
                                        ._itemIdTable(db)
                                        .itemId,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RemindersTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RemindersTableTable,
      RemindersTableData,
      $$RemindersTableTableFilterComposer,
      $$RemindersTableTableOrderingComposer,
      $$RemindersTableTableAnnotationComposer,
      $$RemindersTableTableCreateCompanionBuilder,
      $$RemindersTableTableUpdateCompanionBuilder,
      (RemindersTableData, $$RemindersTableTableReferences),
      RemindersTableData,
      PrefetchHooks Function({bool itemId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ItemsTableTableTableManager get itemsTable =>
      $$ItemsTableTableTableManager(_db, _db.itemsTable);
  $$ItemImagesTableTableTableManager get itemImagesTable =>
      $$ItemImagesTableTableTableManager(_db, _db.itemImagesTable);
  $$RemindersTableTableTableManager get remindersTable =>
      $$RemindersTableTableTableManager(_db, _db.remindersTable);
}
