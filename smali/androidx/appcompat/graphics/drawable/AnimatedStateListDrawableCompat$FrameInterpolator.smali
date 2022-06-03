.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawableCompat.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInterpolator"
.end annotation


# instance fields
.field private mFrameTimes:[I

.field private mFrames:I

.field private mTotalDuration:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .locals 6

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/AnimationDrawable;
    move v2, p2

    .local v2, "reversed":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 732
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    move-result v3

    .line 733
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    move v1, p1

    .local v1, "input":F
    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    move v2, v8

    .line 759
    .local v2, "elapsed":I
    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrames:I

    move v3, v8

    .line 760
    .local v3, "frameCount":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    move-object v4, v8

    .line 762
    .local v4, "frameTimes":[I
    move v8, v2

    move v5, v8

    .line 763
    .local v5, "remaining":I
    const/4 v8, 0x0

    move v6, v8

    .line 764
    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v3

    if-ge v8, v9, :cond_0

    move v8, v5

    move-object v9, v4

    move v10, v6

    aget v9, v9, v10

    if-lt v8, v9, :cond_0

    .line 765
    move v8, v5

    move-object v9, v4

    move v10, v6

    aget v9, v9, v10

    sub-int/2addr v8, v9

    move v5, v8

    .line 766
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 770
    :cond_0
    move v8, v6

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 771
    move v8, v5

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v7, v8

    .line 775
    .local v7, "frameElapsed":F
    :goto_1
    move v8, v6

    int-to-float v8, v8

    move v9, v3

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v9, v7

    add-float/2addr v8, v9

    move v0, v8

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    return v0

    .line 773
    .end local v7    # "frameElapsed":F
    .restart local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    :cond_1
    const/4 v8, 0x0

    move v7, v8

    .restart local v7    # "frameElapsed":F
    goto :goto_1
.end method

.method getTotalDuration()I
    .locals 2

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    return v0
.end method

.method updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .locals 11

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/AnimationDrawable;
    move v2, p2

    .local v2, "reversed":Z
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v8

    move v3, v8

    .line 737
    .local v3, "frameCount":I
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrames:I

    .line 738
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    array-length v8, v8

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 739
    :cond_0
    move-object v8, v0

    move v9, v3

    new-array v9, v9, [I

    iput-object v9, v8, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    .line 741
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    move-object v4, v8

    .line 742
    .local v4, "frameTimes":[I
    const/4 v8, 0x0

    move v5, v8

    .line 743
    .local v5, "totalDuration":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 744
    move-object v8, v1

    move v9, v2

    if-eqz v9, :cond_2

    move v9, v3

    move v10, v6

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_1
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v8

    move v7, v8

    .line 745
    .local v7, "duration":I
    move-object v8, v4

    move v9, v6

    move v10, v7

    aput v10, v8, v9

    .line 746
    move v8, v5

    move v9, v7

    add-int/2addr v8, v9

    move v5, v8

    .line 743
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 744
    .end local v7    # "duration":I
    :cond_2
    move v9, v6

    goto :goto_1

    .line 748
    :cond_3
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    .line 749
    move v8, v5

    move v0, v8

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    return v0
.end method
