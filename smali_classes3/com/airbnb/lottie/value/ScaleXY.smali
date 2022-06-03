.class public Lcom/airbnb/lottie/value/ScaleXY;
.super Ljava/lang/Object;
.source "ScaleXY.java"


# instance fields
.field private scaleX:F

.field private scaleY:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/ScaleXY;
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    .line 14
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 5

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/ScaleXY;
    move v1, p1

    .local v1, "sx":F
    move v2, p2

    .local v2, "sy":F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 8
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 9
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 10
    return-void
.end method


# virtual methods
.method public equals(FF)Z
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/ScaleXY;
    move v1, p1

    .local v1, "scaleX":F
    move v2, p2

    .local v2, "scaleY":F
    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    move v4, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    move v4, v2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/value/ScaleXY;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/value/ScaleXY;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/ScaleXY;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/ScaleXY;
    return v0
.end method

.method public getScaleY()F
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/ScaleXY;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/ScaleXY;
    return v0
.end method

.method public set(FF)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/ScaleXY;
    move v1, p1

    .local v1, "scaleX":F
    move v2, p2

    .local v2, "scaleY":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 26
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/ScaleXY;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/ScaleXY;
    return-object v0
.end method
