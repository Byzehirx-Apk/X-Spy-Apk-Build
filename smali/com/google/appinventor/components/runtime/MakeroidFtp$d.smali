.class final Lcom/google/appinventor/components/runtime/MakeroidFtp$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidFtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;B)V
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, ""

    move-object v2, v4

    .line 260
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 261
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    move-result v4

    .line 262
    new-instance v4, Ljava/io/FileInputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 263
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v4

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v4

    move v1, v4

    .line 264
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 265
    move v4, v1

    if-eqz v4, :cond_0

    .line 266
    const-string/jumbo v4, "None"
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v4

    .line 277
    .line 278
    :cond_0
    :goto_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 268
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 269
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidFtp;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    const-string/jumbo v6, "UploadFile"

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 271
    const-string/jumbo v4, "Makeroid Ftp"

    move-object v5, v3

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 272
    move-object v4, v3

    move-object v2, v4

    .line 277
    goto :goto_0

    .line 273
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 275
    const-string/jumbo v4, "Makeroid Ftp"

    move-object v5, v3

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 276
    move-object v4, v3

    move-object v2, v4

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    move-object v1, v3

    .line 1283
    move-object v3, v2

    const-string/jumbo v4, "None"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1284
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/MakeroidFtp;->UploadDone()V

    :goto_0
    return-void

    .line 1286
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidFtp;->UploadError(Ljava/lang/String;)V

    .line 254
    goto :goto_0
.end method
