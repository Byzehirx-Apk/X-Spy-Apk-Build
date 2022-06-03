.class Landroidx/print/PrintHelper$PrintUriAdapter$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper$PrintUriAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper$PrintUriAdapter;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 8

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    move-object v1, p1

    .local v1, "this$1":Landroidx/print/PrintHelper$PrintUriAdapter;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    move-object v6, v0

    invoke-direct {v6}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    move-object v1, p1

    .local v1, "uris":[Landroid/net/Uri;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v3, v3, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    move-object v4, v0

    iget-object v4, v4, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v4, v4, Landroidx/print/PrintHelper$PrintUriAdapter;->mImageFile:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroidx/print/PrintHelper;->loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 445
    .end local v0    # "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    :goto_0
    return-object v0

    .line 442
    .restart local v0    # "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 445
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    move-object v1, p1

    .local v1, "result":Landroid/graphics/Bitmap;
    move-object v2, v0

    iget-object v2, v2, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 495
    move-object v2, v0

    iget-object v2, v2, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 496
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 13

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 454
    move-object v5, v1

    if-eqz v5, :cond_1

    sget-boolean v5, Landroidx/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget v5, v5, Landroidx/print/PrintHelper;->mOrientation:I

    if-nez v5, :cond_1

    .line 458
    :cond_0
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v3, v6

    monitor-enter v5

    .line 459
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v5}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v5

    move-object v2, v5

    .line 460
    .local v2, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 463
    move-object v5, v2

    invoke-virtual {v5}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v5

    move-object v6, v1

    invoke-static {v6}, Landroidx/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 464
    new-instance v5, Landroid/graphics/Matrix;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v5

    .line 466
    .local v3, "rotation":Landroid/graphics/Matrix;
    move-object v5, v3

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-result v5

    .line 467
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v1

    .line 468
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v10, v3

    const/4 v11, 0x1

    .line 467
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 474
    .end local v2    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    .end local v3    # "rotation":Landroid/graphics/Matrix;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    move-object v6, v1

    iput-object v6, v5, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 475
    move-object v5, v1

    if-eqz v5, :cond_3

    .line 476
    new-instance v5, Landroid/print/PrintDocumentInfo$Builder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v7, v7, Landroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 477
    invoke-virtual {v5, v6}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 478
    invoke-virtual {v5, v6}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v5

    .line 479
    invoke-virtual {v5}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v5

    move-object v2, v5

    .line 481
    .local v2, "info":Landroid/print/PrintDocumentInfo;
    move-object v5, v0

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    move-object v6, v0

    iget-object v6, v6, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v5, v6}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 483
    .local v3, "changed":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 485
    .line 488
    .end local v2    # "info":Landroid/print/PrintDocumentInfo;
    .end local v3    # "changed":Z
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 489
    return-void

    .line 460
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5

    .line 481
    .restart local v2    # "info":Landroid/print/PrintDocumentInfo;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 486
    .end local v2    # "info":Landroid/print/PrintDocumentInfo;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;-><init>(Landroidx/print/PrintHelper$PrintUriAdapter$1;)V

    invoke-virtual {v1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 436
    return-void
.end method
