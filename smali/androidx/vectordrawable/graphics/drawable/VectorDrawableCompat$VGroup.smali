.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VGroup"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field final mLocalMatrix:Landroid/graphics/Matrix;

.field private mPivotX:F

.field private mPivotY:F

.field mRotate:F

.field private mScaleX:F

.field private mScaleY:F

.field final mStackedMatrix:Landroid/graphics/Matrix;

.field private mThemeAttrs:[I

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 1491
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$1;)V

    .line 1430
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1434
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1436
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1437
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1438
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1439
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1440
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1441
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1442
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1446
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1449
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1492
    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/collection/ArrayMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1451
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, p1

    .local v1, "copy":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v2, p2

    .local v2, "targetsMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$1;)V

    .line 1430
    move-object v7, v0

    new-instance v8, Landroid/graphics/Matrix;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1434
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1436
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1437
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1438
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1439
    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1440
    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1441
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1442
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1446
    move-object v7, v0

    new-instance v8, Landroid/graphics/Matrix;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1449
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1452
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1453
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1454
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1455
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1456
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1457
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1458
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1459
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    iput-object v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    .line 1460
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1461
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    iput v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    .line 1462
    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1463
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1466
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v8, v1

    iget-object v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1468
    move-object v7, v1

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object v3, v7

    .line 1469
    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;>;"
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1470
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 1471
    .local v5, "copyChild":Ljava/lang/Object;
    move-object v7, v5

    instance-of v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v7, :cond_2

    .line 1472
    move-object v7, v5

    check-cast v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v6, v7

    .line 1473
    .local v6, "copyGroup":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    new-instance v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1474
    .line 1469
    .end local v6    # "copyGroup":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1476
    :cond_2
    move-object v7, v5

    instance-of v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    if-eqz v7, :cond_3

    .line 1477
    new-instance v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    check-cast v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    invoke-direct {v8, v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;)V

    move-object v6, v7

    .line 1483
    .local v6, "newPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1484
    move-object v7, v6

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1485
    move-object v7, v2

    move-object v8, v6

    iget-object v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1478
    .end local v6    # "newPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_3
    move-object v7, v5

    instance-of v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    if-eqz v7, :cond_4

    .line 1479
    new-instance v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    check-cast v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    invoke-direct {v8, v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;)V

    move-object v6, v7

    .restart local v6    # "newPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    goto :goto_2

    .line 1481
    .end local v6    # "newPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "Unknown object in the tree!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1489
    .end local v5    # "copyChild":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private updateLocalMatrix()V
    .locals 5

    .prologue
    .line 1548
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1549
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v2, v0

    iget v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    neg-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v1

    .line 1550
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v2, v0

    iget v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v1

    .line 1551
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v2, v0

    iget v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    move-result v1

    .line 1552
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v2, v0

    iget v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    move-object v4, v0

    iget v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v1

    .line 1553
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .prologue
    .line 1514
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, p1

    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    .line 1517
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string/jumbo v7, "rotation"

    const/4 v8, 0x5

    move-object v9, v0

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1520
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1521
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x2

    move-object v7, v0

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1524
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string/jumbo v7, "scaleX"

    const/4 v8, 0x3

    move-object v9, v0

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1528
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string/jumbo v7, "scaleY"

    const/4 v8, 0x4

    move-object v9, v0

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1531
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string/jumbo v7, "translateX"

    const/4 v8, 0x6

    move-object v9, v0

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1533
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string/jumbo v7, "translateY"

    const/4 v8, 0x7

    move-object v9, v0

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1536
    move-object v4, v1

    const/4 v5, 0x0

    .line 1537
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1538
    .local v3, "groupName":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1539
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1542
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1543
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1495
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1499
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return-object v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 1571
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return v0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 1584
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return v0
.end method

.method public getRotation()F
    .locals 2

    .prologue
    .line 1558
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return v0
.end method

.method public getScaleX()F
    .locals 2

    .prologue
    .line 1597
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return v0
.end method

.method public getScaleY()F
    .locals 2

    .prologue
    .line 1610
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return v0
.end method

.method public getTranslateX()F
    .locals 2

    .prologue
    .line 1623
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return v0
.end method

.method public getTranslateY()F
    .locals 2

    .prologue
    .line 1636
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .prologue
    .line 1503
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "theme":Landroid/content/res/Resources$Theme;
    move-object v4, p4

    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    sget-object v9, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    invoke-static {v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 1505
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v6, v0

    move-object v7, v5

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1506
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1507
    return-void
.end method

.method public isStateful()Z
    .locals 4

    .prologue
    .line 1649
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1650
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1651
    const/4 v2, 0x1

    move v0, v2

    .line 1654
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    :goto_1
    return v0

    .line 1649
    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1654
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public onStateChanged([I)Z
    .locals 7

    .prologue
    .line 1659
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v1, p1

    .local v1, "stateSet":[I
    const/4 v4, 0x0

    move v2, v4

    .line 1660
    .local v2, "changed":Z
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1661
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;->onStateChanged([I)Z

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 1660
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1663
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    return v0
.end method

.method public setPivotX(F)V
    .locals 4

    .prologue
    .line 1576
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move v1, p1

    .local v1, "pivotX":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1577
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1578
    move-object v2, v0

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1580
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 4

    .prologue
    .line 1589
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move v1, p1

    .local v1, "pivotY":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1590
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1591
    move-object v2, v0

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1593
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 4

    .prologue
    .line 1563
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move v1, p1

    .local v1, "rotation":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1564
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1565
    move-object v2, v0

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1567
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 4

    .prologue
    .line 1602
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move v1, p1

    .local v1, "scaleX":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1603
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1604
    move-object v2, v0

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1606
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 4

    .prologue
    .line 1615
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move v1, p1

    .local v1, "scaleY":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1616
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1617
    move-object v2, v0

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1619
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 4

    .prologue
    .line 1628
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move v1, p1

    .local v1, "translateX":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1629
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1630
    move-object v2, v0

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1632
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 4

    .prologue
    .line 1641
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move v1, p1

    .local v1, "translateY":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1642
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1643
    move-object v2, v0

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1645
    :cond_0
    return-void
.end method
