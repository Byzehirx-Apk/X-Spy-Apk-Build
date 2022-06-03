.class final Lcom/google/appinventor/components/runtime/Download$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/Download;)V
    .locals 4

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Download$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    .line 383
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Download$b;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/Download;B)V
    .locals 5

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Download$b;-><init>(Lcom/google/appinventor/components/runtime/Download;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Download$b;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Ljava/lang/String;

    .line 388
    const/4 v3, 0x0

    move-object v1, v3

    .line 390
    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Download$b;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 392
    move-object v1, v4

    const-string/jumbo v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 393
    move-object v3, v1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 394
    move-object v3, v1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v2, v3

    .line 398
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 399
    move-object v3, v1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 394
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .line 396
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    move-object v2, v3

    .line 398
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 399
    move-object v3, v1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 396
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    if-eqz v3, :cond_2

    .line 399
    move-object v3, v1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 401
    :cond_2
    move-object v3, v2

    throw v3
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Download$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    move-object v1, v3

    .line 1406
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Download$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Download;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Download;->GotFileSize(I)V

    .line 382
    return-void
.end method
