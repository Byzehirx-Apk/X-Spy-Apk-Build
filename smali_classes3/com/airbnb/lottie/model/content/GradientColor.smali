.class public Lcom/airbnb/lottie/model/content/GradientColor;
.super Ljava/lang/Object;
.source "GradientColor.java"


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method public constructor <init>([F[I)V
    .locals 5

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object v1, p1

    .local v1, "positions":[F
    move-object v2, p2

    .local v2, "colors":[I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 12
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 13
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 14
    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientColor;
    return-object v0
.end method

.method public getPositions()[F
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientColor;
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/GradientColor;
    return v0
.end method

.method public lerp(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;F)V
    .locals 12

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object v1, p1

    .local v1, "gc1":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object v2, p2

    .local v2, "gc2":Lcom/airbnb/lottie/model/content/GradientColor;
    move v3, p3

    .local v3, "progress":F
    move-object v5, v1

    iget-object v5, v5, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v5, v5

    move-object v6, v2

    iget-object v6, v6, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v6, v6

    if-eq v5, v6, :cond_0

    .line 30
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    iget-object v8, v8, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 34
    :cond_0
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v1

    iget-object v6, v6, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 35
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    move v8, v4

    aget v7, v7, v8

    move-object v8, v2

    iget-object v8, v8, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    move v9, v4

    aget v8, v8, v9

    move v9, v3

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v7

    aput v7, v5, v6

    .line 36
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    move v6, v4

    move v7, v3

    move-object v8, v1

    iget-object v8, v8, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    move v9, v4

    aget v8, v8, v9

    move-object v9, v2

    iget-object v9, v9, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    move v10, v4

    aget v9, v9, v10

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v7

    aput v7, v5, v6

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method
