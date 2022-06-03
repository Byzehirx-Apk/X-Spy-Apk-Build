.class final Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

.field private synthetic ReCb3cSS5vmkkCklr23hbPtO3UnwEKWzo9VjZrYDXw67pDopsDqJlrKbbhL6NYmQ:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->ReCb3cSS5vmkkCklr23hbPtO3UnwEKWzo9VjZrYDXw67pDopsDqJlrKbbhL6NYmQ:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .prologue
    .line 35
    move-object/from16 v0, p0

    const/4 v7, 0x0

    move-object v1, v7

    .line 36
    const/4 v7, 0x0

    move-object v2, v7

    .line 37
    const/4 v7, 0x0

    move-object v3, v7

    .line 39
    :try_start_0
    new-instance v7, Ljava/net/URL;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->ReCb3cSS5vmkkCklr23hbPtO3UnwEKWzo9VjZrYDXw67pDopsDqJlrKbbhL6NYmQ:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v4, v7

    .line 41
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v4

    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v7

    .line 42
    new-instance v7, Ljava/io/File;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "/package.apk"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v7

    .line 43
    new-instance v7, Ljava/io/FileOutputStream;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v4

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    .line 44
    const v7, 0x8000

    new-array v7, v7, [B

    move-object v5, v7

    .line 46
    :goto_0
    move-object v7, v2

    move-object v8, v5

    const/4 v9, 0x0

    const v10, 0x8000

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v15, v7

    move v7, v15

    move v8, v15

    move v6, v8

    if-lez v7, :cond_0

    .line 47
    move-object v7, v3

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 49
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 50
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 52
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "About to Install package from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->ReCb3cSS5vmkkCklr23hbPtO3UnwEKWzo9VjZrYDXw67pDopsDqJlrKbbhL6NYmQ:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 53
    new-instance v7, Landroid/content/Intent;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const-string/jumbo v9, "android.intent.action.VIEW"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 54
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    move-object v8, v4

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object v1, v7

    .line 55
    move-object v7, v5

    move-object v8, v1

    const-string/jumbo v9, "application/vnd.android.package-archive"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 56
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 57
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 68
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    move-object v8, v3

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 69
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 59
    :try_start_1
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    const-string/jumbo v8, "Unable to install package"

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 60
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v9, "PackageInstaller"

    const/16 v10, 0xe11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    aput-object v14, v12, v13

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 68
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    move-object v8, v3

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 69
    goto :goto_1

    .line 62
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 63
    :try_start_2
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    const-string/jumbo v8, "ERROR_UNABLE_TO_GET"

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 64
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v9, "PackageInstaller"

    const/16 v10, 0x44d

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->ReCb3cSS5vmkkCklr23hbPtO3UnwEKWzo9VjZrYDXw67pDopsDqJlrKbbhL6NYmQ:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 68
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    move-object v8, v3

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 69
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v7

    move-object v1, v7

    const-string/jumbo v7, "PackageInstaller (Kodular)"

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 68
    const-string/jumbo v7, "PackageInstaller (Kodular)"

    move-object v8, v3

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 69
    move-object v7, v1

    throw v7
.end method
