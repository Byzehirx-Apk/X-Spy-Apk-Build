.class Landroidx/print/PrintHelper$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/print/PrintHelper;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 11

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/print/PrintHelper;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    move-object v9, v0

    move v10, v6

    iput v10, v9, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    move-object v9, v0

    invoke-direct {v9}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroidx/print/PrintHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/print/PrintHelper$1;
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 16

    .prologue
    .line 639
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$1;
    move-object/from16 v1, p1

    .local v1, "params":[Ljava/lang/Void;
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v11}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 640
    const/4 v11, 0x0

    move-object v0, v11

    .line 715
    .end local v0    # "this":Landroidx/print/PrintHelper$1;
    :goto_0
    return-object v0

    .line 643
    .restart local v0    # "this":Landroidx/print/PrintHelper$1;
    :cond_0
    new-instance v11, Landroid/print/pdf/PrintedPdfDocument;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    iget-object v13, v13, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iget-object v13, v13, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v12, v13, v14}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    move-object v2, v11

    .line 646
    .local v2, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    move-object v11, v0

    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    move-object v12, v0

    iget-object v12, v12, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    .line 647
    invoke-virtual {v12}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v12

    .line 646
    invoke-static {v11, v12}, Landroidx/print/PrintHelper;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v3, v11

    .line 649
    .local v3, "maybeGrayscale":Landroid/graphics/Bitmap;
    move-object v11, v0

    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v11}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_1

    .line 650
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_0

    .line 654
    :cond_1
    move-object v11, v2

    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v11, v12}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v11

    move-object v4, v11

    .line 657
    .local v4, "page":Landroid/graphics/pdf/PdfDocument$Page;
    sget-boolean v11, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v11, :cond_4

    .line 658
    new-instance v11, Landroid/graphics/RectF;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v4

    invoke-virtual {v13}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object v5, v11

    .line 671
    .local v5, "contentRect":Landroid/graphics/RectF;
    :goto_1
    move-object v11, v3

    .line 672
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object v13, v5

    move-object v14, v0

    iget v14, v14, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    .line 671
    invoke-static {v11, v12, v13, v14}, Landroidx/print/PrintHelper;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v11

    move-object v6, v11

    .line 675
    .local v6, "matrix":Landroid/graphics/Matrix;
    sget-boolean v11, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v11, :cond_7

    .line 686
    :goto_2
    move-object v11, v4

    invoke-virtual {v11}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v11

    move-object v12, v3

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 689
    move-object v11, v2

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 691
    move-object v11, v0

    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v11}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_8

    .line 692
    const/4 v11, 0x0

    move-object v7, v11

    .line 700
    move-object v11, v2

    :try_start_2
    invoke-virtual {v11}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    move-object v11, v0

    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v11, :cond_2

    .line 704
    move-object v11, v0

    :try_start_3
    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 707
    .line 710
    :cond_2
    :goto_3
    move-object v11, v3

    move-object v12, v0

    :try_start_4
    iget-object v12, v12, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v11, v12, :cond_3

    .line 711
    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v11, v7

    move-object v0, v11

    goto/16 :goto_0

    .line 662
    .end local v5    # "contentRect":Landroid/graphics/RectF;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_4
    :try_start_5
    new-instance v11, Landroid/print/pdf/PrintedPdfDocument;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    iget-object v13, v13, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iget-object v13, v13, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    invoke-direct {v12, v13, v14}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    move-object v6, v11

    .line 664
    .local v6, "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    move-object v11, v6

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v11

    move-object v7, v11

    .line 665
    .local v7, "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v11, Landroid/graphics/RectF;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v7

    invoke-virtual {v13}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object v5, v11

    .line 666
    .restart local v5    # "contentRect":Landroid/graphics/RectF;
    move-object v11, v6

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 667
    move-object v11, v6

    invoke-virtual {v11}, Landroid/print/pdf/PrintedPdfDocument;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 700
    .end local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "contentRect":Landroid/graphics/RectF;
    .end local v6    # "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    .end local v7    # "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    :catchall_0
    move-exception v11

    move-object v9, v11

    move-object v11, v2

    :try_start_6
    invoke-virtual {v11}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    move-object v11, v0

    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v11, :cond_5

    .line 704
    move-object v11, v0

    :try_start_7
    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 707
    .line 710
    :cond_5
    :goto_4
    move-object v11, v3

    move-object v12, v0

    :try_start_8
    iget-object v12, v12, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v11, v12, :cond_6

    .line 711
    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    move-object v11, v9

    throw v11
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 714
    .end local v2    # "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    .end local v3    # "maybeGrayscale":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 715
    .local v2, "t":Ljava/lang/Throwable;
    move-object v11, v2

    move-object v0, v11

    goto/16 :goto_0

    .line 679
    .local v2, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    .restart local v3    # "maybeGrayscale":Landroid/graphics/Bitmap;
    .restart local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .restart local v5    # "contentRect":Landroid/graphics/RectF;
    .local v6, "matrix":Landroid/graphics/Matrix;
    :cond_7
    move-object v11, v6

    move-object v12, v5

    :try_start_9
    iget v12, v12, Landroid/graphics/RectF;->left:F

    move-object v13, v5

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v11

    .line 682
    move-object v11, v4

    invoke-virtual {v11}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v11

    goto/16 :goto_2

    .line 705
    :catch_1
    move-exception v11

    move-object v8, v11

    goto :goto_3

    .line 696
    :cond_8
    move-object v11, v2

    new-instance v12, Ljava/io/FileOutputStream;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 697
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 696
    invoke-virtual {v11, v12}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 698
    const/4 v11, 0x0

    move-object v7, v11

    .line 700
    move-object v11, v2

    :try_start_a
    invoke-virtual {v11}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    move-object v11, v0

    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v11, :cond_9

    .line 704
    move-object v11, v0

    :try_start_b
    iget-object v11, v11, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 707
    .line 710
    :cond_9
    :goto_5
    move-object v11, v3

    move-object v12, v0

    :try_start_c
    iget-object v12, v12, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v11, v12, :cond_a

    .line 711
    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :cond_a
    move-object v11, v7

    move-object v0, v11

    goto/16 :goto_0

    .line 705
    :catch_2
    move-exception v11

    move-object v8, v11

    goto :goto_5

    .end local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "contentRect":Landroid/graphics/RectF;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :catch_3
    move-exception v11

    move-object v10, v11

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Landroidx/print/PrintHelper$1;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$1;
    move-object v1, p1

    .local v1, "throwable":Ljava/lang/Throwable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    move-object v2, v0

    iget-object v2, v2, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v2}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    .line 733
    :goto_0
    return-void

    .line 724
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    .line 726
    move-object v2, v0

    iget-object v2, v2, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/print/PageRange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_0

    .line 730
    :cond_1
    const-string/jumbo v2, "PrintHelper"

    const-string/jumbo v3, "Error writing printed content"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 731
    move-object v2, v0

    iget-object v2, v2, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
