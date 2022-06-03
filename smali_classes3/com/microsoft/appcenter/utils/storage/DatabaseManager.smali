.class public Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
    }
.end annotation


# static fields
.field public static final PRIMARY_KEY:Ljava/lang/String; = "oid"

.field public static final SELECT_PRIMARY_KEY:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Ljava/lang/String;

.field private final mDefaultTable:Ljava/lang/String;

.field private final mListener:Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

.field private mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mSchema:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "oid"

    aput-object v3, v1, v2

    sput-object v0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->SELECT_PRIMARY_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V
    .locals 18
    .param p7    # Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "database":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "defaultTable":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "version":I
    move-object/from16 v5, p5

    .local v5, "schema":Landroid/content/ContentValues;
    move-object/from16 v6, p6

    .local v6, "sqlCreateCommand":Ljava/lang/String;
    move-object/from16 v7, p7

    .local v7, "listener":Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mContext:Landroid/content/Context;

    .line 86
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    .line 87
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    .line 88
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSchema:Landroid/content/ContentValues;

    .line 89
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mListener:Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    .line 90
    move-object v8, v0

    new-instance v9, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x0

    move v15, v4

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;-><init>(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mListener:Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-object v0
.end method

.method private static buildValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 11

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "cursor":Landroid/database/Cursor;
    move-object v1, p1

    .local v1, "schema":Landroid/content/ContentValues;
    new-instance v6, Landroid/content/ContentValues;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v6

    .line 114
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v0

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 115
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    .line 114
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_0
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 119
    .local v4, "key":Ljava/lang/String;
    move-object v6, v4

    const-string/jumbo v7, "oid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 122
    :cond_1
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 123
    .local v5, "specimen":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, [B

    if-eqz v6, :cond_2

    .line 124
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 125
    :cond_2
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_3

    .line 126
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 127
    :cond_3
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_4

    .line 128
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 129
    :cond_4
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 130
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 131
    :cond_5
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_6

    .line 132
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 133
    :cond_6
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_7

    .line 134
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getShort(I)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto/16 :goto_1

    .line 135
    :cond_7
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_9

    .line 136
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 138
    :cond_9
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "specimen":Ljava/lang/Object;
    :cond_a
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method private delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "table":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/Object;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    move-object v9, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v4, v6

    .line 254
    .local v4, "whereArgs":[Ljava/lang/String;
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v7, v1

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " = ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    .line 257
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :goto_0
    return v0

    .line 255
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 256
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Failed to delete values that match condition=\"%s\" and values=\"%s\" from database %s."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " = ?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v4

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method public buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSchema:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-object v0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 269
    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 268
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to clear the table."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public close()V
    .locals 5

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 282
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to close the database."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return v0
.end method

.method public delete(J)V
    .locals 9
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-wide v1, p1

    .local v1, "id":J
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    const-string/jumbo v5, "oid"

    move-wide v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    .line 230
    return-void
.end method

.method public getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1    # Landroid/database/sqlite/SQLiteQueryBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v2, p2

    .local v2, "columns":[Ljava/lang/String;
    move-object v3, p3

    .local v3, "selectionArgs":[Ljava/lang/String;
    move-object v4, p4

    .local v4, "sortOrder":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-object v0
.end method

.method getCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/sqlite/SQLiteQueryBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "table":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v3, p3

    .local v3, "columns":[Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "sortOrder":Ljava/lang/String;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 327
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v6

    move-object v2, v6

    .line 329
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 330
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v5

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-object v0
.end method

.method getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 356
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v0

    .line 345
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 346
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to open database. Trying to delete database (may be corrupted)."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "The database was successfully deleted."

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 352
    :cond_0
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to delete database."

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getMaxSize()J
    .locals 5

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getMaximumSize()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 417
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-wide v0

    .line 415
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 416
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Could not get maximum database size."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    const-wide/16 v2, -0x1

    move-wide v0, v2

    goto :goto_0
.end method

.method public final getRowCount()J
    .locals 5

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 296
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-wide v0

    .line 294
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 295
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to get row count of database."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    const-wide/16 v2, -0x1

    move-wide v0, v2

    goto :goto_0
.end method

.method public nextValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 170
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :goto_0
    return-object v0

    .line 169
    .line 170
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 167
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 168
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "Failed to get next cursor value: "

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public put(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 16
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object/from16 v1, p1

    .local v1, "values":Landroid/content/ContentValues;
    move-object/from16 v2, p2

    .local v2, "priorityColumn":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v3, v8

    .line 184
    .local v3, "id":Ljava/lang/Long;
    const/4 v8, 0x0

    move-object v4, v8

    .line 186
    .local v4, "cursor":Landroid/database/Cursor;
    :goto_0
    move-object v8, v3

    if-nez v8, :cond_3

    .line 190
    move-object v8, v0

    :try_start_0
    invoke-virtual {v8}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object v3, v8

    .line 208
    goto :goto_0

    .line 191
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 194
    .local v5, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "Storage is full, trying to delete the oldest log that has the lowest priority which is lower or equal priority than the new log"

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    move-object v8, v4

    if-nez v8, :cond_0

    .line 196
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 197
    .local v6, "priority":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v8

    move-object v7, v8

    .line 198
    .local v7, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v8, v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " <= ?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 199
    move-object v8, v0

    move-object v9, v7

    sget-object v10, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->SELECT_PRIMARY_KEY:[Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v6

    aput-object v14, v12, v13

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "oid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v4, v8

    .line 201
    .end local v6    # "priority":Ljava/lang/String;
    .end local v7    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_0
    move-object v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 202
    move-object v8, v4

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide v6, v8

    .line 203
    .local v6, "deletedId":J
    move-object v8, v0

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    .line 204
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleted log id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 208
    goto/16 :goto_0

    .line 206
    .end local v6    # "deletedId":J
    :cond_1
    move-object v8, v5

    throw v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    .end local v5    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 211
    .local v5, "e":Ljava/lang/RuntimeException;
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v3, v8

    .line 212
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "Failed to insert values (%s) to database %s."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v1

    invoke-virtual {v13}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v5

    invoke-static {v8, v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_1
    move-object v8, v4

    if-eqz v8, :cond_2

    .line 216
    move-object v8, v4

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 218
    .line 220
    :cond_2
    :goto_2
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-wide v0

    .line 213
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :cond_3
    goto :goto_1

    .line 217
    :catch_2
    move-exception v8

    move-object v5, v8

    goto :goto_2
.end method

.method public setMaxSize(J)Z
    .locals 15

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-wide/from16 v1, p1

    .local v1, "maxStorageSizeInBytes":J
    move-object v10, v0

    :try_start_0
    invoke-virtual {v10}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    move-object v3, v10

    .line 380
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v10, v3

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    move-result-wide v10

    move-wide v4, v10

    .line 383
    .local v4, "newMaxSize":J
    move-object v10, v3

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v10

    move-wide v6, v10

    .line 384
    .local v6, "pageSize":J
    move-wide v10, v1

    move-wide v12, v6

    div-long/2addr v10, v12

    move-wide v8, v10

    .line 385
    .local v8, "expectedMultipleMaxSize":J
    move-wide v10, v1

    move-wide v12, v6

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 386
    move-wide v10, v8

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-wide v8, v10

    .line 388
    :cond_0
    move-wide v10, v8

    move-wide v12, v6

    mul-long/2addr v10, v12

    move-wide v8, v10

    .line 391
    move-wide v10, v4

    move-wide v12, v8

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    .line 392
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Could not change maximum database size to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bytes, current maximum size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bytes."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v10, 0x0

    move v0, v10

    .line 403
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "newMaxSize":J
    .end local v6    # "pageSize":J
    .end local v8    # "expectedMultipleMaxSize":J
    :goto_0
    return v0

    .line 395
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "newMaxSize":J
    .restart local v6    # "pageSize":J
    .restart local v8    # "expectedMultipleMaxSize":J
    :cond_1
    move-wide v10, v1

    move-wide v12, v4

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 396
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Changed maximum database size to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bytes."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_1
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 398
    :cond_2
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Changed maximum database size to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bytes (next multiple of page size)."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "newMaxSize":J
    .end local v6    # "pageSize":J
    .end local v8    # "expectedMultipleMaxSize":J
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 402
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v10, "AppCenter"

    const-string/jumbo v11, "Could not change maximum database size."

    move-object v12, v3

    invoke-static {v10, v11, v12}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0
.end method

.method setSQLiteOpenHelper(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteOpenHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 368
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 369
    return-void
.end method
