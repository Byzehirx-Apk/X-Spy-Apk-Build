.class public final Landroidx/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/print/PrintHelper$PrintUriAdapter;,
        Landroidx/print/PrintHelper$PrintBitmapAdapter;,
        Landroidx/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final COLOR_MODE_MONOCHROME:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field static final IS_MIN_MARGINS_HANDLING_CORRECT:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelper"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field static final PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 139
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 140
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    .line 143
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroidx/print/PrintHelper;->mScaleMode:I

    .line 144
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroidx/print/PrintHelper;->mColorMode:I

    .line 145
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/print/PrintHelper;->mOrientation:I

    .line 163
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method

.method static convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "original":Landroid/graphics/Bitmap;
    move v1, p1

    .local v1, "colorMode":I
    move v7, v1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 817
    move-object v7, v0

    move-object v0, v7

    .line 831
    .end local v0    # "original":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 820
    .restart local v0    # "original":Landroid/graphics/Bitmap;
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v2, v7

    .line 822
    .local v2, "grayscale":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v7

    .line 823
    .local v3, "c":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    move-object v4, v7

    .line 824
    .local v4, "p":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/ColorMatrix;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/ColorMatrix;-><init>()V

    move-object v5, v7

    .line 825
    .local v5, "cm":Landroid/graphics/ColorMatrix;
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 826
    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    invoke-direct {v8, v9}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object v6, v7

    .line 827
    .local v6, "f":Landroid/graphics/ColorMatrixColorFilter;
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v7

    .line 828
    move-object v7, v3

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 829
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 831
    move-object v7, v2

    move-object v0, v7

    goto :goto_0
.end method

.method private static copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "other":Landroid/print/PrintAttributes;
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    move-object v3, v0

    .line 559
    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v2

    move-object v3, v0

    .line 560
    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v2

    move-object v3, v0

    .line 561
    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v2

    move-object v1, v2

    .line 563
    .local v1, "b":Landroid/print/PrintAttributes$Builder;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v2

    .line 567
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 568
    move-object v2, v0

    invoke-virtual {v2}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 569
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v2

    .line 573
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "other":Landroid/print/PrintAttributes;
    return-object v0
.end method

.method static getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 12

    .prologue
    .line 589
    move v0, p0

    .local v0, "imageWidth":I
    move v1, p1

    .local v1, "imageHeight":I
    move-object v2, p2

    .local v2, "content":Landroid/graphics/RectF;
    move v3, p3

    .local v3, "fittingMode":I
    new-instance v8, Landroid/graphics/Matrix;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move-object v4, v8

    .line 592
    .local v4, "matrix":Landroid/graphics/Matrix;
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    move v9, v0

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v5, v8

    .line 593
    .local v5, "scale":F
    move v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 594
    move v8, v5

    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    move v10, v1

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move v5, v8

    .line 598
    :goto_0
    move-object v8, v4

    move v9, v5

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v8

    .line 601
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    move v9, v0

    int-to-float v9, v9

    move v10, v5

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move v6, v8

    .line 603
    .local v6, "translateX":F
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    move v9, v1

    int-to-float v9, v9

    move v10, v5

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move v7, v8

    .line 605
    .local v7, "translateY":F
    move-object v8, v4

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v8

    .line 606
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "imageWidth":I
    return-object v0

    .line 596
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    .restart local v0    # "imageWidth":I
    :cond_0
    move v8, v5

    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    move v10, v1

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    move v5, v8

    goto :goto_0
.end method

.method static isPortrait(Landroid/graphics/Bitmap;)Z
    .locals 3

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    return v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    if-nez v8, :cond_1

    .line 797
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "bad argument to loadBitmap"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 799
    :cond_1
    const/4 v8, 0x0

    move-object v3, v8

    .line 801
    .local v3, "is":Ljava/io/InputStream;
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    move-object v3, v8

    .line 802
    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v2

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object v4, v8

    .line 804
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 806
    move-object v8, v3

    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 809
    :cond_2
    :goto_0
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Landroidx/print/PrintHelper;
    return-object v0

    .line 807
    .restart local v0    # "this":Landroidx/print/PrintHelper;
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 808
    .local v5, "t":Ljava/io/IOException;
    const-string/jumbo v8, "PrintHelper"

    const-string/jumbo v9, "close fail "

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_0

    .line 804
    .end local v5    # "t":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v3

    if-eqz v8, :cond_3

    .line 806
    move-object v8, v3

    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 809
    :cond_3
    :goto_1
    move-object v8, v6

    throw v8

    .line 807
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 808
    .local v7, "t":Ljava/io/IOException;
    const-string/jumbo v8, "PrintHelper"

    const-string/jumbo v9, "close fail "

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_1
.end method

