.class public Lcom/airbnb/lottie/value/LottieFrameInfo;
.super Ljava/lang/Object;
.source "LottieFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private endFrame:F

.field private endValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private interpolatedKeyframeProgress:F

.field private linearKeyframeProgress:F

.field private overallProgress:F

.field private startFrame:F

.field private startValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndFrame()F
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    return v0
.end method

.method public getEndValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    return-object v0
.end method

.method public getInterpolatedKeyframeProgress()F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    return v0
.end method

.method public getLinearKeyframeProgress()F
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    return v0
.end method

.method public getOverallProgress()F
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    return v0
.end method

.method public getStartFrame()F
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    return v0
.end method

.method public getStartValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    return-object v0
.end method

.method public set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/airbnb/lottie/value/LottieFrameInfo;
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    move v1, p1

    .local v1, "startFrame":F
    move v2, p2

    .local v2, "endFrame":F
    move-object v3, p3

    .local v3, "startValue":Ljava/lang/Object;, "TT;"
    move-object v4, p4

    .local v4, "endValue":Ljava/lang/Object;, "TT;"
    move v5, p5

    .local v5, "linearKeyframeProgress":F
    move/from16 v6, p6

    .local v6, "interpolatedKeyframeProgress":F
    move/from16 v7, p7

    .local v7, "overallProgress":F
    move-object v8, v0

    move v9, v1

    iput v9, v8, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    .line 29
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    .line 30
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    .line 31
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    .line 32
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    .line 33
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    .line 34
    move-object v8, v0

    move v9, v7

    iput v9, v8, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    .line 35
    move-object v8, v0

    move-object v0, v8

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    return-object v0
.end method
