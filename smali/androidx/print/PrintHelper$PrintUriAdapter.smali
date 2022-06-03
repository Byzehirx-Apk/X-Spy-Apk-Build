.class Landroidx/print/PrintHelper$PrintUriAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintUriAdapter"
.end annotation


# instance fields
.field mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field final mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

.field final mFittingMode:I

.field final mImageFile:Landroid/net/Uri;

.field final mJobName:Ljava/lang/String;

.field mLoadBitmap:Landroid/os/AsyncTask;
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
.end field

.field final synthetic this$0:Landroidx/print/PrintHelper;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;I)V
    .locals 8

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter;
    move-object v1, p1

    move-object v2, p2

    .local v2, "jobName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "imageFile":Landroid/net/Uri;
    move-object v4, p4

    .local v4, "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    move v5, p5

    .local v5, "fittingMode":I
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    move-object v6, v0

    invoke-direct {v6}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 390
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    .line 391
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter;->mImageFile:Landroid/net/Uri;

    .line 392
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 393
    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    .line 394
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 395
    return-void
.end method


# virtual methods
.method cancelLoad()V
    .locals 6

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter;
    move-object v3, v0

    iget-object v3, v3, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v3, v3, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 503
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v3, v3, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v3, :cond_1

    .line 504
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_0

    .line 506
    move-object v3, v0

    iget-object v3, v3, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v3, v3, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v3}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 508
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 510
    :cond_1
    move-object v3, v1

    monitor-exit v3

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter;
    move-object v1, v0

    invoke-super {v1}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 516
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/print/PrintHelper$PrintUriAdapter;->cancelLoad()V

    .line 517
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 518
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v1

    .line 520
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v1, :cond_1

    .line 521
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v1}, Landroidx/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 523
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 524
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 525
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 527
    :cond_2
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 17

    .prologue
    .line 404
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter;
    move-object/from16 v1, p1

    .local v1, "oldPrintAttributes":Landroid/print/PrintAttributes;
    move-object/from16 v2, p2

    .local v2, "newPrintAttributes":Landroid/print/PrintAttributes;
    move-object/from16 v3, p3

    .local v3, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v4, p4

    .local v4, "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    move-object/from16 v5, p5

    .local v5, "bundle":Landroid/os/Bundle;
    move-object v8, v0

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v6, v9

    monitor-enter v8

    .line 405
    move-object v8, v0

    move-object v9, v2

    :try_start_0
    iput-object v9, v8, Landroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    .line 406
    move-object v8, v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 410
    move-object v8, v4

    invoke-virtual {v8}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 411
    .line 498
    :goto_0
    return-void

    .line 406
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v6

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    throw v8

    .line 414
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 415
    new-instance v8, Landroid/print/PrintDocumentInfo$Builder;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Landroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 416
    invoke-virtual {v8, v9}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 417
    invoke-virtual {v8, v9}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v8

    .line 418
    invoke-virtual {v8}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v8

    move-object v6, v8

    .line 419
    .local v6, "info":Landroid/print/PrintDocumentInfo;
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v7, v8

    .line 420
    .local v7, "changed":Z
    move-object v8, v4

    move-object v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 421
    goto :goto_0

    .line 419
    .end local v7    # "changed":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 424
    .end local v6    # "info":Landroid/print/PrintDocumentInfo;
    :cond_2
    move-object v8, v0

    new-instance v9, Landroidx/print/PrintHelper$PrintUriAdapter$1;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object v12, v3

    move-object v13, v2

    move-object v14, v1

    move-object v15, v4

    invoke-direct/range {v10 .. v15}, Landroidx/print/PrintHelper$PrintUriAdapter$1;-><init>(Landroidx/print/PrintHelper$PrintUriAdapter;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/net/Uri;

    .line 497
    invoke-virtual {v9, v10}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v9

    iput-object v9, v8, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 498
    goto :goto_0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 12

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter;
    move-object v1, p1

    .local v1, "pageRanges":[Landroid/print/PageRange;
    move-object v2, p2

    .local v2, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    move-object v3, p3

    .local v3, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v4, p4

    .local v4, "writeResultCallback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    move-object v5, v0

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    move-object v6, v0

    iget-object v6, v6, Landroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    move-object v7, v0

    iget v7, v7, Landroidx/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v5 .. v11}, Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 535
    return-void
.end method
