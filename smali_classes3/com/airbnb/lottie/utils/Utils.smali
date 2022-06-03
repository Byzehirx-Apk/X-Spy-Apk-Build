.class public final Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final SECOND_IN_NANOS:I = 0x3b9aca00

.field private static final SQRT_2:F

.field private static dpScale:F

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/PathMeasure;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    .line 31
    new-instance v0, Landroid/graphics/Path;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    .line 33
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/Utils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 15

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "path":Landroid/graphics/Path;
    move/from16 v1, p1

    .local v1, "startValue":F
    move/from16 v2, p2

    .local v2, "endValue":F
    move/from16 v3, p3

    .local v3, "offsetValue":F
    const-string/jumbo v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 105
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 107
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    move v4, v10

    .line 108
    .local v4, "length":F
    move v10, v1

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    move v10, v2

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    .line 109
    const-string/jumbo v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 110
    .line 175
    :goto_0
    return-void

    .line 112
    :cond_0
    move v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_1

    move v10, v2

    move v11, v1

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 113
    :cond_1
    const-string/jumbo v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    move v10, v4

    move v11, v1

    mul-float/2addr v10, v11

    move v5, v10

    .line 117
    .local v5, "start":F
    move v10, v4

    move v11, v2

    mul-float/2addr v10, v11

    move v6, v10

    .line 118
    .local v6, "end":F
    move v10, v5

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move v7, v10

    .line 119
    .local v7, "newStart":F
    move v10, v5

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v8, v10

    .line 121
    .local v8, "newEnd":F
    move v10, v3

    move v11, v4

    mul-float/2addr v10, v11

    move v9, v10

    .line 122
    .local v9, "offset":F
    move v10, v7

    move v11, v9

    add-float/2addr v10, v11

    move v7, v10

    .line 123
    move v10, v8

    move v11, v9

    add-float/2addr v10, v11

    move v8, v10

    .line 126
    move v10, v7

    move v11, v4

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_3

    move v10, v8

    move v11, v4

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_3

    .line 127
    move v10, v7

    move v11, v4

    invoke-static {v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v10, v10

    move v7, v10

    .line 128
    move v10, v8

    move v11, v4

    invoke-static {v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v10, v10

    move v8, v10

    .line 131
    :cond_3
    move v10, v7

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 132
    move v10, v7

    move v11, v4

    invoke-static {v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v10, v10

    move v7, v10

    .line 134
    :cond_4
    move v10, v8

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 135
    move v10, v8

    move v11, v4

    invoke-static {v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v10

    int-to-float v10, v10

    move v8, v10

    .line 139
    :cond_5
    move v10, v7

    move v11, v8

    cmpl-float v10, v10, v11

    if-nez v10, :cond_6

    .line 140
    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 141
    const-string/jumbo v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 142
    goto/16 :goto_0

    .line 145
    :cond_6
    move v10, v7

    move v11, v8

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7

    .line 146
    move v10, v7

    move v11, v4

    sub-float/2addr v10, v11

    move v7, v10

    .line 149
    :cond_7
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 150
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    move v11, v7

    move v12, v8

    sget-object v13, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v10

    .line 156
    move v10, v8

    move v11, v4

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    .line 157
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 158
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v11, 0x0

    move v12, v8

    move v13, v4

    rem-float/2addr v12, v13

    sget-object v13, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v10

    .line 163
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v11, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 173
    :cond_8
    :goto_1
    move-object v10, v0

    sget-object v11, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 174
    const-string/jumbo v10, "applyTrimPathIfNeeded"

    invoke-static {v10}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    move-result v10

    .line 175
    goto/16 :goto_0

    .line 164
    :cond_9
    move v10, v7

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 165
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 166
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    move v11, v4

    move v12, v7

    add-float/2addr v11, v12

    move v12, v4

    sget-object v13, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v10

    .line 171
    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v11, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 10
    .param p1    # Lcom/airbnb/lottie/animation/content/TrimPathContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "path":Landroid/graphics/Path;
    move-object v1, p1

    .local v1, "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v5

    move v2, v5

    .line 97
    .local v2, "start":F
    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v5

    move v3, v5

    .line 98
    .local v3, "end":F
    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v5

    move v4, v5

    .line 99
    .local v4, "offset":F
    move-object v5, v0

    move v6, v2

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    move v7, v3

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    move v8, v4

    const/high16 v9, 0x43b40000    # 360.0f

    div-float/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 100
    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "closeable":Ljava/io/Closeable;
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 57
    move-object v2, v0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 59
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    move-object v2, v1

    throw v2

    .line 60
    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 13

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "startPoint":Landroid/graphics/PointF;
    move-object v1, p1

    .local v1, "endPoint":Landroid/graphics/PointF;
    move-object v2, p2

    .local v2, "cp1":Landroid/graphics/PointF;
    move-object/from16 v3, p3

    .local v3, "cp2":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/Path;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v4, v5

    .line 41
    .local v4, "path":Landroid/graphics/Path;
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v0

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 43
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/PointF;->length()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/graphics/PointF;->length()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 44
    :cond_0
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v2

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move-object v8, v2

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move-object v9, v3

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    move-object v9, v1

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move-object v10, v3

    iget v10, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v10

    move-object v10, v1

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move-object v11, v1

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 51
    :goto_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "startPoint":Landroid/graphics/PointF;
    return-object v0

    .line 49
    .restart local v0    # "startPoint":Landroid/graphics/PointF;
    :cond_1
    move-object v5, v4

    move-object v6, v1

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method public static dpScale()F
    .locals 2

    .prologue
    .line 213
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    .line 216
    :cond_0
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return v0
.end method

.method public static getAnimationScale(Landroid/content/Context;)F
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 221
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "animator_duration_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    move v0, v1

    .line 225
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "animator_duration_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 8

    .prologue
    .line 66
    move-object v1, p0

    .local v1, "matrix":Landroid/graphics/Matrix;
    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 67
    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 69
    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v5, 0x2

    sget v6, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    aput v6, v4, v5

    .line 70
    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v5, 0x3

    sget v6, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    aput v6, v4, v5

    .line 71
    move-object v4, v1

    sget-object v5, Lcom/airbnb/lottie/utils/Utils;->points:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 72
    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sget-object v5, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    move v2, v4

    .line 73
    .local v2, "dx":F
    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    move v3, v4

    .line 76
    .local v3, "dy":F
    move v4, v2

    float-to-double v4, v4

    move v6, v3

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move v1, v4

    .end local v1    # "matrix":Landroid/graphics/Matrix;
    return v1
.end method

.method public static hasZeroScaleAxis(Landroid/graphics/Matrix;)Z
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "matrix":Landroid/graphics/Matrix;
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 81
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 83
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x2

    const v3, 0x471212bb

    aput v3, v1, v2

    .line 84
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x3

    const v3, 0x471a973c

    aput v3, v1, v2

    .line 85
    move-object v1, v0

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 86
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 87
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 89
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    return v0

    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static hashFor(FFFF)I
    .locals 7

    .prologue
    .line 196
    move v0, p0

    .local v0, "a":F
    move v1, p1

    .local v1, "b":F
    move v2, p2

    .local v2, "c":F
    move v3, p3

    .local v3, "d":F
    const/16 v5, 0x11

    move v4, v5

    .line 197
    .local v4, "result":I
    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 198
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 200
    :cond_0
    move v5, v1

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 201
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 203
    :cond_1
    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 204
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 206
    :cond_2
    move v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 207
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 209
    :cond_3
    move v5, v4

    move v0, v5

    .end local v0    # "a":F
    return v0
.end method

.method public static isAtLeastVersion(IIIIII)Z
    .locals 8

    .prologue
    .line 180
    move v0, p0

    .local v0, "major":I
    move v1, p1

    .local v1, "minor":I
    move v2, p2

    .local v2, "patch":I
    move v3, p3

    .local v3, "minMajor":I
    move v4, p4

    .local v4, "minMinor":I
    move v5, p5

    .local v5, "minPatch":I
    move v6, v0

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 181
    const/4 v6, 0x0

    move v0, v6

    .line 192
    .end local v0    # "major":I
    :goto_0
    return v0

    .line 182
    .restart local v0    # "major":I
    :cond_0
    move v6, v0

    move v7, v3

    if-le v6, v7, :cond_1

    .line 183
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 186
    :cond_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 187
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 188
    :cond_2
    move v6, v1

    move v7, v4

    if-le v6, v7, :cond_3

    .line 189
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 192
    :cond_3
    move v6, v2

    move v7, v5

    if-lt v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static renderPath(Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "path":Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/RectF;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v1, v5

    .line 250
    .local v1, "bounds":Landroid/graphics/RectF;
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 251
    move-object v5, v1

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    move-object v6, v1

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v2, v5

    .line 252
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v5

    .line 253
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Lcom/airbnb/lottie/animation/LPaint;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    move-object v4, v5

    .line 254
    .local v4, "paint":Landroid/graphics/Paint;
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    move-object v5, v4

    const v6, -0xffff01

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    move-object v5, v3

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "path":Landroid/graphics/Path;
    return-object v0
.end method

.method public static resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move v7, v2

    if-ne v6, v7, :cond_0

    .line 236
    move-object v6, v0

    move-object v0, v6

    .line 242
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 238
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move v6, v1

    int-to-float v6, v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v3, v6

    .line 239
    .local v3, "scaleWidth":F
    move v6, v2

    int-to-float v6, v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v4, v6

    .line 240
    .local v4, "scaleHeight":F
    move-object v6, v0

    move v7, v1

    move v8, v2

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v5, v6

    .line 241
    .local v5, "resizedBitmap":Landroid/graphics/Bitmap;
    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method
