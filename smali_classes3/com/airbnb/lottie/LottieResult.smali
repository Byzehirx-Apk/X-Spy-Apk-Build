.class public final Lcom/airbnb/lottie/LottieResult;
.super Ljava/lang/Object;
.source "LottieResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final exception:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 19
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Throwable;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    .line 24
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 37
    const/4 v3, 0x1

    move v0, v3

    .line 49
    .end local v0    # "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    :goto_0
    return v0

    .line 39
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/airbnb/lottie/LottieResult;

    if-nez v3, :cond_1

    .line 40
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 42
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/LottieResult;

    move-object v2, v3

    .line 43
    .local v2, "that":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 46
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v3, v2

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 47
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 49
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    return v0
.end method
