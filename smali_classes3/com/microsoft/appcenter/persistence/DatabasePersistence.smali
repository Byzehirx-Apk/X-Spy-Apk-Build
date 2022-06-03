.class public Lcom/microsoft/appcenter/persistence/DatabasePersistence;
.super Lcom/microsoft/appcenter/persistence/Persistence;
.source "DatabasePersistence.java"


# static fields
.field private static final COLUMN_DATA_TYPE:Ljava/lang/String; = "type"

.field static final COLUMN_GROUP:Ljava/lang/String; = "persistence_group"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_LOG:Ljava/lang/String; = "log"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_PRIORITY:Ljava/lang/String; = "priority"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_TARGET_KEY:Ljava/lang/String; = "target_key"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_TARGET_TOKEN:Ljava/lang/String; = "target_token"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CREATE_LOGS_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS `logs`(`oid` INTEGER PRIMARY KEY AUTOINCREMENT,`target_token` TEXT,`type` TEXT,`priority` INTEGER,`log` TEXT,`persistence_group` TEXT,`target_key` TEXT);"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CREATE_PRIORITY_INDEX_LOGS:Ljava/lang/String; = "CREATE INDEX `ix_logs_priority` ON logs (`priority`)"

.field static final DATABASE:Ljava/lang/String; = "com.microsoft.appcenter.persistence"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DROP_LOGS_SQL:Ljava/lang/String; = "DROP TABLE `logs`"

.field private static final GET_SORT_ORDER:Ljava/lang/String; = "priority DESC, oid"

.field private static final PAYLOAD_FILE_EXTENSION:Ljava/lang/String; = ".json"

.field private static final PAYLOAD_LARGE_DIRECTORY:Ljava/lang/String; = "/appcenter/database_large_payloads"

.field private static final PAYLOAD_MAX_SIZE:I = 0x1e6666

.field static final SCHEMA:Landroid/content/ContentValues;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TABLE:Ljava/lang/String; = "logs"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final VERSION:I = 0x6

.field static final VERSION_TIMESTAMP_COLUMN:I = 0x5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mLargePayloadDirectory:Ljava/io/File;

.field final mPendingDbIdentifiers:Ljava/util/Set;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingDbIdentifiersGroups:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 115
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->SCHEMA:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x6

    sget-object v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->SCHEMA:Landroid/content/ContentValues;

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 196
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 17

    .prologue
    .line 205
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move/from16 v2, p2

    .local v2, "version":I
    move-object/from16 v3, p3

    .local v3, "schema":Landroid/content/ContentValues;
    move-object v4, v0

    invoke-direct {v4}, Lcom/microsoft/appcenter/persistence/Persistence;-><init>()V

    .line 206
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    .line 207
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    .line 208
    move-object v4, v0

    new-instance v5, Ljava/util/HashSet;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    .line 209
    move-object v4, v0

    new-instance v5, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    move-object v7, v1

    const-string/jumbo v8, "com.microsoft.appcenter.persistence"

    const-string/jumbo v9, "logs"

    move v10, v2

    move-object v11, v3

    const-string/jumbo v12, "CREATE TABLE IF NOT EXISTS `logs`(`oid` INTEGER PRIMARY KEY AUTOINCREMENT,`target_token` TEXT,`type` TEXT,`priority` INTEGER,`log` TEXT,`persistence_group` TEXT,`target_key` TEXT);"

    new-instance v13, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;-><init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;)V

    invoke-direct/range {v6 .. v13}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V

    iput-object v5, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    .line 231
    move-object v4, v0

    new-instance v5, Ljava/io/File;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/appcenter/database_large_payloads"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    .line 234
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 235
    return-void
.end method

.method private deleteLog(Ljava/io/File;J)V
    .locals 8

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "groupLargePayloadDirectory":Ljava/io/File;
    move-wide v2, p2

    .local v2, "id":J
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    .line 343
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    .line 344
    return-void
.end method

.method private static getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "group":Ljava/lang/String;
    move-object v1, p1

    .local v1, "logJ":Ljava/lang/String;
    move-object v2, p2

    .local v2, "targetToken":Ljava/lang/String;
    move-object v3, p3

    .local v3, "type":Ljava/lang/String;
    move-object v4, p4

    .local v4, "targetKey":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "priority":I
    new-instance v7, Landroid/content/ContentValues;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v7

    .line 249
    .local v6, "values":Landroid/content/ContentValues;
    move-object v7, v6

    const-string/jumbo v8, "persistence_group"

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object v7, v6

    const-string/jumbo v8, "log"

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object v7, v6

    const-string/jumbo v8, "target_token"

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object v7, v6

    const-string/jumbo v8, "type"

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    move-object v7, v6

    const-string/jumbo v8, "target_key"

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    move-object v7, v6

    const-string/jumbo v8, "priority"

    move v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "group":Ljava/lang/String;
    return-object v0
