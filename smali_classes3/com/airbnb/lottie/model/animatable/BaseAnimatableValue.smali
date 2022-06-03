.class abstract Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.super Ljava/lang/Object;
.source "BaseAnimatableValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
        "<TV;TO;>;"
    }
.end annotation


# instance fields
.field final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    new-instance v3, Lcom/airbnb/lottie/value/Keyframe;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 19
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    move-object v1, p1

    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<TV;>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getKeyframes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    return-object v0
.end method

.method public isStatic()Z
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v1}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 36
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    move-object v2, v1

    const-string/jumbo v3, "values="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 39
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    return-object v0
.end method
