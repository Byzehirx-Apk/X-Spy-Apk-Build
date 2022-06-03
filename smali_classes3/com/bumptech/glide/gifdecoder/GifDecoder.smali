.class public Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TOTAL_ITERATION_COUNT_FOREVER:I


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final block:[B

.field private data:[B

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private final pct:[I

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, p1

    .local v1, "provider":Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 117
    move-object v2, v0

    const/16 v3, 0x100

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    .line 123
    move-object v2, v0

    const/16 v3, 0x100

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    .line 164
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 165
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 166
    return-void
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 27

    .prologue
    .line 591
    move-object/from16 v2, p0

    .local v2, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object/from16 v3, p1

    .local v3, "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    move-object/from16 v22, v3

    if-eqz v22, :cond_0

    .line 593
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v22

    .line 596
    :cond_0
    move-object/from16 v22, v3

    if-nez v22, :cond_6

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    :goto_0
    move/from16 v4, v22

    .line 600
    .local v4, "npix":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 602
    :cond_1
    move-object/from16 v22, v2

    move/from16 v23, v4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 604
    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 605
    move-object/from16 v22, v2

    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    .line 607
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 608
    move-object/from16 v22, v2

    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    .line 610
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 611
    move-object/from16 v22, v2

    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    .line 615
    :cond_5
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v22

    move/from16 v17, v22

    .line 616
    .local v17, "dataSize":I
    const/16 v22, 0x1

    move/from16 v23, v17

    shl-int v22, v22, v23

    move/from16 v6, v22

    .line 617
    .local v6, "clear":I
    move/from16 v22, v6

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v9, v22

    .line 618
    .local v9, "endOfInformation":I
    move/from16 v22, v6

    const/16 v23, 0x2

    add-int/lit8 v22, v22, 0x2

    move/from16 v5, v22

    .line 619
    .local v5, "available":I
    const/16 v22, -0x1

    move/from16 v11, v22

    .line 620
    .local v11, "oldCode":I
    move/from16 v22, v17

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v8, v22

    .line 621
    .local v8, "codeSize":I
    const/16 v22, 0x1

    move/from16 v23, v8

    shl-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v7, v22

    .line 622
    .local v7, "codeMask":I
    const/16 v22, 0x0

    move/from16 v13, v22

    .local v13, "code":I
    :goto_1
    move/from16 v22, v13

    move/from16 v23, v6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 624
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    move/from16 v23, v13

    const/16 v24, 0x0

    aput-short v24, v22, v23

    .line 625
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    move/from16 v23, v13

    move/from16 v24, v13

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v22, v23

    .line 622
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 596
    .end local v4    # "npix":I
    .end local v5    # "available":I
    .end local v6    # "clear":I
    .end local v7    # "codeMask":I
    .end local v8    # "codeSize":I
    .end local v9    # "endOfInformation":I
    .end local v11    # "oldCode":I
    .end local v13    # "code":I
    .end local v17    # "dataSize":I
    :cond_6
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    goto/16 :goto_0

    .line 629
    .restart local v4    # "npix":I
    .restart local v5    # "available":I
    .restart local v6    # "clear":I
    .restart local v7    # "codeMask":I
    .restart local v8    # "codeSize":I
    .restart local v9    # "endOfInformation":I
    .restart local v11    # "oldCode":I
    .restart local v13    # "code":I
    .restart local v17    # "dataSize":I
    :cond_7
    const/16 v22, 0x0

    move/from16 v26, v22

    move/from16 v22, v26

    move/from16 v23, v26

    move/from16 v20, v23

    .local v20, "bi":I
    move/from16 v26, v22

    move/from16 v22, v26

    move/from16 v23, v26

    move/from16 v21, v23

    .local v21, "pi":I
    move/from16 v26, v22

    move/from16 v22, v26

    move/from16 v23, v26

    move/from16 v19, v23

    .local v19, "top":I
    move/from16 v26, v22

    move/from16 v22, v26

    move/from16 v23, v26

    move/from16 v18, v23

    .local v18, "first":I
    move/from16 v26, v22

    move/from16 v22, v26

    move/from16 v23, v26

    move/from16 v14, v23

    .local v14, "count":I
    move/from16 v26, v22

    move/from16 v22, v26

    move/from16 v23, v26

    move/from16 v12, v23

    .local v12, "bits":I
    move/from16 v16, v22

    .line 630
    .local v16, "datum":I
    const/16 v22, 0x0

    move/from16 v15, v22

    .local v15, "i":I
    :cond_8
    :goto_2
    move/from16 v22, v15

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 632
    move/from16 v22, v14

    if-nez v22, :cond_b

    .line 634
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->readBlock()I

    move-result v22

    move/from16 v14, v22

    .line 635
    move/from16 v22, v14

    if-gtz v22, :cond_a

    .line 636
    move-object/from16 v22, v2

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 637
    .line 712
    :cond_9
    move/from16 v22, v21

    move/from16 v15, v22

    :goto_3
    move/from16 v22, v15

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_14

    .line 713
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    move/from16 v23, v15

    const/16 v24, 0x0

    aput-byte v24, v22, v23

    .line 712
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 639
    :cond_a
    const/16 v22, 0x0

    move/from16 v20, v22

    .line 642
    :cond_b
    move/from16 v22, v16

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    move-object/from16 v23, v0

    move/from16 v24, v20

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v24, v12

    shl-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v16, v22

    .line 643
    add-int/lit8 v12, v12, 0x8

    .line 644
    add-int/lit8 v20, v20, 0x1

    .line 645
    add-int/lit8 v14, v14, -0x1

    .line 647
    :cond_c
    :goto_4
    move/from16 v22, v12

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    .line 649
    move/from16 v22, v16

    move/from16 v23, v7

    and-int v22, v22, v23

    move/from16 v13, v22

    .line 650
    move/from16 v22, v16

    move/from16 v23, v8

    shr-int v22, v22, v23

    move/from16 v16, v22

    .line 651
    move/from16 v22, v12

    move/from16 v23, v8

    sub-int v22, v22, v23

    move/from16 v12, v22

    .line 654
    move/from16 v22, v13

    move/from16 v23, v6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 656
    move/from16 v22, v17

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v8, v22

    .line 657
    const/16 v22, 0x1

    move/from16 v23, v8

    shl-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v7, v22

    .line 658
    move/from16 v22, v6

    const/16 v23, 0x2

    add-int/lit8 v22, v22, 0x2

    move/from16 v5, v22

    .line 659
    const/16 v22, -0x1

    move/from16 v11, v22

    .line 660
    goto :goto_4

    .line 663
    :cond_d
    move/from16 v22, v13

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    .line 664
    move-object/from16 v22, v2

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 665
    goto/16 :goto_2

    .line 668
    :cond_e
    move/from16 v22, v13

    move/from16 v23, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 669
    goto/16 :goto_2

    .line 672
    :cond_f
    move/from16 v22, v11

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 673
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    move/from16 v23, v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    move/from16 v25, v13

    aget-byte v24, v24, v25

    aput-byte v24, v22, v23

    .line 674
    move/from16 v22, v13

    move/from16 v11, v22

    .line 675
    move/from16 v22, v13

    move/from16 v18, v22

    .line 676
    goto/16 :goto_4

    .line 678
    :cond_10
    move/from16 v22, v13

    move/from16 v10, v22

    .line 679
    .local v10, "inCode":I
    move/from16 v22, v13

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_11

    .line 680
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    move/from16 v23, v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v24, v18

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v22, v23

    .line 681
    move/from16 v22, v11

    move/from16 v13, v22

    .line 683
    :cond_11
    :goto_5
    move/from16 v22, v13

    move/from16 v23, v6

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_12

    .line 684
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    move/from16 v23, v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    move/from16 v25, v13

    aget-byte v24, v24, v25

    aput-byte v24, v22, v23

    .line 685
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-short v22, v22, v23

    move/from16 v13, v22

    goto :goto_5

    .line 687
    :cond_12
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    move/from16 v23, v13

    aget-byte v22, v22, v23

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v18, v22

    .line 688
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    move/from16 v23, v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v24, v18

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v22, v23

    .line 691
    move/from16 v22, v5

    const/16 v23, 0x1000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_13

    .line 692
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    move/from16 v23, v5

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v22, v23

    .line 693
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    move/from16 v23, v5

    move/from16 v24, v18

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v22, v23

    .line 694
    add-int/lit8 v5, v5, 0x1

    .line 695
    move/from16 v22, v5

    move/from16 v23, v7

    and-int v22, v22, v23

    if-nez v22, :cond_13

    move/from16 v22, v5

    const/16 v23, 0x1000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_13

    .line 696
    add-int/lit8 v8, v8, 0x1

    .line 697
    move/from16 v22, v7

    move/from16 v23, v5

    add-int v22, v22, v23

    move/from16 v7, v22

    .line 700
    :cond_13
    move/from16 v22, v10

    move/from16 v11, v22

    .line 702
    :goto_6
    move/from16 v22, v19

    if-lez v22, :cond_c

    .line 704
    add-int/lit8 v19, v19, -0x1

    .line 705
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    move/from16 v23, v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    move/from16 v25, v19

    aget-byte v24, v24, v25

    aput-byte v24, v22, v23

    .line 706
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 715
    .end local v10    # "inCode":I
    :cond_14
    return-void
.end method

.method private getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 5

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    if-nez v1, :cond_0

    .line 435
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 437
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-interface {v2, v3, v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    .line 757
    .local v1, "result":Landroid/graphics/Bitmap;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 758
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    .line 760
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    .line 761
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return-object v0
.end method

.method private read()I
    .locals 5

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    const/4 v3, 0x0

    move v1, v3

    .line 723
    .local v1, "curByte":I
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v1, v3

    .line 726
    .line 727
    :goto_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0

    .line 724
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 725
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 8

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v4

    move v1, v4

    .line 737
    .local v1, "blockSize":I
    const/4 v4, 0x0

    move v2, v4

    .line 738
    .local v2, "n":I
    move v4, v1

    if-lez v4, :cond_0

    .line 741
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 742
    move v4, v1

    move v5, v2

    sub-int/2addr v4, v5

    move v3, v4

    .line 743
    .local v3, "count":I
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 745
    move v4, v2

    move v5, v3

    add-int/2addr v4, v5

    move v2, v4

    goto :goto_0

    .line 750
    .line 752
    .end local v3    # "count":I
    :cond_0
    :goto_1
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0

    .line 747
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .restart local v3    # "count":I
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 748
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error Reading Block"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 749
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_1
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 767
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 769
    :cond_0
    return-void
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 27

    .prologue
    .line 477
    move-object/from16 v2, p0

    .local v2, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object/from16 v3, p1

    .local v3, "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    move-object/from16 v4, p2

    .local v4, "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move/from16 v19, v0

    move/from16 v5, v19

    .line 478
    .local v5, "width":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    move/from16 v19, v0

    move/from16 v6, v19

    .line 481
    .local v6, "height":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .line 484
    .local v7, "dest":[I
    move-object/from16 v19, v4

    if-nez v19, :cond_0

    .line 485
    move-object/from16 v19, v7

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->fill([II)V

    .line 489
    :cond_0
    move-object/from16 v19, v4

    if-eqz v19, :cond_3

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 492
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 494
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 495
    .local v8, "c":I
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 496
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    move/from16 v19, v0

    move/from16 v8, v19

    .line 497
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    move/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 498
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 502
    :cond_1
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    move/from16 v19, v0

    move/from16 v20, v5

    mul-int v19, v19, v20

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v9, v19

    .line 503
    .local v9, "topLeft":I
    move/from16 v19, v9

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    move/from16 v20, v0

    move/from16 v21, v5

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v10, v19

    .line 504
    .local v10, "bottomLeft":I
    move/from16 v19, v9

    move/from16 v11, v19

    .local v11, "left":I
    :goto_0
    move/from16 v19, v11

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 505
    move/from16 v19, v11

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v12, v19

    .line 506
    .local v12, "right":I
    move/from16 v19, v11

    move/from16 v13, v19

    .local v13, "pointer":I
    :goto_1
    move/from16 v19, v13

    move/from16 v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 507
    move-object/from16 v19, v7

    move/from16 v20, v13

    move/from16 v21, v8

    aput v21, v19, v20

    .line 506
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 504
    :cond_2
    move/from16 v19, v11

    move/from16 v20, v5

    add-int v19, v19, v20

    move/from16 v11, v19

    goto :goto_0

    .line 510
    .line 517
    .end local v8    # "c":I
    .end local v9    # "topLeft":I
    .end local v10    # "bottomLeft":I
    .end local v11    # "left":I
    .end local v12    # "right":I
    .end local v13    # "pointer":I
    :cond_3
    :goto_2
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    .line 520
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 521
    .local v8, "pass":I
    const/16 v19, 0x8

    move/from16 v9, v19

    .line 522
    .local v9, "inc":I
    const/16 v19, 0x0

    move/from16 v10, v19

    .line 523
    .local v10, "iline":I
    const/16 v19, 0x0

    move/from16 v11, v19

    .local v11, "i":I
    :goto_3
    move/from16 v19, v11

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 524
    move/from16 v19, v11

    move/from16 v12, v19

    .line 525
    .local v12, "line":I
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 526
    move/from16 v19, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 527
    add-int/lit8 v8, v8, 0x1

    .line 528
    move/from16 v19, v8

    packed-switch v19, :pswitch_data_0

    .line 544
    :cond_4
    :goto_4
    move/from16 v19, v10

    move/from16 v12, v19

    .line 545
    move/from16 v19, v10

    move/from16 v20, v9

    add-int v19, v19, v20

    move/from16 v10, v19

    .line 547
    :cond_5
    move/from16 v19, v12

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v12, v19

    .line 548
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 549
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move/from16 v13, v19

    .line 551
    .local v13, "k":I
    move/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v14, v19

    .line 553
    .local v14, "dx":I
    move/from16 v19, v14

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v15, v19

    .line 554
    .local v15, "dlim":I
    move/from16 v19, v13

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 556
    move/from16 v19, v13

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v15, v19

    .line 559
    :cond_6
    move/from16 v19, v11

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move/from16 v16, v19

    .line 560
    .local v16, "sx":I
    :goto_5
    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 562
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v19, v0

    move/from16 v20, v16

    add-int/lit8 v16, v16, 0x1

    aget-byte v19, v19, v20

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v17, v19

    .line 563
    .local v17, "index":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    move-object/from16 v19, v0

    move/from16 v20, v17

    aget v19, v19, v20

    move/from16 v18, v19

    .line 564
    .local v18, "c":I
    move/from16 v19, v18

    if-eqz v19, :cond_7

    .line 565
    move-object/from16 v19, v7

    move/from16 v20, v14

    move/from16 v21, v18

    aput v21, v19, v20

    .line 567
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 568
    goto :goto_5

    .line 510
    .end local v8    # "pass":I
    .end local v9    # "inc":I
    .end local v10    # "iline":I
    .end local v11    # "i":I
    .end local v12    # "line":I
    .end local v13    # "k":I
    .end local v14    # "dx":I
    .end local v15    # "dlim":I
    .end local v16    # "sx":I
    .end local v17    # "index":I
    .end local v18    # "c":I
    :cond_8
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 512
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    const/16 v21, 0x0

    move/from16 v22, v5

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v25, v5

    move/from16 v26, v6

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto/16 :goto_2

    .line 530
    .restart local v8    # "pass":I
    .restart local v9    # "inc":I
    .restart local v10    # "iline":I
    .restart local v11    # "i":I
    .restart local v12    # "line":I
    :pswitch_0
    const/16 v19, 0x4

    move/from16 v10, v19

    .line 531
    goto/16 :goto_4

    .line 533
    :pswitch_1
    const/16 v19, 0x2

    move/from16 v10, v19

    .line 534
    const/16 v19, 0x4

    move/from16 v9, v19

    .line 535
    goto/16 :goto_4

    .line 537
    :pswitch_2
    const/16 v19, 0x1

    move/from16 v10, v19

    .line 538
    const/16 v19, 0x2

    move/from16 v9, v19

    .line 539
    goto/16 :goto_4

    .line 523
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 573
    .end local v12    # "line":I
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 575
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-nez v19, :cond_c

    .line 576
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 578
    :cond_c
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    const/16 v21, 0x0

    move/from16 v22, v5

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v25, v5

    move/from16 v26, v6

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 582
    :cond_d
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v11, v19

    .line 583
    .local v11, "result":Landroid/graphics/Bitmap;
    move-object/from16 v19, v11

    move-object/from16 v20, v7

    const/16 v21, 0x0

    move/from16 v22, v5

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v25, v5

    move/from16 v26, v6

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 584
    move-object/from16 v19, v11

    move-object/from16 v2, v19

    .end local v2    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return-object v2

    .line 528
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public advance()V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 197
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 398
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 399
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 400
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 401
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 402
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 404
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 405
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 406
    return-void
.end method

.method public getCurrentFrameIndex()I
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0
.end method

.method public getData()[B
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return-object v0
.end method

.method public getDelay(I)I
    .locals 5

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move v1, p1

    .local v1, "n":I
    const/4 v3, -0x1

    move v2, v3

    .line 207
    .local v2, "delay":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge v3, v4, :cond_0

    .line 208
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    move v2, v3

    .line 210
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0
.end method

.method public getFrameCount()I
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0
.end method

.method public getLoopCount()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 256
    const/4 v1, 0x1

    move v0, v1

    .line 258
    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    move v0, v1

    goto :goto_0
.end method

.method public getNetscapeLoopCount()I
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0
.end method

.method public getNextDelay()I
    .locals 3

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v1, :cond_1

    .line 218
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    .line 221
    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v9, p0

    monitor-enter v9

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v4, :cond_2

    .line 315
    :cond_0
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to decode frame, frameCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " framePointer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 318
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 320
    :cond_2
    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 321
    :cond_3
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to decode frame, status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 324
    :cond_4
    const/4 v4, 0x0

    move-object v0, v4

    .line 356
    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .local v1, "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .local v2, "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .local v3, "previousIndex":I
    :goto_0
    monitor-exit v9

    return-object v0

    .line 326
    .end local v1    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v2    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v3    # "previousIndex":I
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :cond_5
    move-object v4, v0

    const/4 v5, 0x0

    :try_start_1
    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 328
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v1, v4

    .line 329
    .restart local v1    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    const/4 v4, 0x0

    move-object v2, v4

    .line 330
    .restart local v2    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .line 331
    .restart local v3    # "previousIndex":I
    move v4, v3

    if-ltz v4, :cond_6

    .line 332
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v2, v4

    .line 336
    :cond_6
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v5, :cond_8

    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    :goto_1
    iput-object v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 337
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    if-nez v4, :cond_9

    .line 338
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 339
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "No Valid Color Table"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 342
    :cond_7
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 343
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 336
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    goto :goto_1

    .line 346
    :cond_9
    move-object v4, v1

    iget-boolean v4, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v4, :cond_a

    .line 348
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    iput-object v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 352
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    move-object v5, v1

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 356
    :cond_a
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 314
    .end local v1    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v2    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v3    # "previousIndex":I
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    throw v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0
.end method

.method public getTotalIterationCount()I
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 300
    const/4 v1, 0x1

    move v0, v1

    .line 305
    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :goto_0
    return v0

    .line 302
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    if-nez v1, :cond_1

    .line 303
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 305
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 12

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move v2, p2

    .local v2, "contentLength":I
    move-object v7, v1

    if-eqz v7, :cond_3

    .line 368
    move v7, v2

    if-lez v7, :cond_0

    move v7, v2

    const/16 v8, 0x1000

    add-int/lit16 v7, v7, 0x1000

    :goto_0
    move v3, v7

    .line 369
    .local v3, "capacity":I
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move v9, v3

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v4, v7

    .line 371
    .local v4, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x4000

    new-array v7, v7, [B

    move-object v6, v7

    .line 372
    .local v6, "data":[B
    :goto_1
    move-object v7, v1

    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v6

    array-length v10, v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v11, v7

    move v7, v11

    move v8, v11

    move v5, v8

    .local v5, "nRead":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 373
    move-object v7, v4

    move-object v8, v6

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 368
    .end local v3    # "capacity":I
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "nRead":I
    .end local v6    # "data":[B
    :cond_0
    const/16 v7, 0x4000

    goto :goto_0

    .line 375
    .restart local v3    # "capacity":I
    .restart local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "nRead":I
    .restart local v6    # "data":[B
    :cond_1
    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 377
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 380
    .line 386
    .end local v3    # "capacity":I
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "nRead":I
    .end local v6    # "data":[B
    :goto_2
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 387
    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    .line 393
    :cond_2
    :goto_3
    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    move v0, v7

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0

    .line 378
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .restart local v3    # "capacity":I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 379
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error reading data from stream"

    move-object v9, v3

    invoke-static {v7, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 380
    goto :goto_2

    .line 382
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    move-object v7, v0

    const/4 v8, 0x2

    iput v8, v7, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_2

    .line 389
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 390
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error closing stream"

    move-object v9, v3

    invoke-static {v7, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    goto :goto_3
.end method

.method public read([B)I
    .locals 7

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, p1

    .local v1, "data":[B
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 448
    move-object v4, v0

    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v5

    iput-object v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 449
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 451
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 452
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    .line 453
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 456
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 457
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v5, v6

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 460
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 461
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v3, v4

    .line 462
    .local v3, "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    move-object v4, v3

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 463
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 464
    .line 469
    .end local v3    # "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    move v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    return v0

    .line 466
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .restart local v3    # "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_1
    goto :goto_0
.end method

.method public resetFrameIndex()V
    .locals 3

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 244
    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 8

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v1, p1

    .local v1, "header":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object v2, p2

    .local v2, "data":[B
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 410
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 411
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 412
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 414
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 415
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    .line 416
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 420
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 421
    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v4, v5

    .line 422
    .local v4, "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    move-object v5, v4

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 423
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 424
    .line 429
    .end local v4    # "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move-object v7, v1

    iget v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v6, v7

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 430
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move-object v7, v1

    iget v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v6, v7

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 431
    return-void

    .line 426
    .restart local v4    # "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_1
    goto :goto_0
.end method
