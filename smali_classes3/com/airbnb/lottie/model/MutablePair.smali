.class public Lcom/airbnb/lottie/model/MutablePair;
.super Ljava/lang/Object;
.source "MutablePair.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field first:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field second:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "a":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "b":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "a":Ljava/lang/Object;
    return v0

    .restart local v0    # "a":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Landroidx/core/util/Pair;

    if-nez v3, :cond_0

    .line 34
    const/4 v3, 0x0

    move v0, v3

    .line 37
    .end local v0    # "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    :goto_0
    return v0

    .line 36
    .restart local v0    # "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/core/util/Pair;

    move-object v2, v3

    .line 37
    .local v2, "p":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<**>;"
    move-object v3, v2

    iget-object v3, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/airbnb/lottie/model/MutablePair;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/airbnb/lottie/model/MutablePair;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    move-object v1, p1

    .local v1, "first":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "second":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    .line 20
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pair{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/MutablePair;, "Lcom/airbnb/lottie/model/MutablePair<TT;>;"
    return-object v0
.end method
