.class final Lcom/google/appinventor/components/runtime/Download$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Download;)V
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Download$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/app/DownloadManager$Query;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 362
    move-object v1, v5

    const/4 v5, 0x1

    new-array v5, v5, [J

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Download$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Download;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v4

    .line 365
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Download$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Download;)Landroid/app/DownloadManager;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v1, v4

    .line 369
    .line 370
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    const/16 v4, 0x8

    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "status"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 372
    move-object v4, v1

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "local_uri"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "file://"

    const-string/jumbo v6, ""

    .line 373
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 374
    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v2, v6

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 375
    move-object v4, v1

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "total_size"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v1, v4

    .line 376
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Download$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;

    move-object v5, v2

    move-object v6, v3

    move v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Download;->DownloadComplete(Ljava/lang/String;Ljava/lang/String;I)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 367
    const-string/jumbo v4, "Download"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 368
    goto :goto_0
.end method
