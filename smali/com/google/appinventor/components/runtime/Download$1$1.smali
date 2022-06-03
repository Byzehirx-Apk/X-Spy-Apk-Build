.class final Lcom/google/appinventor/components/runtime/Download$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Download$1;->HandlePermissionResponse(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Download$1;)V
    .locals 4

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Download$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 275
    move-object v1, p0

    const/4 v6, 0x1

    move v2, v6

    .line 277
    :goto_0
    move v6, v2

    if-eqz v6, :cond_2

    .line 279
    new-instance v6, Landroid/app/DownloadManager$Query;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 280
    move-object v3, v7

    const/4 v7, 0x1

    new-array v7, v7, [J

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Download$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download$1;

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Download$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Download;)J

    move-result-wide v10

    aput-wide v10, v8, v9

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v6

    .line 282
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Download$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download$1;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Download$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Download;)Landroid/app/DownloadManager;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 284
    move-object v3, v7

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 285
    move-object v6, v3

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "bytes_so_far"

    .line 286
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 285
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v4, v6

    .line 287
    move-object v6, v3

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "total_size"

    .line 288
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 287
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v5, v6

    .line 290
    move-object v6, v3

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "status"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 292
    const/4 v6, 0x0

    move v2, v6

    .line 295
    :cond_0
    move v6, v4

    int-to-long v6, v6

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    move v8, v5

    int-to-long v8, v8

    div-long/2addr v6, v8

    long-to-int v6, v6

    move v4, v6

    .line 297
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Download$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download$1;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Download$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Download;)Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/Download$1$1$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move v10, v4

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/Download$1$1$1;-><init>(Lcom/google/appinventor/components/runtime/Download$1$1;I)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    move-object v6, v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_1
    goto/16 :goto_0

    .line 307
    :cond_2
    return-void
.end method
