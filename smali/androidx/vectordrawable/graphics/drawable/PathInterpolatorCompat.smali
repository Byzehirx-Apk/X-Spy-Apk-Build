.class public Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final EPSILON:D = 1.0E-5

.field public static final MAX_NUM_POINTS:I = 0xbb8

.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v4, p4

    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    sget-object v9, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    invoke-static {v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 75
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v6, v0

    move-object v7, v5

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 76
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private initCubic(FFFF)V
    .locals 14

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
    move v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    new-instance v6, Landroid/graphics/Path;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    move-object v5, v6

    .line 131
    .local v5, "path":Landroid/graphics/Path;
    move-object v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 132
    move-object v6, v5

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 133
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 134
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 17

    .prologue
    .line 137
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
    move-object/from16 v1, p1

    .local v1, "path":Landroid/graphics/Path;
    new-instance v10, Landroid/graphics/PathMeasure;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object v2, v10

    .line 139
    .local v2, "pathMeasure":Landroid/graphics/PathMeasure;
    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    move v3, v10

    .line 140
    .local v3, "pathLength":F
    const/16 v10, 0xbb8

    move v11, v3

    const v12, 0x3b03126f    # 0.002f

    div-float/2addr v11, v12

    float-to-int v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v4, v10

    .line 142
    .local v4, "numPoints":I
    move v10, v4

    if-gtz v10, :cond_0

    .line 143
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "The Path has a invalid length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 146
    :cond_0
    move-object v10, v0

    move v11, v4

    new-array v11, v11, [F

    iput-object v11, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    .line 147
    move-object v10, v0

    move v11, v4

    new-array v11, v11, [F

    iput-object v11, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    .line 149
    const/4 v10, 0x2

    new-array v10, v10, [F

    move-object v5, v10

    .line 150
    .local v5, "position":[F
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_0
    move v10, v6

    move v11, v4

    if-ge v10, v11, :cond_1

    .line 151
    move v10, v6

    int-to-float v10, v10

    move v11, v3

    mul-float/2addr v10, v11

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v7, v10

    .line 152
    .local v7, "distance":F
    move-object v10, v2

    move v11, v7

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v10

    .line 154
    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    move v11, v6

    move-object v12, v5

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    .line 155
    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    move v11, v6

    move-object v12, v5

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 158
    .end local v7    # "distance":F
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    .line 159
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    .line 160
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "The Path must start at (0,0) and end at (1,1) start: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " end:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 166
    :cond_3
    const/4 v10, 0x0

    move v6, v10

    .line 167
    .local v6, "prevX":F
    const/4 v10, 0x0

    move v7, v10

    .line 168
    .local v7, "componentIndex":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_1
    move v10, v8

    move v11, v4

    if-ge v10, v11, :cond_5

    .line 169
    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget v10, v10, v11

    move v9, v10

    .line 170
    .local v9, "x":F
    move v10, v9

    move v11, v6

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 171
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "The Path cannot loop back on itself, x :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 173
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    move v11, v8

    move v12, v9

    aput v12, v10, v11

    .line 174
    move v10, v9

    move v6, v10

    .line 168
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 177
    .end local v9    # "x":F
    :cond_5
    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 178
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "The Path should be continuous, can\'t have 2+ contours"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 181
    :cond_6
    return-void
.end method

.method private initQuad(FF)V
    .locals 10

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
    move v1, p1

    .local v1, "controlX":F
    move v2, p2

    .local v2, "controlY":F
    new-instance v4, Landroid/graphics/Path;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object v3, v4

    .line 124
    .local v3, "path":Landroid/graphics/Path;
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 125
    move-object v4, v3

    move v5, v1

    move v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 126
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 127
    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 15

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
    move-object/from16 v1, p1

    .local v1, "a":Landroid/content/res/TypedArray;
    move-object/from16 v2, p2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v9, v2

    const-string/jumbo v10, "pathData"

    invoke-static {v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 83
    move-object v9, v1

    move-object v10, v2

    const-string/jumbo v11, "pathData"

    const/4 v12, 0x4

    invoke-static {v9, v10, v11, v12}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 85
    .local v3, "pathData":Ljava/lang/String;
    move-object v9, v3

    invoke-static {v9}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    move-object v4, v9

    .line 86
    .local v4, "path":Landroid/graphics/Path;
    move-object v9, v4

    if-nez v9, :cond_0

    .line 87
    new-instance v9, Landroid/view/InflateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "The path is null, which is created from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 90
    :cond_0
    move-object v9, v0

    move-object v10, v4

    invoke-direct {v9, v10}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 91
    .line 120
    .end local v3    # "pathData":Ljava/lang/String;
    .end local v4    # "path":Landroid/graphics/Path;
    :goto_0
    return-void

    .line 92
    :cond_1
    move-object v9, v2

    const-string/jumbo v10, "controlX1"

    invoke-static {v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 93
    new-instance v9, Landroid/view/InflateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v10, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 94
    :cond_2
    move-object v9, v2

    const-string/jumbo v10, "controlY1"

    invoke-static {v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 95
    new-instance v9, Landroid/view/InflateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v10, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 97
    :cond_3
    move-object v9, v1

    move-object v10, v2

    const-string/jumbo v11, "controlX1"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    move v3, v9

    .line 99
    .local v3, "x1":F
    move-object v9, v1

    move-object v10, v2

    const-string/jumbo v11, "controlY1"

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    move v4, v9

    .line 102
    .local v4, "y1":F
    move-object v9, v2

    const-string/jumbo v10, "controlX2"

    invoke-static {v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    move v5, v9

    .line 103
    .local v5, "hasX2":Z
    move-object v9, v2

    const-string/jumbo v10, "controlY2"

    invoke-static {v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    move v6, v9

    .line 105
    .local v6, "hasY2":Z
    move v9, v5

    move v10, v6

    if-eq v9, v10, :cond_4

    .line 106
    new-instance v9, Landroid/view/InflateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {v10, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 110
    :cond_4
    move v9, v5

    if-nez v9, :cond_5

    .line 111
    move-object v9, v0

    move v10, v3

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initQuad(FF)V

    goto :goto_0

    .line 113
    :cond_5
    move-object v9, v1

    move-object v10, v2

    const-string/jumbo v11, "controlX2"

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    move v7, v9

    .line 115
    .local v7, "x2":F
    move-object v9, v1

    move-object v10, v2

    const-string/jumbo v11, "controlY2"

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    move v8, v9

    .line 117
    .local v8, "y2":F
    move-object v9, v0

    move v10, v3

    move v11, v4

    move v12, v7

    move v13, v8

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initCubic(FFFF)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 13

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
    move v1, p1

    .local v1, "t":F
    move v9, v1

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 196
    const/4 v9, 0x0

    move v0, v9

    .line 223
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
    :goto_0
    return v0

    .line 197
    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
    :cond_0
    move v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_1

    .line 198
    const/high16 v9, 0x3f800000    # 1.0f

    move v0, v9

    goto :goto_0

    .line 201
    :cond_1
    const/4 v9, 0x0

    move v2, v9

    .line 202
    .local v2, "startIndex":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    .line 204
    .local v3, "endIndex":I
    :goto_1
    move v9, v3

    move v10, v2

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 205
    move v9, v2

    move v10, v3

    add-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v4, v9

    .line 206
    .local v4, "midIndex":I
    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    move v11, v4

    aget v10, v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 207
    move v9, v4

    move v3, v9

    .line 211
    :goto_2
    goto :goto_1

    .line 209
    :cond_2
    move v9, v4

    move v2, v9

    goto :goto_2

    .line 213
    .end local v4    # "midIndex":I
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    move v10, v3

    aget v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    move v11, v2

    aget v10, v10, v11

    sub-float/2addr v9, v10

    move v4, v9

    .line 214
    .local v4, "xRange":F
    move v9, v4

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_4

    .line 215
    move-object v9, v0

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    move v10, v2

    aget v9, v9, v10

    move v0, v9

    goto :goto_0

    .line 218
    :cond_4
    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    move v11, v2

    aget v10, v10, v11

    sub-float/2addr v9, v10

    move v5, v9

    .line 219
    .local v5, "tInRange":F
    move v9, v5

    move v10, v4

    div-float/2addr v9, v10

    move v6, v9

    .line 221
    .local v6, "fraction":F
    move-object v9, v0

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    move v10, v2

    aget v9, v9, v10

    move v7, v9

    .line 222
    .local v7, "startY":F
    move-object v9, v0

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    move v10, v3

    aget v9, v9, v10

    move v8, v9

    .line 223
    .local v8, "endY":F
    move v9, v7

    move v10, v6

    move v11, v8

    move v12, v7

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v0, v9

    goto :goto_0
.end method
