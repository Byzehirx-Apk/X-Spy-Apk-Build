.class Landroidx/transition/FloatArrayEvaluator;
.super Ljava/lang/Object;
.source "FloatArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[F>;"
    }
.end annotation


# instance fields
.field private mArray:[F


# direct methods
.method constructor <init>([F)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FloatArrayEvaluator;
    move-object v1, p1

    .local v1, "reuseArray":[F
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/FloatArrayEvaluator;->mArray:[F

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FloatArrayEvaluator;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    check-cast v6, [F

    move-object v7, v3

    check-cast v7, [F

    invoke-virtual {v4, v5, v6, v7}, Landroidx/transition/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/FloatArrayEvaluator;
    return-object v0
.end method

.method public evaluate(F[F[F)[F
    .locals 14

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FloatArrayEvaluator;
    move v1, p1

    .local v1, "fraction":F
    move-object/from16 v2, p2

    .local v2, "startValue":[F
    move-object/from16 v3, p3

    .local v3, "endValue":[F
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/FloatArrayEvaluator;->mArray:[F

    move-object v4, v8

    .line 58
    .local v4, "array":[F
    move-object v8, v4

    if-nez v8, :cond_0

    .line 59
    move-object v8, v2

    array-length v8, v8

    new-array v8, v8, [F

    move-object v4, v8

    .line 62
    :cond_0
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move-object v9, v4

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 63
    move-object v8, v2

    move v9, v5

    aget v8, v8, v9

    move v6, v8

    .line 64
    .local v6, "start":F
    move-object v8, v3

    move v9, v5

    aget v8, v8, v9

    move v7, v8

    .line 65
    .local v7, "end":F
    move-object v8, v4

    move v9, v5

    move v10, v6

    move v11, v1

    move v12, v7

    move v13, v6

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    .end local v6    # "start":F
    .end local v7    # "end":F
    :cond_1
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Landroidx/transition/FloatArrayEvaluator;
    return-object v0
.end method
