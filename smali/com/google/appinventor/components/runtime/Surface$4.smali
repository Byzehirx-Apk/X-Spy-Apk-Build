.class final Lcom/google/appinventor/components/runtime/Surface$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Surface;->loadTakePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Surface;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x0

    move-object v2, v4

    .line 306
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Surface$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Surface;->access$200(Lcom/google/appinventor/components/runtime/Surface;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/takenPicture.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 307
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 308
    move-object v2, v5

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 309
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 310
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 311
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface;

    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Surface;->PictureCreated(Ljava/lang/String;)V

    .line 312
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Surface;->StartPreview()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 321
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    .line 327
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 323
    const-string/jumbo v4, "Surface"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 324
    goto :goto_0

    .line 313
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 314
    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Surface;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Surface$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface;

    const-string/jumbo v6, "Surface"

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 320
    move-object v4, v2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 321
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 324
    goto :goto_0

    .line 322
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 323
    const-string/jumbo v4, "Surface"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 324
    goto :goto_0

    .line 315
    :catch_3
    move-exception v4

    move-object v3, v4

    .line 316
    :try_start_4
    const-string/jumbo v4, "Surface"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    .line 318
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 320
    move-object v4, v2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 321
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 324
    goto :goto_0

    .line 322
    :catch_4
    move-exception v4

    move-object v3, v4

    .line 323
    const-string/jumbo v4, "Surface"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 324
    goto :goto_0

    .line 318
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    .line 320
    move-object v4, v2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 321
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 324
    .line 326
    :cond_0
    :goto_1
    move-object v4, v1

    throw v4

    .line 322
    :catch_5
    move-exception v4

    move-object v2, v4

    .line 323
    const-string/jumbo v4, "Surface"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 327
    :cond_1
    goto/16 :goto_0
.end method
