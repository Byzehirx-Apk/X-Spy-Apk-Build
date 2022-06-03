.class Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "KeyframeParser.java"


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f

.field private static pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/KeyframeParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    move v0, p0

    .local v0, "hash":I
    const-class v3, Lcom/airbnb/lottie/parser/KeyframeParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 42
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "hash":I
    return-object v0

    .line 43
    .restart local v0    # "hash":I
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

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;Z)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move v2, p2

    .local v2, "scale":F
    move-object v3, p3

    .local v3, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    move v4, p4

    .local v4, "animated":Z
    move v5, v4

    if-eqz v5, :cond_0

    .line 58
    move-object v5, v1

    move-object v6, v0

    move v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v5

    move-object v0, v5

    .line 60
    .end local v0    # "reader":Landroid/util/JsonReader;
    :goto_0
    return-object v0

    .restart local v0    # "reader":Landroid/util/JsonReader;
    :cond_0
    move-object v5, v0

    move v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseStaticValue(Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method private static parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object/from16 v2, p0

    .local v2, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object/from16 v3, p1

    .local v3, "reader":Landroid/util/JsonReader;
    move/from16 v4, p2

    .local v4, "scale":F
    move-object/from16 v5, p3

    .local v5, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    const/16 v18, 0x0

    move-object/from16 v6, v18

    .line 71
    .local v6, "cp1":Landroid/graphics/PointF;
    const/16 v18, 0x0

    move-object/from16 v7, v18

    .line 72
    .local v7, "cp2":Landroid/graphics/PointF;
    const/16 v18, 0x0

    move/from16 v8, v18

    .line 73
    .local v8, "startFrame":F
    const/16 v18, 0x0

    move-object/from16 v9, v18

    .line 74
    .local v9, "startValue":Ljava/lang/Object;, "TT;"
    const/16 v18, 0x0

    move-object/from16 v10, v18

    .line 75
    .local v10, "endValue":Ljava/lang/Object;, "TT;"
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 76
    .local v11, "hold":Z
    const/16 v18, 0x0

    move-object/from16 v12, v18

    .line 79
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    const/16 v18, 0x0

    move-object/from16 v13, v18

    .line 80
    .local v13, "pathCp1":Landroid/graphics/PointF;
    const/16 v18, 0x0

    move-object/from16 v14, v18

    .line 82
    .local v14, "pathCp2":Landroid/graphics/PointF;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/util/JsonReader;->beginObject()V

    .line 83
    .end local v9    # "startValue":Ljava/lang/Object;, "TT;"
    .end local v10    # "endValue":Ljava/lang/Object;, "TT;"
    :goto_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/util/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 84
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, v18

    const/16 v18, -0x1

    move/from16 v16, v18

    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_0
    :goto_1
    move/from16 v18, v16

    packed-switch v18, :pswitch_data_0

    .line 110
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 84
    :sswitch_0
    move-object/from16 v18, v15

    const-string/jumbo v19, "t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    move/from16 v16, v18

    goto :goto_1

    :sswitch_1
    move-object/from16 v18, v15

    const-string/jumbo v19, "s"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    move/from16 v16, v18

    goto :goto_1

    :sswitch_2
    move-object/from16 v18, v15

    const-string/jumbo v19, "e"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x2

    move/from16 v16, v18

    goto :goto_1

    :sswitch_3
    move-object/from16 v18, v15

    const-string/jumbo v19, "o"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x3

    move/from16 v16, v18

    goto :goto_1

    :sswitch_4
    move-object/from16 v18, v15

    const-string/jumbo v19, "i"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x4

    move/from16 v16, v18

    goto :goto_1

    :sswitch_5
    move-object/from16 v18, v15

    const-string/jumbo v19, "h"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x5

    move/from16 v16, v18

    goto :goto_1

    :sswitch_6
    move-object/from16 v18, v15

    const-string/jumbo v19, "to"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x6

    move/from16 v16, v18

    goto :goto_1

    :sswitch_7
    move-object/from16 v18, v15

    const-string/jumbo v19, "ti"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x7

    move/from16 v16, v18

    goto/16 :goto_1

    .line 86
    :pswitch_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v8, v18

    .line 87
    goto/16 :goto_2

    .line 89
    :pswitch_1
    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-interface/range {v18 .. v20}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    .line 90
    .restart local v9    # "startValue":Ljava/lang/Object;, "TT;"
    goto/16 :goto_2

    .line 92
    .end local v9    # "startValue":Ljava/lang/Object;, "TT;"
    :pswitch_2
    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-interface/range {v18 .. v20}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    .line 93
    .restart local v10    # "endValue":Ljava/lang/Object;, "TT;"
    goto/16 :goto_2

    .line 95
    .end local v10    # "endValue":Ljava/lang/Object;, "TT;"
    :pswitch_3
    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v6, v18

    .line 96
    goto/16 :goto_2

    .line 98
    :pswitch_4
    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v7, v18

    .line 99
    goto/16 :goto_2

    .line 101
    :pswitch_5
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/util/JsonReader;->nextInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    :goto_3
    move/from16 v11, v18

    .line 102
    goto/16 :goto_2

    .line 101
    :cond_1
    const/16 v18, 0x0

    goto :goto_3

    .line 104
    :pswitch_6
    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v13, v18

    .line 105
    goto/16 :goto_2

    .line 107
    :pswitch_7
    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v14, v18

    .line 108
    goto/16 :goto_2

    .line 113
    :cond_2
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/util/JsonReader;->endObject()V

    .line 115
    move/from16 v18, v11

    if-eqz v18, :cond_3

    .line 116
    move-object/from16 v18, v9

    move-object/from16 v10, v18

    .line 118
    .restart local v10    # "endValue":Ljava/lang/Object;, "TT;"
    sget-object v18, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v12, v18

    .line 146
    .end local v10    # "endValue":Ljava/lang/Object;, "TT;"
    :goto_4
    new-instance v18, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v12

    move/from16 v24, v8

    const/16 v25, 0x0

    invoke-direct/range {v19 .. v25}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v15, v18

    .line 148
    .local v15, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object/from16 v18, v15

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 149
    move-object/from16 v18, v15

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 150
    move-object/from16 v18, v15

    move-object/from16 v2, v18

    .end local v2    # "composition":Lcom/airbnb/lottie/LottieComposition;
    return-object v2

    .line 119
    .end local v15    # "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    .restart local v2    # "composition":Lcom/airbnb/lottie/LottieComposition;
    :cond_3
    move-object/from16 v18, v6

    if-eqz v18, :cond_7

    move-object/from16 v18, v7

    if-eqz v18, :cond_7

    .line 120
    move-object/from16 v18, v6

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v4

    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 121
    move-object/from16 v18, v6

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    const/high16 v20, -0x3d380000    # -100.0f

    const/high16 v21, 0x42c80000    # 100.0f

    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 122
    move-object/from16 v18, v7

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v4

    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 123
    move-object/from16 v18, v7

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    const/high16 v20, -0x3d380000    # -100.0f

    const/high16 v21, 0x42c80000    # 100.0f

    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 124
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v18

    move/from16 v15, v18

    .line 125
    .local v15, "hash":I
    move/from16 v18, v15

    invoke-static/range {v18 .. v18}, Lcom/airbnb/lottie/parser/KeyframeParser;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v18

    move-object/from16 v16, v18

    .line 126
    .local v16, "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    move-object/from16 v18, v16

    if-eqz v18, :cond_4

    .line 127
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/animation/Interpolator;

    move-object/from16 v12, v18

    .line 129
    :cond_4
    move-object/from16 v18, v16

    if-eqz v18, :cond_5

    move-object/from16 v18, v12

    if-nez v18, :cond_6

    .line 130
    :cond_5
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    move/from16 v19, v4

    div-float v18, v18, v19

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move/from16 v20, v4

    div-float v19, v19, v20

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v21, v4

    div-float v20, v20, v21

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move/from16 v22, v4

    div-float v21, v21, v22

    invoke-static/range {v18 .. v21}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v18

    move-object/from16 v12, v18

    .line 133
    move/from16 v18, v15

    :try_start_0
    new-instance v19, Ljava/lang/ref/WeakReference;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v12

    invoke-direct/range {v20 .. v21}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v19}, Lcom/airbnb/lottie/parser/KeyframeParser;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 142
    :cond_6
    :goto_5
    goto/16 :goto_4

    .line 134
    :catch_0
    move-exception v18

    move-object/from16 v17, v18

    goto :goto_5

    .line 143
    .end local v15    # "hash":I
    .end local v16    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :cond_7
    sget-object v18, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v12, v18

    goto/16 :goto_4

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_2
        0x68 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6f -> :sswitch_3
        0x73 -> :sswitch_1
        0x74 -> :sswitch_0
        0xe75 -> :sswitch_7
        0xe7b -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static parseStaticValue(Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move v1, p1

    .local v1, "scale":F
    move-object v2, p2

    .local v2, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    move-object v4, v2

    move-object v5, v0

    move v6, v1

    invoke-interface {v4, v5, v6}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 156
    .local v3, "value":Ljava/lang/Object;, "TT;"
    new-instance v4, Lcom/airbnb/lottie/value/Keyframe;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method private static pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 34
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    move v0, p0

    .local v0, "hash":I
    move-object v1, p1

    .local v1, "interpolator":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    const-class v4, Lcom/airbnb/lottie/parser/KeyframeParser;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 50
    :try_start_0
    sget-object v4, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    move v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 51
    move-object v4, v2

    monitor-exit v4

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
