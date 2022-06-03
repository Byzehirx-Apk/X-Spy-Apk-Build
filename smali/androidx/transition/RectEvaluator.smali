.class Landroidx/transition/RectEvaluator;
.super Ljava/lang/Object;
.source "RectEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private mRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/transition/RectEvaluator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/transition/RectEvaluator;
    move-object v1, p1

    .local v1, "reuseRect":Landroid/graphics/Rect;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/RectEvaluator;->mRect:Landroid/graphics/Rect;

    .line 54
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 15

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/transition/RectEvaluator;
    move/from16 v1, p1

    .local v1, "fraction":F
    move-object/from16 v2, p2

    .local v2, "startValue":Landroid/graphics/Rect;
    move-object/from16 v3, p3

    .local v3, "endValue":Landroid/graphics/Rect;
    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    move v4, v8

    .line 76
    .local v4, "left":I
    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    move v5, v8

    .line 77
    .local v5, "top":I
    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    move v6, v8

    .line 78
    .local v6, "right":I
    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    move v7, v8

    .line 79
    .local v7, "bottom":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/RectEvaluator;->mRect:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 80
    new-instance v8, Landroid/graphics/Rect;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v8

    .line 83
    .end local v0    # "this":Landroidx/transition/RectEvaluator;
    :goto_0
    return-object v0

    .line 82
    .restart local v0    # "this":Landroidx/transition/RectEvaluator;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/RectEvaluator;->mRect:Landroid/graphics/Rect;

    move v9, v4

    move v10, v5

    move v11, v6

    move v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/RectEvaluator;->mRect:Landroid/graphics/Rect;

    move-object v0, v8

    goto :goto_0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Landroidx/transition/RectEvaluator;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    check-cast v6, Landroid/graphics/Rect;

    move-object v7, v3

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/transition/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/RectEvaluator;
    return-object v0
.end method
