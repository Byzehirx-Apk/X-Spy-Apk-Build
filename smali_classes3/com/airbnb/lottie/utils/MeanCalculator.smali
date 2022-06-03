.class public Lcom/airbnb/lottie/utils/MeanCalculator;
.super Ljava/lang/Object;
.source "MeanCalculator.java"


# instance fields
.field private n:I

.field private sum:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/MeanCalculator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 6

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/MeanCalculator;
    move v1, p1

    .local v1, "number":F
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/airbnb/lottie/utils/MeanCalculator;->sum:F

    move v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->sum:F

    .line 13
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    .line 14
    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    .line 15
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/airbnb/lottie/utils/MeanCalculator;->sum:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->sum:F

    .line 16
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    .line 18
    :cond_0
    return-void
.end method

.method public getMean()F
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/MeanCalculator;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    if-nez v1, :cond_0

    .line 22
    const/4 v1, 0x0

    move v0, v1

    .line 24
    .end local v0    # "this":Lcom/airbnb/lottie/utils/MeanCalculator;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/utils/MeanCalculator;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/MeanCalculator;->sum:F

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method
