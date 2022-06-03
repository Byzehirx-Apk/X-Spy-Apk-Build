.class public Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "LottieRelativeIntegerValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;
    move-object v1, p1

    .local v1, "frameInfo":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<Ljava/lang/Integer;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;
    return-object v0
.end method

.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;
    move-object v1, p1

    .local v1, "frameInfo":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<Ljava/lang/Integer;>;"
    move-object v4, v1

    .line 14
    invoke-virtual {v4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, v1

    .line 15
    invoke-virtual {v5}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, v1

    .line 16
    invoke-virtual {v6}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v6

    .line 13
    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(IIF)I

    move-result v4

    move v2, v4

    .line 18
    .local v2, "originalValue":I
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;->getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    .line 19
    .local v3, "newValue":I
    move v4, v2

    move v5, v3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;
    return-object v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;
    return-object v0
.end method
