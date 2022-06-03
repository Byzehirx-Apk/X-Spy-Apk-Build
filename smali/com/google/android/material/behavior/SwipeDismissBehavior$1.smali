.class Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private activePointerId:I

.field private originalCapturedViewLeft:I

.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/behavior/SwipeDismissBehavior;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 212
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .locals 7

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "xvel":F
    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_a

    .line 269
    move-object v5, v1

    .line 270
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 272
    .local v3, "isRtl":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 274
    const/4 v5, 0x1

    move v0, v5

    .line 290
    .end local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    .end local v3    # "isRtl":Z
    :goto_1
    return v0

    .line 270
    .restart local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 275
    .restart local v3    # "isRtl":Z
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v5, :cond_5

    .line 278
    move v5, v3

    if-eqz v5, :cond_3

    move v5, v2

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 279
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 282
    move v5, v3

    if-eqz v5, :cond_7

    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    move v0, v5

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    move v5, v2

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .line 284
    .line 290
    :cond_9
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 285
    .end local v3    # "isRtl":Z
    :cond_a
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 286
    .local v3, "distance":I
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v6, v6, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v4, v5

    .line 287
    .local v4, "thresholdDistance":I
    move v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v6, v4

    if-lt v5, v6, :cond_b

    const/4 v5, 0x1

    :goto_4
    move v0, v5

    goto :goto_1

    :cond_b
    const/4 v5, 0x0

    goto :goto_4
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 10

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "dx":I
    move-object v7, v1

    .line 301
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v4, v7

    .line 305
    .local v4, "isRtl":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v7, :cond_2

    .line 306
    move v7, v4

    if-eqz v7, :cond_1

    .line 307
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 308
    .local v5, "min":I
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move v6, v7

    .line 326
    .local v6, "max":I
    :goto_1
    move v7, v5

    move v8, v2

    move v9, v6

    invoke-static {v7, v8, v9}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(III)I

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    return v0

    .line 301
    .end local v4    # "isRtl":Z
    .end local v5    # "min":I
    .end local v6    # "max":I
    .restart local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 310
    .restart local v4    # "isRtl":Z
    :cond_1
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move v5, v7

    .line 311
    .restart local v5    # "min":I
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    .restart local v6    # "max":I
    goto :goto_1

    .line 313
    .end local v5    # "min":I
    .end local v6    # "max":I
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 314
    move v7, v4

    if-eqz v7, :cond_3

    .line 315
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move v5, v7

    .line 316
    .restart local v5    # "min":I
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    .restart local v6    # "max":I
    goto :goto_1

    .line 318
    .end local v5    # "min":I
    .end local v6    # "max":I
    :cond_3
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 319
    .restart local v5    # "min":I
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move v6, v7

    .restart local v6    # "max":I
    goto :goto_1

    .line 322
    .end local v5    # "min":I
    .end local v6    # "max":I
    :cond_4
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 323
    .restart local v5    # "min":I
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    .restart local v6    # "max":I
    goto :goto_1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 5

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "dy":I
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move-object v1, p1

    .local v1, "capturedChild":Landroid/view/View;
    move v2, p2

    .local v2, "activePointerId":I
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 223
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 227
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 228
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 229
    move-object v4, v3

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v2, :cond_0

    .line 236
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 13

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "dx":I
    move/from16 v5, p5

    .local v5, "dy":I
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    int-to-float v9, v9

    move-object v10, v1

    .line 337
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v11, v11, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v6, v9

    .line 338
    .local v6, "startAlphaDistance":F
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    int-to-float v9, v9

    move-object v10, v1

    .line 339
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v11, v11, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v7, v9

    .line 341
    .local v7, "endAlphaDistance":F
    move v9, v2

    int-to-float v9, v9

    move v10, v6

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 342
    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 350
    :goto_0
    return-void

    .line 343
    :cond_0
    move v9, v2

    int-to-float v9, v9

    move v10, v7

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_1

    .line 344
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 347
    :cond_1
    move v9, v6

    move v10, v7

    move v11, v2

    int-to-float v11, v11

    invoke-static {v9, v10, v11}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->fraction(FFF)F

    move-result v9

    move v8, v9

    .line 348
    .local v8, "distance":F
    move-object v9, v1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v8

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, v12}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 14

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "xvel":F
    move/from16 v3, p3

    .local v3, "yvel":F
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 245
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move v4, v7

    .line 247
    .local v4, "childWidth":I
    const/4 v7, 0x0

    move v6, v7

    .line 249
    .local v6, "dismiss":Z
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 250
    move-object v7, v1

    .line 251
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    if-ge v7, v8, :cond_1

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move v8, v4

    sub-int/2addr v7, v8

    :goto_0
    move v5, v7

    .line 254
    .local v5, "targetLeft":I
    const/4 v7, 0x1

    move v6, v7

    .line 260
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move v8, v5

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 261
    move-object v7, v1

    new-instance v8, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    move-object v11, v1

    move v12, v6

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 265
    :cond_0
    :goto_2
    return-void

    .line 251
    .end local v5    # "targetLeft":I
    :cond_1
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move v8, v4

    add-int/2addr v7, v8

    goto :goto_0

    .line 257
    :cond_2
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move v5, v7

    .restart local v5    # "targetLeft":I
    goto :goto_1

    .line 262
    :cond_3
    move v7, v6

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v7, :cond_0

    .line 263
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v7, v7, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    move-object v8, v1

    invoke-interface {v7, v8}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "pointerId":I
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
