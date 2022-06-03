.class Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/storage/DatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

.field final synthetic val$sqlCreateCommand:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V
    .locals 12

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, p2

    .local v2, "arg0":Landroid/content/Context;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "arg2":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    move/from16 v5, p5

    .local v5, "arg3":I
    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->val$sqlCreateCommand:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;
    move-object v1, p1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->val$sqlCreateCommand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;
    move-object v1, p1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move v2, p2

    .local v2, "oldVersion":I
    move v3, p3

    .local v3, "newVersion":I
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v4}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 101
    return-void
.end method