.method public static systemSupportsPrint()Z
    .locals 2

    .prologue
    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getColorMode()I
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/print/PrintHelper;->mColorMode:I

    move v0, v1

    .end local v0    # "this":Landroidx/print/PrintHelper;
    return v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/print/PrintHelper;->mOrientation:I

    if-nez v1, :cond_0

    .line 233
    const/4 v1, 0x1

    move v0, v1

    .line 235
    .end local v0    # "this":Landroidx/print/PrintHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/print/PrintHelper;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/print/PrintHelper;->mOrientation:I

    move v0, v1

    goto :goto_0
.end method

.method public getScaleMode()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/print/PrintHelper;->mScaleMode:I

    move v0, v1

    .end local v0    # "this":Landroidx/print/PrintHelper;
    return v0
.end method

.method loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 746
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object/from16 v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v14, v1

    if-eqz v14, :cond_0

    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    if-nez v14, :cond_1

    .line 747
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string/jumbo v16, "bad argument to getScaledBitmap"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 750
    :cond_1
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v14

    .line 751
    .local v2, "opt":Landroid/graphics/BitmapFactory$Options;
    move-object v14, v2

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 752
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v16}, Landroidx/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 754
    move-object v14, v2

    iget v14, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v3, v14

    .line 755
    .local v3, "w":I
    move-object v14, v2

    iget v14, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v4, v14

    .line 758
    .local v4, "h":I
    move v14, v3

    if-lez v14, :cond_2

    move v14, v4

    if-gtz v14, :cond_3

    .line 759
    :cond_2
    const/4 v14, 0x0

    move-object v0, v14

    .line 787
    .end local v0    # "this":Landroidx/print/PrintHelper;
    :goto_0
    return-object v0

    .line 763
    .restart local v0    # "this":Landroidx/print/PrintHelper;
    :cond_3
    move v14, v3

    move v15, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v5, v14

    .line 765
    .local v5, "imageSide":I
    const/4 v14, 0x1

    move v6, v14

    .line 766
    .local v6, "sampleSize":I
    :goto_1
    move v14, v5

    const/16 v15, 0xdac

    if-le v14, v15, :cond_4

    .line 767
    move v14, v5

    const/4 v15, 0x1

    ushr-int/lit8 v14, v14, 0x1

    move v5, v14

    .line 768
    move v14, v6

    const/4 v15, 0x1

    shl-int/lit8 v14, v14, 0x1

    move v6, v14

    goto :goto_1

    .line 772
    :cond_4
    move v14, v6

    if-lez v14, :cond_5

    const/4 v14, 0x0

    move v15, v3

    move/from16 v16, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move/from16 v16, v6

    div-int v15, v15, v16

    if-lt v14, v15, :cond_6

    .line 773
    :cond_5
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_0

    .line 776
    :cond_6
    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object v8, v15

    monitor-enter v14

    .line 777
    move-object v14, v0

    :try_start_0
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v15, v14, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 778
    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 779
    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    move v15, v6

    iput v15, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 780
    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v14

    .line 781
    .local v7, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    move-object v14, v8

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v7

    :try_start_1
    invoke-direct/range {v14 .. v16}, Landroidx/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v14

    move-object v8, v14

    .line 785
    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object v9, v15

    monitor-enter v14

    .line 786
    move-object v14, v0

    const/4 v15, 0x0

    :try_start_2
    iput-object v15, v14, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    move-object v14, v9

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v14, v8

    move-object v0, v14

    goto :goto_0

    .line 781
    .end local v7    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v14

    move-object v9, v14

    move-object v14, v8

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v9

    throw v14

    .line 787
    .restart local v7    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v14

    move-object v10, v14

    move-object v14, v9

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v14, v10

    throw v14

    .line 785
    :catchall_2
    move-exception v14

    move-object v11, v14

    move-object v14, v0

    iget-object v14, v14, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object v12, v15

    monitor-enter v14

    .line 786
    move-object v14, v0

    const/4 v15, 0x0

    :try_start_5
    iput-object v15, v14, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    move-object v14, v12

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v14, v11

    throw v14

    :catchall_3
    move-exception v14

    move-object v13, v14

    move-object v14, v12

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v14, v13

    throw v14
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object v1, p1

    .local v1, "jobName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    .line 247
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/print/PrintHelper$OnPrintFinishCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object/from16 v1, p1

    .local v1, "jobName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v3, p3

    .local v3, "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_0

    move-object v7, v2

    if-nez v7, :cond_1

    .line 259
    .line 277
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "print"

    .line 263
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/print/PrintManager;

    move-object v4, v7

    .line 265
    .local v4, "printManager":Landroid/print/PrintManager;
    move-object v7, v2

    invoke-static {v7}, Landroidx/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 266
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    move-object v5, v7

    .line 270
    .local v5, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_1
    new-instance v7, Landroid/print/PrintAttributes$Builder;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Landroid/print/PrintAttributes$Builder;-><init>()V

    move-object v8, v5

    .line 271
    invoke-virtual {v7, v8}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroidx/print/PrintHelper;->mColorMode:I

    .line 272
    invoke-virtual {v7, v8}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v7

    .line 273
    invoke-virtual {v7}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v7

    move-object v6, v7

    .line 275
    .local v6, "attr":Landroid/print/PrintAttributes;
    move-object v7, v4

    move-object v8, v1

    new-instance v9, Landroidx/print/PrintHelper$PrintBitmapAdapter;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object v12, v1

    move-object v13, v0

    iget v13, v13, Landroidx/print/PrintHelper;->mScaleMode:I

    move-object v14, v2

    move-object v15, v3

    invoke-direct/range {v10 .. v15}, Landroidx/print/PrintHelper$PrintBitmapAdapter;-><init>(Landroidx/print/PrintHelper;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    move-result-object v7

    .line 277
    goto :goto_0

    .line 268
    .end local v5    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    :cond_2
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    move-object v5, v7

    .restart local v5    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    goto :goto_1
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object v1, p1

    .local v1, "jobName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "imageFile":Landroid/net/Uri;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    .line 341
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/print/PrintHelper$OnPrintFinishCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 356
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object/from16 v1, p1

    .local v1, "jobName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "imageFile":Landroid/net/Uri;
    move-object/from16 v3, p3

    .local v3, "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-ge v8, v9, :cond_0

    .line 357
    .line 376
    :goto_0
    return-void

    .line 360
    :cond_0
    new-instance v8, Landroidx/print/PrintHelper$PrintUriAdapter;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v0

    iget v14, v14, Landroidx/print/PrintHelper;->mScaleMode:I

    invoke-direct/range {v9 .. v14}, Landroidx/print/PrintHelper$PrintUriAdapter;-><init>(Landroidx/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;I)V

    move-object v4, v8

    .line 363
    .local v4, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    move-object v8, v0

    iget-object v8, v8, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "print"

    .line 364
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    move-object v5, v8

    .line 365
    .local v5, "printManager":Landroid/print/PrintManager;
    new-instance v8, Landroid/print/PrintAttributes$Builder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroid/print/PrintAttributes$Builder;-><init>()V

    move-object v6, v8

    .line 366
    .local v6, "builder":Landroid/print/PrintAttributes$Builder;
    move-object v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/print/PrintHelper;->mColorMode:I

    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v8

    .line 368
    move-object v8, v0

    iget v8, v8, Landroidx/print/PrintHelper;->mOrientation:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    move-object v8, v0

    iget v8, v8, Landroidx/print/PrintHelper;->mOrientation:I

    if-nez v8, :cond_3

    .line 369
    :cond_1
    move-object v8, v6

    sget-object v9, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v8

    .line 373
    :cond_2
    :goto_1
    move-object v8, v6

    invoke-virtual {v8}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v8

    move-object v7, v8

    .line 375
    .local v7, "attr":Landroid/print/PrintAttributes;
    move-object v8, v5

    move-object v9, v1

    move-object v10, v4

    move-object v11, v7

    invoke-virtual {v8, v9, v10, v11}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    move-result-object v8

    .line 376
    goto :goto_0

    .line 370
    .end local v7    # "attr":Landroid/print/PrintAttributes;
    :cond_3
    move-object v8, v0

    iget v8, v8, Landroidx/print/PrintHelper;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 371
    move-object v8, v6

    sget-object v9, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v8

    goto :goto_1
.end method

.method public setColorMode(I)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move v1, p1

    .local v1, "colorMode":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/print/PrintHelper;->mColorMode:I

    .line 200
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move v1, p1

    .local v1, "orientation":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/print/PrintHelper;->mOrientation:I

    .line 222
    return-void
.end method

.method public setScaleMode(I)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move v1, p1

    .local v1, "scaleMode":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/print/PrintHelper;->mScaleMode:I

    .line 177
    return-void
.end method

.method writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 19
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 626
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/print/PrintHelper;
    move-object/from16 v1, p1

    .local v1, "attributes":Landroid/print/PrintAttributes;
    move/from16 v2, p2

    .local v2, "fittingMode":I
    move-object/from16 v3, p3

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v4, p4

    .local v4, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v5, p5

    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v6, p6

    .local v6, "writeResultCallback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    sget-boolean v8, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v8, :cond_0

    .line 627
    move-object v8, v1

    move-object v7, v8

    .line 635
    .local v7, "pdfAttributes":Landroid/print/PrintAttributes;
    :goto_0
    new-instance v8, Landroidx/print/PrintHelper$1;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v0

    move-object v11, v5

    move-object v12, v7

    move-object v13, v3

    move-object v14, v1

    move v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    invoke-direct/range {v9 .. v17}, Landroidx/print/PrintHelper$1;-><init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    .line 734
    invoke-virtual {v8, v9}, Landroidx/print/PrintHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    .line 735
    return-void

    .line 631
    .end local v7    # "pdfAttributes":Landroid/print/PrintAttributes;
    :cond_0
    move-object v8, v1

    invoke-static {v8}, Landroidx/print/PrintHelper;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v8

    new-instance v9, Landroid/print/PrintAttributes$Margins;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 632
    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v8

    move-object v7, v8

    .restart local v7    # "pdfAttributes":Landroid/print/PrintAttributes;
    goto :goto_0
.end method
