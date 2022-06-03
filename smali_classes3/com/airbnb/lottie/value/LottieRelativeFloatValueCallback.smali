.class public Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "LottieRelativeFloatValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 4
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
    move-object v1, p1

    .local v1, "staticValue":Ljava/lang/Float;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
    move-object v1, p1

    .local v1, "frameInfo":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<Ljava/lang/Float;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
    return-object v0
.end method

.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
    move-object v1, p1

    .local v1, "frameInfo":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<Ljava/lang/Float;>;"
    move-object v4, v1

    .line 24
    invoke-virtual {v4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v1

    .line 25
    invoke-virtual {v5}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v6, v1

    .line 26
    invoke-virtual {v6}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v6

    .line 23
    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    move v2, v4

    .line 28
    .local v2, "originalValue":F
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v3, v4

    .line 29
    .local v3, "offset":F
    move v4, v2

    move v5, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
    return-object v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
    return-object v0
.end method
