.class public Lcom/google/android/material/animation/ArgbEvaluatorCompat;
.super Ljava/lang/Object;
.source "ArgbEvaluatorCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;-><init>()V

    sput-object v0, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ArgbEvaluatorCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 24

    .prologue
    .line 55
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/animation/ArgbEvaluatorCompat;
    move/from16 v3, p1

    .local v3, "fraction":F
    move-object/from16 v4, p2

    .local v4, "startValue":Ljava/lang/Integer;
    move-object/from16 v5, p3

    .local v5, "endValue":Ljava/lang/Integer;
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v6, v20

    .line 56
    .local v6, "startInt":I
    move/from16 v20, v6

    const/16 v21, 0x18

    shr-int/lit8 v20, v20, 0x18

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v20, v20, v21

    move/from16 v7, v20

    .line 57
    .local v7, "startA":F
    move/from16 v20, v6

    const/16 v21, 0x10

    shr-int/lit8 v20, v20, 0x10

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v20, v20, v21

    move/from16 v8, v20

    .line 58
    .local v8, "startR":F
    move/from16 v20, v6

    const/16 v21, 0x8

    shr-int/lit8 v20, v20, 0x8

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v20, v20, v21

    move/from16 v9, v20

    .line 59
    .local v9, "startG":F
    move/from16 v20, v6

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v20, v20, v21

    move/from16 v10, v20

    .line 61
    .local v10, "startB":F
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v11, v20

    .line 62
    .local v11, "endInt":I
    move/from16 v20, v11

    const/16 v21, 0x18

    shr-int/lit8 v20, v20, 0x18

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v20, v20, v21

    move/from16 v12, v20

    .line 63
    .local v12, "endA":F
    move/from16 v20, v11

    const/16 v21, 0x10

    shr-int/lit8 v20, v20, 0x10

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v20, v20, v21

    move/from16 v13, v20

    .line 64
    .local v13, "endR":F
    move/from16 v20, v11

    const/16 v21, 0x8

    shr-int/lit8 v20, v20, 0x8

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v20, v20, v21

    move/from16 v14, v20

    .line 65
    .local v14, "endG":F
    move/from16 v20, v11

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    div-float v20, v20, v21

    move/from16 v15, v20

    .line 68
    .local v15, "endB":F
    move/from16 v20, v8

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x400199999999999aL    # 2.2

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v8, v20

    .line 69
    move/from16 v20, v9

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x400199999999999aL    # 2.2

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v9, v20

    .line 70
    move/from16 v20, v10

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x400199999999999aL    # 2.2

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v10, v20

    .line 72
    move/from16 v20, v13

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x400199999999999aL    # 2.2

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v13, v20

    .line 73
    move/from16 v20, v14

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x400199999999999aL    # 2.2

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v14, v20

    .line 74
    move/from16 v20, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x400199999999999aL    # 2.2

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v15, v20

    .line 77
    move/from16 v20, v7

    move/from16 v21, v3

    move/from16 v22, v12

    move/from16 v23, v7

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v16, v20

    .line 78
    .local v16, "a":F
    move/from16 v20, v8

    move/from16 v21, v3

    move/from16 v22, v13

    move/from16 v23, v8

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v17, v20

    .line 79
    .local v17, "r":F
    move/from16 v20, v9

    move/from16 v21, v3

    move/from16 v22, v14

    move/from16 v23, v9

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v18, v20

    .line 80
    .local v18, "g":F
    move/from16 v20, v10

    move/from16 v21, v3

    move/from16 v22, v15

    move/from16 v23, v10

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v19, v20

    .line 83
    .local v19, "b":F
    move/from16 v20, v16

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    move/from16 v16, v20

    .line 84
    move/from16 v20, v17

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    move/from16 v17, v20

    .line 85
    move/from16 v20, v18

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    move/from16 v18, v20

    .line 86
    move/from16 v20, v19

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    move/from16 v19, v20

    .line 88
    move/from16 v20, v16

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    const/16 v21, 0x18

    shl-int/lit8 v20, v20, 0x18

    move/from16 v21, v17

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    const/16 v22, 0x10

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    move/from16 v21, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    const/16 v22, 0x8

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    move/from16 v21, v19

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    or-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/google/android/material/animation/ArgbEvaluatorCompat;
    return-object v2
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ArgbEvaluatorCompat;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Integer;

    move-object v7, v3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/animation/ArgbEvaluatorCompat;
    return-object v0
.end method
