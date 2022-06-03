.class public Landroidx/transition/PatternPathMotion;
.super Landroidx/transition/PathMotion;
.source "PatternPathMotion.java"


# instance fields
.field private mOriginalPatternPath:Landroid/graphics/Path;

.field private final mPatternPath:Landroid/graphics/Path;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PatternPathMotion;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/PathMotion;-><init>()V

    .line 46
    move-object v1, v0

    new-instance v2, Landroid/graphics/Path;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 48
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 54
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iput-object v2, v1, Landroidx/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PatternPathMotion;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v7, v0

    invoke-direct {v7}, Landroidx/transition/PathMotion;-><init>()V

    .line 46
    move-object v7, v0

    new-instance v8, Landroid/graphics/Path;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v7, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 48
    move-object v7, v0

    new-instance v8, Landroid/graphics/Matrix;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v7, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 59
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroidx/transition/Styleable;->PATTERN_PATH_MOTION:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v3, v7

    .line 61
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v7, v3

    move-object v8, v2

    :try_start_0
    check-cast v8, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v9, "patternPathData"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 63
    .local v4, "pathData":Ljava/lang/String;
    move-object v7, v4

    if-nez v7, :cond_0

    .line 64
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "pathData must be supplied for patternPathMotion"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v4    # "pathData":Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object v7, v6

    throw v7

    .line 66
    .restart local v4    # "pathData":Ljava/lang/String;
    :cond_0
    move-object v7, v4

    :try_start_1
    invoke-static {v7}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v7

    move-object v5, v7

    .line 67
    .local v5, "pattern":Landroid/graphics/Path;
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    move-object v7, v3

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PatternPathMotion;
    move-object v1, p1

    .local v1, "patternPath":Landroid/graphics/Path;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/PathMotion;-><init>()V

    .line 46
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v2, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 48
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V

    .line 83
    return-void
.end method

.method private static distance(FF)F
    .locals 5

    .prologue
    .line 146
    move v0, p0

    .local v0, "x":F
    move v1, p1

    .local v1, "y":F
    move v2, v0

    move v3, v0

    mul-float/2addr v2, v3

    move v3, v1

    move v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    .end local v0    # "x":F
    return v0
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 16

    .prologue
    .line 132
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/transition/PatternPathMotion;
    move/from16 v1, p1

    .local v1, "startX":F
    move/from16 v2, p2

    .local v2, "startY":F
    move/from16 v3, p3

    .local v3, "endX":F
    move/from16 v4, p4

    .local v4, "endY":F
    move v11, v3

    move v12, v1

    sub-float/2addr v11, v12

    move v5, v11

    .line 133
    .local v5, "dx":F
    move v11, v4

    move v12, v2

    sub-float/2addr v11, v12

    move v6, v11

    .line 134
    .local v6, "dy":F
    move v11, v5

    move v12, v6

    invoke-static {v11, v12}, Landroidx/transition/PatternPathMotion;->distance(FF)F

    move-result v11

    move v7, v11

    .line 135
    .local v7, "length":F
    move v11, v6

    float-to-double v11, v11

    move v13, v5

    float-to-double v13, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    move-wide v8, v11

    .line 137
    .local v8, "angle":D
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move v12, v7

    move v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 138
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move-wide v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-result v11

    .line 139
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move v12, v1

    move v13, v2

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v11

    .line 140
    new-instance v11, Landroid/graphics/Path;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object v10, v11

    .line 141
    .local v10, "path":Landroid/graphics/Path;
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    move-object v12, v0

    iget-object v12, v12, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 142
    move-object v11, v10

    move-object v0, v11

    .end local v0    # "this":Landroidx/transition/PatternPathMotion;
    return-object v0
.end method

.method public getPatternPath()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PatternPathMotion;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/PatternPathMotion;
    return-object v0
.end method

.method public setPatternPath(Landroid/graphics/Path;)V
    .locals 23

    .prologue
    .line 104
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/transition/PatternPathMotion;
    move-object/from16 v4, p1

    .local v4, "patternPath":Landroid/graphics/Path;
    new-instance v18, Landroid/graphics/PathMeasure;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v4

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object/from16 v5, v18

    .line 105
    .local v5, "pathMeasure":Landroid/graphics/PathMeasure;
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v18

    move/from16 v6, v18

    .line 106
    .local v6, "length":F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 107
    .local v7, "pos":[F
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v18

    .line 108
    move-object/from16 v18, v7

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v8, v18

    .line 109
    .local v8, "endX":F
    move-object/from16 v18, v7

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v9, v18

    .line 110
    .local v9, "endY":F
    move-object/from16 v18, v5

    const/16 v19, 0x0

    move-object/from16 v20, v7

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v18

    .line 111
    move-object/from16 v18, v7

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v10, v18

    .line 112
    .local v10, "startX":F
    move-object/from16 v18, v7

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v11, v18

    .line 114
    .local v11, "startY":F
    move/from16 v18, v10

    move/from16 v19, v8

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    move/from16 v18, v11

    move/from16 v19, v9

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    .line 115
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const-string/jumbo v20, "pattern must not end at the starting point"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 118
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move/from16 v19, v10

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v11

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 119
    move/from16 v18, v8

    move/from16 v19, v10

    sub-float v18, v18, v19

    move/from16 v12, v18

    .line 120
    .local v12, "dx":F
    move/from16 v18, v9

    move/from16 v19, v11

    sub-float v18, v18, v19

    move/from16 v13, v18

    .line 121
    .local v13, "dy":F
    move/from16 v18, v12

    move/from16 v19, v13

    invoke-static/range {v18 .. v19}, Landroidx/transition/PatternPathMotion;->distance(FF)F

    move-result v18

    move/from16 v14, v18

    .line 122
    .local v14, "distance":F
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v19, v14

    div-float v18, v18, v19

    move/from16 v15, v18

    .line 123
    .local v15, "scale":F
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move/from16 v19, v15

    move/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v18

    .line 124
    move/from16 v18, v13

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v12

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 125
    .local v16, "angle":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-wide/from16 v19, v16

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-result v18

    .line 126
    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 127
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    .line 128
    return-void
.end method
