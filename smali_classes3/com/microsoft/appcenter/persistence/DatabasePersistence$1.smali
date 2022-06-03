.class Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;
.super Ljava/lang/Object;
.source "DatabasePersistence.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/persistence/DatabasePersistence;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;)V
    .locals 4

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;->this$0:Lcom/microsoft/appcenter/persistence/DatabasePersistence;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;
    move-object v1, p1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, v1

    const-string/jumbo v3, "CREATE INDEX `ix_logs_priority` ON logs (`priority`)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;
    move-object v1, p1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move v2, p2

    .local v2, "oldVersion":I
    move v3, p3

    .local v3, "newVersion":I
    move-object v4, v1

    const-string/jumbo v5, "DROP TABLE `logs`"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    move-object v4, v1

    const-string/jumbo v5, "CREATE TABLE IF NOT EXISTS `logs`(`oid` INTEGER PRIMARY KEY AUTOINCREMENT,`target_token` TEXT,`type` TEXT,`priority` INTEGER,`log` TEXT,`persistence_group` TEXT,`target_key` TEXT);"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    move-object v4, v1

    const-string/jumbo v5, "CREATE INDEX `ix_logs_priority` ON logs (`priority`)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    return-void
.end method
