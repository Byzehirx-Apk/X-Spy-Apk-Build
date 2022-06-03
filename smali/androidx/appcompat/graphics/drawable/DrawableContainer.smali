.class Landroidx/appcompat/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;,
        Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastIndex:I

.field private mMutated:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 73
    move-object v1, v0

    const/16 v2, 0xff

    iput v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 76
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 77
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 1172
    return-void
.end method

.method private initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    if-nez v4, :cond_0

    .line 495
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 500
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 502
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v4, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v4, :cond_1

    .line 503
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 505
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v4, :cond_6

    .line 507
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 516
    :cond_2
    :goto_0
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->isVisible()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v4

    .line 517
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 518
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 519
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    .line 520
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 521
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    .line 522
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v4

    .line 524
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_4

    .line 525
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 527
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    move-object v2, v4

    .line 528
    .local v2, "hotspotBounds":Landroid/graphics/Rect;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_5

    move-object v4, v2

    if-eqz v4, :cond_5

    .line 529
    move-object v4, v1

    move-object v5, v2

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :cond_5
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 534
    .line 535
    return-void

    .line 509
    .end local v2    # "hotspotBounds":Landroid/graphics/Rect;
    :cond_6
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    if-eqz v4, :cond_7

    .line 510
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {v4, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 512
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    if-eqz v4, :cond_2

    .line 513
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 533
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    move-object v4, v3

    throw v4
.end method

.method private needsMirroring()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static resolveDensity(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1207
    move-object v0, p0

    .local v0, "r":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "parentDensity":I
    move-object v3, v0

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    move v2, v3

    .line 1208
    .local v2, "densityDpi":I
    move v3, v2

    if-nez v3, :cond_1

    const/16 v3, 0xa0

    :goto_1
    move v0, v3

    .end local v0    # "r":Landroid/content/res/Resources;
    return v0

    .line 1207
    .end local v2    # "densityDpi":I
    .restart local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    .line 1208
    .restart local v2    # "densityDpi":I
    :cond_1
    move v3, v2

    goto :goto_1
.end method


# virtual methods
.method animate(Z)V
    .locals 12

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "schedule":Z
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-wide v2, v6

    .line 540
    .local v2, "now":J
    const/4 v6, 0x0

    move v4, v6

    .line 541
    .local v4, "animating":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 542
    move-object v6, v0

    iget-wide v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 543
    move-object v6, v0

    iget-wide v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 544
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 545
    move-object v6, v0

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 556
    :cond_0
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    .line 557
    move-object v6, v0

    iget-wide v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 558
    move-object v6, v0

    iget-wide v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    .line 559
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v6

    .line 560
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 561
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 562
    move-object v6, v0

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 573
    :cond_1
    :goto_1
    move v6, v1

    if-eqz v6, :cond_2

    move v6, v4

    if-eqz v6, :cond_2

    .line 574
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    move-wide v8, v2

    const-wide/16 v10, 0x10

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 576
    :cond_2
    return-void

    .line 547
    :cond_3
    move-object v6, v0

    iget-wide v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    move-wide v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xff

    mul-long/2addr v6, v8

    long-to-int v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v6, v7

    move v5, v6

    .line 549
    .local v5, "animAlpha":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xff

    move v8, v5

    rsub-int v7, v8, 0xff

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v7, v8

    const/16 v8, 0xff

    div-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 550
    const/4 v6, 0x1

    move v4, v6

    .line 551
    goto :goto_0

    .line 554
    .end local v5    # "animAlpha":I
    :cond_4
    move-object v6, v0

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_0

    .line 564
    :cond_5
    move-object v6, v0

    iget-wide v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    move-wide v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xff

    mul-long/2addr v6, v8

    long-to-int v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v6, v7

    move v5, v6

    .line 566
    .restart local v5    # "animAlpha":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v7, v8

    const/16 v8, 0xff

    div-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 567
    const/4 v6, 0x1

    move v4, v6

    .line 568
    goto :goto_1

    .line 571
    .end local v5    # "animAlpha":I
    :cond_6
    move-object v6, v0

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_1
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "theme":Landroid/content/res/Resources$Theme;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 599
    return-void
.end method

.method public canApplyTheme()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0
.end method

.method clearMutated()V
    .locals 3

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->clearMutated()V

    .line 640
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 641
    return-void
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 2

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 90
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 93
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 100
    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v2

    iput v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 611
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v0, v1

    .line 613
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return-object v0
.end method

.method getCurrentIndex()I
    .locals 2

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "outRect":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 300
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v1

    move v0, v1

    .line 348
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v1

    move v0, v1

    .line 340
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v1

    move v0, v1

    .line 364
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v1

    move v0, v1

    .line 356
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x2

    .line 409
    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0

    .line 408
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 409
    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v1

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 4
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "outline":Landroid/graphics/Outline;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 136
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 138
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "padding":Landroid/graphics/Rect;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v6

    .line 113
    .local v2, "r":Landroid/graphics/Rect;
    move-object v6, v2

    if-eqz v6, :cond_2

    .line 114
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->top:I

    or-int/2addr v6, v7

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v6, v7

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->right:I

    or-int/2addr v6, v7

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 123
    .local v3, "result":Z
    :goto_1
    move-object v6, v0

    invoke-direct {v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->needsMirroring()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move v4, v6

    .line 125
    .local v4, "left":I
    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move v5, v6

    .line 126
    .local v5, "right":I
    move-object v6, v1

    move v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 127
    move-object v6, v1

    move v7, v4

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 129
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_0
    move v6, v3

    move v0, v6

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0

    .line 115
    .end local v3    # "result":Z
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 117
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 118
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    move v3, v6

    .restart local v3    # "result":Z
    goto :goto_1

    .line 120
    .end local v3    # "result":Z
    :cond_3
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    move v3, v6

    .restart local v3    # "result":Z
    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v2, :cond_0

    .line 373
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    .line 375
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 376
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    const/4 v2, 0x0

    move v1, v2

    .line 253
    .local v1, "changed":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 254
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 255
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 256
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 257
    const/4 v2, 0x1

    move v1, v2

    .line 259
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 260
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 261
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v2, :cond_1

    .line 262
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 265
    :cond_1
    move-object v2, v0

    iget-wide v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 266
    move-object v2, v0

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 267
    const/4 v2, 0x1

    move v1, v2

    .line 269
    :cond_2
    move-object v2, v0

    iget-wide v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 270
    move-object v2, v0

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 271
    const/4 v2, 0x1

    move v1, v2

    .line 273
    :cond_3
    move v2, v1

    if-eqz v2, :cond_4

    .line 274
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 276
    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-super {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v0

    if-ne v2, v3, :cond_0

    .line 620
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-result-object v2

    move-object v1, v2

    .line 621
    .local v1, "clone":Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    .line 622
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 623
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 625
    .end local v1    # "clone":Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 222
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 224
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 225
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 5

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "layoutDirection":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCurrentIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->setLayoutDirection(II)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "level":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 320
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    move v0, v2

    .line 325
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :goto_0
    return v0

    .line 322
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 323
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 325
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 4

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "state":[I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 309
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    move v0, v2

    .line 314
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :goto_0
    return v0

    .line 311
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 312
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 314
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 11
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "what":Ljava/lang/Runnable;
    move-wide v3, p3

    .local v3, "when":J
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v5, v6, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 383
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    move-object v6, v0

    move-object v7, v2

    move-wide v8, v3

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 385
    :cond_0
    return-void
.end method

.method selectDrawable(I)Z
    .locals 11

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "index":I
    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ne v5, v6, :cond_0

    .line 431
    const/4 v5, 0x0

    move v0, v5

    .line 485
    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :goto_0
    return v0

    .line 433
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 439
    .local v2, "now":J
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    if-lez v5, :cond_8

    .line 440
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 441
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v5

    .line 443
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 444
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 445
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    iput v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 446
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 455
    :cond_2
    :goto_1
    move v5, v1

    if-ltz v5, :cond_9

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge v5, v6, :cond_9

    .line 456
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 457
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 458
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 459
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 460
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v5, :cond_3

    .line 461
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 463
    :cond_3
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 465
    .line 469
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_2
    move-object v5, v0

    iget-wide v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    move-object v5, v0

    iget-wide v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    .line 470
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v5, :cond_a

    .line 471
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainer;)V

    iput-object v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 482
    :goto_3
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 484
    :cond_6
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 485
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    .line 448
    :cond_7
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 449
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 450
    move-object v5, v0

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_1

    .line 452
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 453
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v5

    goto/16 :goto_1

    .line 466
    :cond_9
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 467
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    goto :goto_2

    .line 479
    :cond_a
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public setAlpha(I)V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 143
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 144
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 145
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 146
    move-object v2, v0

    iget-wide v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 147
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "mirrored":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 237
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 238
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 239
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 173
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 174
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 175
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 176
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    :cond_0
    return-void
.end method

.method protected setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 5

    .prologue
    .line 1155
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "state":Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1157
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ltz v2, :cond_0

    .line 1158
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 1159
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1160
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    :cond_0
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 1166
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 1167
    return-void
.end method

.method setCurrentIndex(I)V
    .locals 4

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    move-result v2

    .line 414
    return-void
.end method

.method public setDither(Z)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "dither":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 163
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 164
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 165
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "ms":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 207
    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "ms":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 217
    return-void
.end method

.method public setHotspot(FF)V
    .locals 6

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 281
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 283
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 13

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move/from16 v3, p3

    .local v3, "right":I
    move/from16 v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 288
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 292
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 293
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 295
    :cond_0
    return-void

    .line 290
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 184
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 185
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 186
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 188
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 193
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 194
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 195
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 7

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move v1, p1

    .local v1, "visible":Z
    move v2, p2

    .local v2, "restart":Z
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v4

    move v3, v4

    .line 397
    .local v3, "changed":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 398
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v4

    .line 400
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 401
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v4

    .line 403
    :cond_1
    move v4, v3

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "what":Ljava/lang/Runnable;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 390
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 392
    :cond_0
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    .line 593
    return-void
.end method
