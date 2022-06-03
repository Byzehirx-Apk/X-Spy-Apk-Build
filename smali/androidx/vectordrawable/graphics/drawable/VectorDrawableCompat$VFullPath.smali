.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# static fields
.field private static final FILL_TYPE_WINDING:I


# instance fields
.field mFillAlpha:F

.field mFillColor:Landroidx/core/content/res/ComplexColorCompat;

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1817
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1802
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1805
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1807
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1808
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1809
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1810
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1811
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1813
    move-object v1, v0

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1814
    move-object v1, v0

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1815
    move-object v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1819
    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;)V
    .locals 4

    .prologue
    .line 1822
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, p1

    .local v1, "copy":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1802
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1805
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1807
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1808
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1809
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1810
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1811
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1813
    move-object v2, v0

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1814
    move-object v2, v0

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1815
    move-object v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1823
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1825
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1826
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1827
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1828
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1829
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1830
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1831
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1832
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1833
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1835
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1836
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1837
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1838
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 4

    .prologue
    .line 1841
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "defValue":Landroid/graphics/Paint$Cap;
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 1849
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    :goto_0
    return-object v0

    .line 1843
    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    :pswitch_0
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    move-object v0, v3

    goto :goto_0

    .line 1845
    :pswitch_1
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object v0, v3

    goto :goto_0

    .line 1847
    :pswitch_2
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    move-object v0, v3

    goto :goto_0

    .line 1841
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 4

    .prologue
    .line 1854
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "defValue":Landroid/graphics/Paint$Join;
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 1862
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    :goto_0
    return-object v0

    .line 1856
    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    :pswitch_0
    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    move-object v0, v3

    goto :goto_0

    .line 1858
    :pswitch_1
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object v0, v3

    goto :goto_0

    .line 1860
    :pswitch_2
    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    move-object v0, v3

    goto :goto_0

    .line 1854
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 16

    .prologue
    .line 1883
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object/from16 v1, p1

    .local v1, "a":Landroid/content/res/TypedArray;
    move-object/from16 v2, p2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v3, p3

    .local v3, "theme":Landroid/content/res/Resources$Theme;
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1890
    move-object v9, v2

    const-string/jumbo v10, "pathData"

    invoke-static {v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    move v4, v9

    .line 1891
    .local v4, "hasPathData":Z
    move v9, v4

    if-nez v9, :cond_0

    .line 1894
    .line 1938
    :goto_0
    return-void

    .line 1897
    :cond_0
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1899
    .local v5, "pathName":Ljava/lang/String;
    move-object v9, v5

    if-eqz v9, :cond_1

    .line 1900
    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mPathName:Ljava/lang/String;

    .line 1902
    :cond_1
    move-object v9, v1

    const/4 v10, 0x2

    .line 1903
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 1904
    .local v6, "pathData":Ljava/lang/String;
    move-object v9, v6

    if-eqz v9, :cond_2

    .line 1905
    move-object v9, v0

    move-object v10, v6

    invoke-static {v10}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v10

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 1908
    :cond_2
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    const-string/jumbo v13, "fillColor"

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v10

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1910
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    const-string/jumbo v12, "fillAlpha"

    const/16 v13, 0xc

    move-object v14, v0

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1912
    move-object v9, v1

    move-object v10, v2

    const-string/jumbo v11, "strokeLineCap"

    const/16 v12, 0x8

    const/4 v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    move v7, v9

    .line 1914
    .local v7, "lineCap":I
    move-object v9, v0

    move-object v10, v0

    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {v10, v11, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v10

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1915
    move-object v9, v1

    move-object v10, v2

    const-string/jumbo v11, "strokeLineJoin"

    const/16 v12, 0x9

    const/4 v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    move v8, v9

    .line 1917
    .local v8, "lineJoin":I
    move-object v9, v0

    move-object v10, v0

    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {v10, v11, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v10

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1918
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    const-string/jumbo v12, "strokeMiterLimit"

    const/16 v13, 0xa

    move-object v14, v0

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1921
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    const-string/jumbo v13, "strokeColor"

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v10

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1923
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    const-string/jumbo v12, "strokeAlpha"

    const/16 v13, 0xb

    move-object v14, v0

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1925
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    const-string/jumbo v12, "strokeWidth"

    const/4 v13, 0x4

    move-object v14, v0

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1927
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    const-string/jumbo v12, "trimPathEnd"

    const/4 v13, 0x6

    move-object v14, v0

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1929
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    const-string/jumbo v12, "trimPathOffset"

    const/4 v13, 0x7

    move-object v14, v0

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1932
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    const-string/jumbo v12, "trimPathStart"

    const/4 v13, 0x5

    move-object v14, v0

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1935
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    const-string/jumbo v12, "fillType"

    const/16 v13, 0xd

    move-object v14, v0

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1938
    goto/16 :goto_0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    .prologue
    .line 1954
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, p1

    .local v1, "t":Landroid/content/res/Resources$Theme;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-nez v2, :cond_0

    .line 1955
    .line 1963
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 1868
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFillAlpha()F
    .locals 2

    .prologue
    .line 2010
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0
.end method

.method getFillColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 2000
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0
.end method

.method getStrokeAlpha()F
    .locals 2

    .prologue
    .line 1989
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0
.end method

.method getStrokeColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 1969
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0
.end method

.method getStrokeWidth()F
    .locals 2

    .prologue
    .line 1979
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0
.end method

.method getTrimPathEnd()F
    .locals 2

    .prologue
    .line 2030
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0
.end method

.method getTrimPathOffset()F
    .locals 2

    .prologue
    .line 2040
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0
.end method

.method getTrimPathStart()F
    .locals 2

    .prologue
    .line 2020
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .prologue
    .line 1872
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, p1

    .local v1, "r":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "theme":Landroid/content/res/Resources$Theme;
    move-object v4, p4

    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    sget-object v9, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    invoke-static {v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 1874
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v6, v0

    move-object v7, v5

    move-object v8, v4

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 1875
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1876
    return-void
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 1942
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStateChanged([I)Z
    .locals 6

    .prologue
    .line 1947
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v3

    move v2, v3

    .line 1948
    .local v2, "changed":Z
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 1949
    move v3, v2

    move v0, v3

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    return v0
.end method

.method setFillAlpha(F)V
    .locals 4

    .prologue
    .line 2015
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "fillAlpha":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 2016
    return-void
.end method

.method setFillColor(I)V
    .locals 4

    .prologue
    .line 2005
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "fillColor":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    .line 2006
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 4

    .prologue
    .line 1994
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "strokeAlpha":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1995
    return-void
.end method

.method setStrokeColor(I)V
    .locals 4

    .prologue
    .line 1974
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "strokeColor":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    .line 1975
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 4

    .prologue
    .line 1984
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "strokeWidth":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1985
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 4

    .prologue
    .line 2035
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "trimPathEnd":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 2036
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 4

    .prologue
    .line 2045
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "trimPathOffset":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 2046
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 4

    .prologue
    .line 2025
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move v1, p1

    .local v1, "trimPathStart":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 2026
    return-void
.end method