.end method

.method private getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v2, p2

    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 585
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object v9, v1

    sget-object v10, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->SELECT_PRIMARY_KEY:[Ljava/lang/String;

    move-object v11, v2

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v4, v8

    .line 587
    .local v4, "cursor":Landroid/database/Cursor;
    :goto_0
    move-object v8, v4

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 588
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v8

    move-object v5, v8

    .line 589
    .local v5, "idValues":Landroid/content/ContentValues;
    move-object v8, v5

    const-string/jumbo v9, "oid"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    move-object v6, v8

    .line 590
    .local v6, "id":Ljava/lang/Long;
    move-object v8, v3

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 591
    goto :goto_0

    .line 593
    .end local v5    # "idValues":Landroid/content/ContentValues;
    .end local v6    # "id":Ljava/lang/Long;
    :cond_0
    move-object v8, v4

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 594
    .line 597
    .line 598
    .end local v4    # "cursor":Landroid/database/Cursor;
    :goto_1
    move-object v8, v3

    move-object v0, v8

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return-object v0

    .line 593
    .restart local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 594
    move-object v8, v7

    throw v8
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 595
    .end local v4    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 596
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "Failed to get corrupted ids: "

    move-object v10, v4

    invoke-static {v8, v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public clearPendingLogState()V
    .locals 3

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 573
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 574
    const-string/jumbo v1, "AppCenter"

    const-string/jumbo v2, "Cleared pending log states"

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->close()V

    .line 580
    return-void
.end method

.method public countLogs(Ljava/lang/String;)I
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "group":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v6

    move-object v2, v6

    .line 403
    .local v2, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v6, v2

    const-string/jumbo v7, "persistence_group = ?"

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 404
    const/4 v6, 0x0

    move v3, v6

    .line 406
    .local v3, "count":I
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object v7, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    const-string/jumbo v11, "COUNT(*)"

    aput-object v11, v9, v10

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 408
    .local v4, "cursor":Landroid/database/Cursor;
    move-object v6, v4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    .line 409
    move-object v6, v4

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    move v3, v6

    .line 411
    move-object v6, v4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    .line 415
    .line 416
    .end local v4    # "cursor":Landroid/database/Cursor;
    :goto_0
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return v0

    .line 411
    .restart local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    move-object v6, v5

    throw v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 413
    .end local v4    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 414
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Failed to get logs count: "

    move-object v8, v4

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteLogs(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "group":Ljava/lang/String;
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleting all logs from the Persistence database for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    move-object v2, v8

    .line 373
    .local v2, "directory":Ljava/io/File;
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    move-object v3, v8

    .line 374
    .local v3, "files":[Ljava/io/File;
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 375
    move-object v8, v3

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 378
    .local v7, "file":Ljava/io/File;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 375
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 383
    .end local v7    # "file":Ljava/io/File;
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 386
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string/jumbo v9, "persistence_group"

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    move v4, v8

    .line 387
    .local v4, "deletedCount":I
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " logs."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 391
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 392
    .local v6, "key":Ljava/lang/String;
    move-object v8, v6

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 393
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 395
    :cond_1
    goto :goto_1

    .line 396
    .end local v6    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public deleteLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 350
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v2, p1

    .local v2, "group":Ljava/lang/String;
    move-object v3, p2

    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleting logs from the Persistence database for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "The IDs for deleting log(s) is/are:"

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v4, v8

    .line 355
    .local v4, "dbIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    move-object v5, v8

    .line 356
    .local v5, "directory":Ljava/io/File;
    move-object v8, v4

    if-eqz v8, :cond_0

    .line 357
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object v7, v8

    .line 358
    .local v7, "dbIdentifier":Ljava/lang/Long;
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    move-object v8, v1

    move-object v9, v5

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v8, v9, v10, v11}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 360
    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 361
    goto :goto_0

    .line 363
    .end local v7    # "dbIdentifier":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "directory":Ljava/io/File;
    move-wide v2, p2

    .local v2, "databaseId":J
    new-instance v4, Ljava/io/File;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return-object v0
.end method

.method getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "group":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return-object v0
.end method

.method public getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;)Ljava/lang/String;
    .locals 30
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 424
    move-object/from16 v3, p0

    .local v3, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object/from16 v4, p1

    .local v4, "group":Ljava/lang/String;
    move-object/from16 v5, p2

    .local v5, "pausedTargetKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move/from16 v6, p3

    .local v6, "limit":I
    move-object/from16 v7, p4

    .local v7, "outLogs":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Trying to get "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v6

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " logs from the Persistence database for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v24

    move-object/from16 v8, v24

    .line 428
    .local v8, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v24, v8

    const-string/jumbo v25, "persistence_group = ?"

    invoke-virtual/range {v24 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 429
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v24

    .line 430
    .local v9, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v24, v9

    move-object/from16 v25, v4

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 431
    move-object/from16 v24, v5

    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1

    .line 432
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v24

    .line 433
    .local v10, "filter":Ljava/lang/StringBuilder;
    const/16 v24, 0x0

    move/from16 v11, v24

    .local v11, "i":I
    :goto_0
    move/from16 v24, v11

    move-object/from16 v25, v5

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 434
    move-object/from16 v24, v10

    const-string/jumbo v25, "?,"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 433
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 436
    :cond_0
    move-object/from16 v24, v10

    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 437
    move-object/from16 v24, v8

    const-string/jumbo v25, " AND "

    invoke-virtual/range {v24 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 438
    move-object/from16 v24, v8

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "target_key NOT IN ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 439
    move-object/from16 v24, v9

    move-object/from16 v25, v5

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v24

    .line 443
    .end local v10    # "filter":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    :cond_1
    const/16 v24, 0x0

    move/from16 v10, v24

    .line 444
    .local v10, "count":I
    new-instance v24, Ljava/util/LinkedHashMap;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v11, v24

    .line 445
    .local v11, "candidates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v24

    .line 446
    .local v12, "failedDbIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    move-object/from16 v13, v24

    .line 447
    .local v13, "largePayloadGroupDirectory":Ljava/io/File;
    move-object/from16 v24, v9

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    move-object/from16 v14, v24

    .line 448
    .local v14, "selectionArgsArray":[Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v15, v24

    .line 451
    .local v15, "cursor":Landroid/database/Cursor;
    move-object/from16 v24, v3

    :try_start_0
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v24, v0

    move-object/from16 v25, v8

    const/16 v26, 0x0

    move-object/from16 v27, v14

    const-string/jumbo v28, "priority DESC, oid"

    invoke-virtual/range {v24 .. v28}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    move-object/from16 v15, v24

    .line 454
    .line 455
    :goto_1
    move-object/from16 v24, v15

    if-eqz v24, :cond_9

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v24, v0

    move-object/from16 v25, v15

    .line 456
    invoke-virtual/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->nextValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v24

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v16, v25

    .local v16, "values":Landroid/content/ContentValues;
    if-eqz v24, :cond_9

    move/from16 v24, v10

    move/from16 v25, v6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 458
    move-object/from16 v24, v16

    const-string/jumbo v25, "oid"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v17, v24

    .line 466
    .local v17, "dbIdentifier":Ljava/lang/Long;
    move-object/from16 v24, v17

    if-nez v24, :cond_4

    .line 467
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "Empty database record, probably content was larger than 2MB, need to delete as it\'s now corrupted."

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    move-object/from16 v24, v3

    move-object/from16 v25, v8

    move-object/from16 v26, v14

    invoke-direct/range {v24 .. v26}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v18, v24

    .line 469
    .local v18, "corruptedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v19, v24

    :goto_2
    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    move-object/from16 v20, v24

    .line 470
    .local v20, "corruptedId":Ljava/lang/Long;
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    move-object/from16 v24, v0

    move-object/from16 v25, v20

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    move-object/from16 v24, v11

    move-object/from16 v25, v20

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 473
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-direct/range {v24 .. v27}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 474
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Empty database corrupted empty record deleted, id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 478
    .end local v20    # "corruptedId":Ljava/lang/Long;
    :cond_2
    goto/16 :goto_1

    .line 452
    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v17    # "dbIdentifier":Ljava/lang/Long;
    .end local v18    # "corruptedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v24

    move-object/from16 v17, v24

    .line 453
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "Failed to get logs: "

    move-object/from16 v26, v17

    invoke-static/range {v24 .. v26}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 477
    .restart local v16    # "values":Landroid/content/ContentValues;
    .local v17, "dbIdentifier":Ljava/lang/Long;
    .restart local v18    # "corruptedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v20    # "corruptedId":Ljava/lang/Long;
    :cond_3
    goto :goto_2

    .line 482
    .end local v18    # "corruptedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v20    # "corruptedId":Ljava/lang/Long;
    :cond_4
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    move-object/from16 v24, v0

    move-object/from16 v25, v17

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 487
    move-object/from16 v24, v16

    :try_start_1
    const-string/jumbo v25, "log"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v24

    .line 488
    .local v19, "databasePayload":Ljava/lang/String;
    move-object/from16 v24, v19

    if-nez v24, :cond_8

    .line 489
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v27}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v24

    move-object/from16 v20, v24

    .line 490
    .local v20, "file":Ljava/io/File;
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Read payload file "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    move-object/from16 v24, v20

    invoke-static/range {v24 .. v24}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v18, v24

    .line 492
    .local v18, "logPayload":Ljava/lang/String;
    move-object/from16 v24, v18

    if-nez v24, :cond_6

    .line 493
    new-instance v24, Lorg/json/JSONException;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const-string/jumbo v26, "Log payload is null and not stored as a file."

    invoke-direct/range {v25 .. v26}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 511
    .end local v18    # "logPayload":Ljava/lang/String;
    .end local v19    # "databasePayload":Ljava/lang/String;
    .end local v20    # "file":Ljava/io/File;
    :catch_1
    move-exception v24

    move-object/from16 v18, v24

    .line 514
    .local v18, "e":Lorg/json/JSONException;
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "Cannot deserialize a log in the database"

    move-object/from16 v26, v18

    invoke-static/range {v24 .. v26}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    move-object/from16 v24, v12

    move-object/from16 v25, v17

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 520
    .end local v18    # "e":Lorg/json/JSONException;
    :cond_5
    :goto_3
    goto/16 :goto_1

    .line 495
    .line 498
    .local v18, "logPayload":Ljava/lang/String;
    .restart local v19    # "databasePayload":Ljava/lang/String;
    :cond_6
    :goto_4
    move-object/from16 v24, v16

    :try_start_2
    const-string/jumbo v25, "type"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v24

    .line 499
    .local v20, "databasePayloadType":Ljava/lang/String;
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogSerializer()Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-result-object v24

    move-object/from16 v25, v18

    move-object/from16 v26, v20

    invoke-interface/range {v24 .. v26}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->deserializeLog(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v24

    move-object/from16 v21, v24

    .line 502
    .local v21, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object/from16 v24, v16

    const-string/jumbo v25, "target_token"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v22, v24

    .line 503
    .local v22, "targetToken":Ljava/lang/String;
    move-object/from16 v24, v22

    if-eqz v24, :cond_7

    .line 504
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v24

    move-object/from16 v25, v22

    invoke-virtual/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->decrypt(Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object v24

    move-object/from16 v23, v24

    .line 505
    .local v23, "data":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    move-object/from16 v24, v21

    move-object/from16 v25, v23

    invoke-virtual/range {v25 .. v25}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->getDecryptedData()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/microsoft/appcenter/ingestion/models/Log;->addTransmissionTarget(Ljava/lang/String;)V

    .line 509
    .end local v23    # "data":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    :cond_7
    move-object/from16 v24, v11

    move-object/from16 v25, v17

    move-object/from16 v26, v21

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v24

    .line 510
    add-int/lit8 v10, v10, 0x1

    .line 518
    goto :goto_3

    .line 496
    .end local v18    # "logPayload":Ljava/lang/String;
    .end local v20    # "databasePayloadType":Ljava/lang/String;
    .end local v21    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    .end local v22    # "targetToken":Ljava/lang/String;
    :cond_8
    move-object/from16 v24, v19

    move-object/from16 v18, v24

    .restart local v18    # "logPayload":Ljava/lang/String;
    goto :goto_4

    .line 521
    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v17    # "dbIdentifier":Ljava/lang/Long;
    .end local v18    # "logPayload":Ljava/lang/String;
    .end local v19    # "databasePayload":Ljava/lang/String;
    :cond_9
    move-object/from16 v24, v15

    if-eqz v24, :cond_a

    .line 523
    move-object/from16 v24, v15

    :try_start_3
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 525
    .line 529
    :cond_a
    :goto_5
    move-object/from16 v24, v12

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_c

    .line 530
    move-object/from16 v24, v12

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v17, v24

    :goto_6
    move-object/from16 v24, v17

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    move-object/from16 v24, v17

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 531
    .local v18, "id":J
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-wide/from16 v26, v18

    invoke-direct/range {v24 .. v27}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 532
    goto :goto_6

    .line 524
    .end local v18    # "id":J
    :catch_2
    move-exception v24

    move-object/from16 v17, v24

    goto :goto_5

    .line 533
    :cond_b
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "Deleted logs that cannot be deserialized"

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_c
    move-object/from16 v24, v11

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->size()I

    move-result v24

    if-gtz v24, :cond_d

    .line 538
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "No logs found in the Persistence database at the moment"

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/16 v24, 0x0

    move-object/from16 v3, v24

    .line 567
    .end local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    :goto_7
    return-object v3

    .line 543
    .restart local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    :cond_d
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v17, v24

    .line 546
    .local v17, "id":Ljava/lang/String;
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Returning "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v11

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " log(s) with an ID, "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "The SID/ID pairs for returning log(s) is/are:"

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v24

    .line 549
    .local v18, "pendingDbIdentifiersGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v24, v11

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v19, v24

    :goto_8
    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    move-object/from16 v20, v24

    .line 550
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    move-object/from16 v24, v20

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    move-object/from16 v21, v24

    .line 553
    .local v21, "dbIdentifier":Ljava/lang/Long;
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    move-object/from16 v24, v0

    move-object/from16 v25, v21

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 556
    move-object/from16 v24, v18

    move-object/from16 v25, v21

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 559
    move-object/from16 v24, v7

    move-object/from16 v25, v20

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 562
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\t"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v20

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/microsoft/appcenter/ingestion/models/Log;

    invoke-interface/range {v26 .. v26}, Lcom/microsoft/appcenter/ingestion/models/Log;->getSid()Ljava/util/UUID;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v21

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    goto :goto_8

    .line 566
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    .end local v21    # "dbIdentifier":Ljava/lang/Long;
    :cond_e
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v18

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 567
    move-object/from16 v24, v17

    move-object/from16 v3, v24

    goto/16 :goto_7
.end method

.method public putLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)J
    .locals 28
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x2L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
        }
    .end annotation

    .prologue
    .line 268
    move-object/from16 v3, p0

    .local v3, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object/from16 v4, p1

    .local v4, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object/from16 v5, p2

    .local v5, "group":Ljava/lang/String;
    move/from16 v6, p3

    .local v6, "flags":I
    :try_start_0
    const-string/jumbo v20, "AppCenter"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Storing a log to the Persistence database for log type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v4

    invoke-interface/range {v22 .. v22}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " with flags="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogSerializer()Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-result-object v20

    move-object/from16 v21, v4

    invoke-interface/range {v20 .. v21}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->serializeLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    .line 273
    .local v7, "payload":Ljava/lang/String;
    move-object/from16 v20, v7

    const-string/jumbo v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v9, v20

    .line 274
    .local v9, "payloadSize":I
    move/from16 v20, v9

    const v21, 0x1e6666

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    const/16 v20, 0x1

    :goto_0
    move/from16 v10, v20

    .line 277
    .local v10, "isLargePayload":Z
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 278
    move/from16 v20, v10

    if-eqz v20, :cond_1

    .line 279
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const-string/jumbo v22, "Log is larger than 1992294 bytes, cannot send to OneCollector."

    invoke-direct/range {v21 .. v22}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    .end local v7    # "payload":Ljava/lang/String;
    .end local v9    # "payloadSize":I
    .end local v10    # "isLargePayload":Z
    :catch_0
    move-exception v20

    move-object/from16 v7, v20

    .line 321
    .local v7, "e":Lorg/json/JSONException;
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const-string/jumbo v22, "Cannot convert to JSON string."

    move-object/from16 v23, v7

    invoke-direct/range {v21 .. v23}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 274
    .local v7, "payload":Ljava/lang/String;
    .restart local v9    # "payloadSize":I
    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    .line 281
    .restart local v10    # "isLargePayload":Z
    :cond_1
    move-object/from16 v20, v4

    :try_start_1
    invoke-interface/range {v20 .. v20}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v12, v20

    .line 282
    .local v12, "targetToken":Ljava/lang/String;
    move-object/from16 v20, v12

    invoke-static/range {v20 .. v20}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    .line 283
    .local v11, "targetKey":Ljava/lang/String;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    .line 288
    :goto_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getMaxSize()J

    move-result-wide v20

    move-wide/from16 v13, v20

    .line 289
    .local v13, "maxSize":J
    move-wide/from16 v20, v13

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    .line 290
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const-string/jumbo v22, "Failed to store a log to the Persistence database."

    invoke-direct/range {v21 .. v22}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    .end local v7    # "payload":Ljava/lang/String;
    .end local v9    # "payloadSize":I
    .end local v10    # "isLargePayload":Z
    .end local v11    # "targetKey":Ljava/lang/String;
    .end local v12    # "targetToken":Ljava/lang/String;
    .end local v13    # "maxSize":J
    :catch_1
    move-exception v20

    move-object/from16 v7, v20

    .line 323
    .local v7, "e":Ljava/io/IOException;
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const-string/jumbo v22, "Cannot save large payload in a file."

    move-object/from16 v23, v7

    invoke-direct/range {v21 .. v23}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 285
    .local v7, "payload":Ljava/lang/String;
    .restart local v9    # "payloadSize":I
    .restart local v10    # "isLargePayload":Z
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v11, v20

    .line 286
    .restart local v11    # "targetKey":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v12, v20

    .restart local v12    # "targetToken":Ljava/lang/String;
    goto :goto_1

    .line 292
    .restart local v13    # "maxSize":J
    :cond_3
    move/from16 v20, v10

    if-nez v20, :cond_4

    move-wide/from16 v20, v13

    move/from16 v22, v9

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_4

    .line 293
    :try_start_2
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Log is too large ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " bytes) to store in database. Current maximum database size is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-wide/from16 v23, v13

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " bytes."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 296
    :cond_4
    move-object/from16 v20, v5

    move/from16 v21, v10

    if-eqz v21, :cond_5

    const/16 v21, 0x0

    :goto_2
    move-object/from16 v22, v12

    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v11

    move/from16 v25, v6

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/microsoft/appcenter/Flags;->getPersistenceFlag(IZ)I

    move-result v25

    invoke-static/range {v20 .. v25}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v20

    move-object/from16 v8, v20

    .line 297
    .local v8, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    const-string/jumbo v22, "priority"

    invoke-virtual/range {v20 .. v22}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->put(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v15, v20

    .line 298
    .local v15, "databaseId":J
    move-wide/from16 v20, v15

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_6

    .line 299
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Failed to store a log to the Persistence database for log type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 296
    .end local v8    # "contentValues":Landroid/content/ContentValues;
    .end local v15    # "databaseId":J
    :cond_5
    move-object/from16 v21, v7

    goto :goto_2

    .line 301
    .restart local v8    # "contentValues":Landroid/content/ContentValues;
    .restart local v15    # "databaseId":J
    :cond_6
    const-string/jumbo v20, "AppCenter"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Stored a log to the Persistence database for log type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v4

    invoke-interface/range {v22 .. v22}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " with databaseId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-wide/from16 v22, v15

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    move/from16 v20, v10

    if-eqz v20, :cond_7

    .line 303
    const-string/jumbo v20, "AppCenter"

    const-string/jumbo v21, "Payload is larger than what SQLite supports, storing payload in a separate file."

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v17, v20

    .line 307
    .local v17, "directory":Ljava/io/File;
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    move-result v20

    .line 308
    move-object/from16 v20, v3

    move-object/from16 v21, v17

    move-wide/from16 v22, v15

    invoke-virtual/range {v20 .. v23}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v20

    move-object/from16 v18, v20

    .line 310
    .local v18, "payloadFile":Ljava/io/File;
    move-object/from16 v20, v18

    move-object/from16 v21, v7

    :try_start_3
    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/storage/FileManager;->write(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 316
    .line 317
    :try_start_4
    const-string/jumbo v20, "AppCenter"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Payload written to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .end local v17    # "directory":Ljava/io/File;
    .end local v18    # "payloadFile":Ljava/io/File;
    :cond_7
    move-wide/from16 v20, v15

    move-wide/from16 v3, v20

    .end local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return-wide v3

    .line 311
    .restart local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    .restart local v17    # "directory":Ljava/io/File;
    .restart local v18    # "payloadFile":Ljava/io/File;
    :catch_2
    move-exception v20

    move-object/from16 v19, v20

    .line 314
    .local v19, "e":Ljava/io/IOException;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v20, v0

    move-wide/from16 v21, v15

    invoke-virtual/range {v20 .. v22}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    .line 315
    move-object/from16 v20, v19

    throw v20
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method public setMaxStorageSize(J)Z
    .locals 7

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-wide v1, p1

    .local v1, "maxStorageSizeInBytes":J
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->setMaxSize(J)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return v0
.end method
