.class Landroidx/print/PrintHelper$PrintBitmapAdapter;
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
    name = "PrintBitmapAdapter"
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

.field private final mFittingMode:I

.field private final mJobName:Ljava/lang/String;

.field final synthetic this$0:Landroidx/print/PrintHelper;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 8

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintBitmapAdapter;
    move-object v1, p1

    move-object v2, p2

    .local v2, "jobName":Ljava/lang/String;
    move v3, p3

    .local v3, "fittingMode":I
    move-object v4, p4

    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object v5, p5

    .local v5, "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintBitmapAdapter;->this$0:Landroidx/print/PrintHelper;

    move-object v6, v0

    invoke-direct {v6}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 289
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mJobName:Ljava/lang/String;

    .line 290
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mFittingMode:I

    .line 291
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 292
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 293
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintBitmapAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v1, :cond_0

    .line 324
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v1}, Landroidx/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 326
    :cond_0
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintBitmapAdapter;
    move-object v1, p1

    .local v1, "oldPrintAttributes":Landroid/print/PrintAttributes;
    move-object v2, p2

    .local v2, "newPrintAttributes":Landroid/print/PrintAttributes;
    move-object v3, p3

    .local v3, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v4, p4

    .local v4, "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    move-object/from16 v5, p5

    .local v5, "bundle":Landroid/os/Bundle;
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mAttributes:Landroid/print/PrintAttributes;

    .line 304
    new-instance v8, Landroid/print/PrintDocumentInfo$Builder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    iget-object v10, v10, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 305
    invoke-virtual {v8, v9}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 306
    invoke-virtual {v8, v9}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v8

    .line 307
    invoke-virtual {v8}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v8

    move-object v6, v8

    .line 308
    .local v6, "info":Landroid/print/PrintDocumentInfo;
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 309
    .local v7, "changed":Z
    move-object v8, v4

    move-object v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 310
    return-void

    .line 308
    .end local v7    # "changed":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 12

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintBitmapAdapter;
    move-object v1, p1

    .local v1, "pageRanges":[Landroid/print/PageRange;
    move-object v2, p2

    .local v2, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    move-object v3, p3

    .local v3, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v4, p4

    .local v4, "writeResultCallback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    move-object v5, v0

    iget-object v5, v5, Landroidx/print/PrintHelper$PrintBitmapAdapter;->this$0:Landroidx/print/PrintHelper;

    move-object v6, v0

    iget-object v6, v6, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mAttributes:Landroid/print/PrintAttributes;

    move-object v7, v0

    iget v7, v7, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mFittingMode:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mBitmap:Landroid/graphics/Bitmap;

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v5 .. v11}, Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 319
    return-void
.end method
