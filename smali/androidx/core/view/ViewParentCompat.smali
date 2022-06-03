.class public final Landroidx/core/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewParentCompat"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewParentCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "source":Landroid/view/View;
    move v3, p3

    .local v3, "changeType":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 448
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 450
    :cond_0
    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 12

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "velocityX":F
    move v3, p3

    .local v3, "velocityY":F
    move/from16 v4, p4

    .local v4, "consumed":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1

    .line 381
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    :try_start_0
    invoke-interface {v6, v7, v8, v9, v10}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    .line 390
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v0

    .line 382
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 383
    .local v5, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v6, "ViewParentCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ViewParent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not implement interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "method onNestedFling"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 385
    .line 390
    .end local v5    # "e":Ljava/lang/AbstractMethodError;
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 386
    :cond_1
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent;

    if-eqz v6, :cond_0

    .line 387
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent;

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroidx/core/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 10

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "velocityX":F
    move v3, p3

    .local v3, "velocityY":F
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 418
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    :try_start_0
    invoke-interface {v5, v6, v7, v8}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 427
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v0

    .line 419
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 420
    .local v4, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v5, "ViewParentCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ViewParent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not implement interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "method onNestedPreFling"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 422
    .line 427
    .end local v4    # "e":Ljava/lang/AbstractMethodError;
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 423
    :cond_1
    move-object v5, v0

    instance-of v5, v5, Landroidx/core/view/NestedScrollingParent;

    if-eqz v5, :cond_0

    .line 424
    move-object v5, v0

    check-cast v5, Landroidx/core/view/NestedScrollingParent;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-interface {v5, v6, v7, v8}, Landroidx/core/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 11

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "dx":I
    move v3, p3

    .local v3, "dy":I
    move-object v4, p4

    .local v4, "consumed":[I
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 148
    return-void
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 14

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "dx":I
    move/from16 v3, p3

    .local v3, "dy":I
    move-object/from16 v4, p4

    .local v4, "consumed":[I
    move/from16 v5, p5

    .local v5, "type":I
    move-object v7, v0

    instance-of v7, v7, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v7, :cond_1

    .line 341
    move-object v7, v0

    check-cast v7, Landroidx/core/view/NestedScrollingParent2;

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    move v12, v5

    invoke-interface/range {v7 .. v12}, Landroidx/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    move v7, v5

    if-nez v7, :cond_0

    .line 344
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    .line 346
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    :try_start_0
    invoke-interface {v7, v8, v9, v10, v11}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    goto :goto_0

    .line 347
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 348
    .local v6, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v7, "ViewParentCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ViewParent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not implement interface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "method onNestedPreScroll"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v6

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 350
    goto :goto_0

    .line 351
    .end local v6    # "e":Ljava/lang/AbstractMethodError;
    :cond_2
    move-object v7, v0

    instance-of v7, v7, Landroidx/core/view/NestedScrollingParent;

    if-eqz v7, :cond_0

    .line 352
    move-object v7, v0

    check-cast v7, Landroidx/core/view/NestedScrollingParent;

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-interface {v7, v8, v9, v10, v11}, Landroidx/core/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_0
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 13

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "dxConsumed":I
    move/from16 v3, p3

    .local v3, "dyConsumed":I
    move/from16 v4, p4

    .local v4, "dxUnconsumed":I
    move/from16 v5, p5

    .local v5, "dyUnconsumed":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 131
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 16

    .prologue
    .line 294
    move-object/from16 v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object/from16 v1, p1

    .local v1, "target":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "dxConsumed":I
    move/from16 v3, p3

    .local v3, "dyConsumed":I
    move/from16 v4, p4

    .local v4, "dxUnconsumed":I
    move/from16 v5, p5

    .local v5, "dyUnconsumed":I
    move/from16 v6, p6

    .local v6, "type":I
    move-object v8, v0

    instance-of v8, v8, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v8, :cond_1

    .line 296
    move-object v8, v0

    check-cast v8, Landroidx/core/view/NestedScrollingParent2;

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-interface/range {v8 .. v14}, Landroidx/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    move v8, v6

    if-nez v8, :cond_0

    .line 300
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    .line 302
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    :try_start_0
    invoke-interface/range {v8 .. v13}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    .line 304
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 305
    .local v7, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v8, "ViewParentCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ViewParent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " does not implement interface "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "method onNestedScroll"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    .line 307
    goto :goto_0

    .line 308
    .end local v7    # "e":Ljava/lang/AbstractMethodError;
    :cond_2
    move-object v8, v0

    instance-of v8, v8, Landroidx/core/view/NestedScrollingParent;

    if-eqz v8, :cond_0

    .line 309
    move-object v8, v0

    check-cast v8, Landroidx/core/view/NestedScrollingParent;

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-interface/range {v8 .. v13}, Landroidx/core/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 9

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "nestedScrollAxes":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 100
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 12

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "nestedScrollAxes":I
    move/from16 v4, p4

    .local v4, "type":I
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v6, :cond_1

    .line 219
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent2;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroidx/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    move v6, v4

    if-nez v6, :cond_0

    .line 223
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 225
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    :try_start_0
    invoke-interface {v6, v7, v8, v9}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 226
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 227
    .local v5, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v6, "ViewParentCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ViewParent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not implement interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "method onNestedScrollAccepted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 229
    goto :goto_0

    .line 230
    .end local v5    # "e":Ljava/lang/AbstractMethodError;
    :cond_2
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent;

    if-eqz v6, :cond_0

    .line 231
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 9

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "nestedScrollAxes":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    move v0, v4

    .end local v0    # "parent":Landroid/view/ViewParent;
    return v0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 12

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "nestedScrollAxes":I
    move/from16 v4, p4

    .local v4, "type":I
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v6, :cond_0

    .line 178
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent2;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroidx/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v6

    move v0, v6

    .line 194
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v0

    .line 180
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    move v6, v4

    if-nez v6, :cond_1

    .line 182
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 184
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    :try_start_0
    invoke-interface {v6, v7, v8, v9}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    goto :goto_0

    .line 185
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 186
    .local v5, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v6, "ViewParentCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ViewParent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not implement interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "method onStartNestedScroll"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 188
    .line 194
    .end local v5    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 189
    :cond_2
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent;

    if-eqz v6, :cond_1

    .line 190
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 112
    return-void
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "type":I
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v4, :cond_1

    .line 253
    move-object v4, v0

    check-cast v4, Landroidx/core/view/NestedScrollingParent2;

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroidx/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    move v4, v2

    if-nez v4, :cond_0

    .line 256
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 258
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-interface {v4, v5}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 259
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 260
    .local v3, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v4, "ViewParentCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ViewParent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " does not implement interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "method onStopNestedScroll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 262
    goto :goto_0

    .line 263
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    :cond_2
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/view/NestedScrollingParent;

    if-eqz v4, :cond_0

    .line 264
    move-object v4, v0

    check-cast v4, Landroidx/core/view/NestedScrollingParent;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/core/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "parent":Landroid/view/ViewParent;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    move v0, v3

    .end local v0    # "parent":Landroid/view/ViewParent;
    return v0
.end method
