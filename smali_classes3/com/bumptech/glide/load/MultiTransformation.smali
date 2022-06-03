.class public Lcom/bumptech/glide/load/MultiTransformation;
.super Ljava/lang/Object;
.source "MultiTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private final transformations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    move-object v1, p1

    .local v1, "transformationList":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/bumptech/glide/load/Transformation<TT;>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "MultiTransformation must contain at least one Transformation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 30
    return-void
.end method

.method public varargs constructor <init>([Lcom/bumptech/glide/load/Transformation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    move-object v1, p1

    .local v1, "transformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "MultiTransformation must contain at least one Transformation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 23
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/MultiTransformation;->id:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 50
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/Transformation;

    move-object v3, v4

    .line 51
    .local v3, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v5}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 52
    goto :goto_0

    .line 53
    .end local v3    # "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bumptech/glide/load/MultiTransformation;->id:Ljava/lang/String;

    .line 55
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/MultiTransformation;->id:Ljava/lang/String;

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move v2, p2

    .local v2, "outWidth":I
    move v3, p3

    .local v3, "outHeight":I
    move-object v8, v1

    move-object v4, v8

    .line 36
    .local v4, "previous":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/load/Transformation;

    move-object v6, v8

    .line 37
    .local v6, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    move-object v8, v6

    move-object v9, v4

    move v10, v2

    move v11, v3

    invoke-interface {v8, v9, v10, v11}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v8

    move-object v7, v8

    .line 38
    .local v7, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v8, v4

    if-eqz v8, :cond_0

    move-object v8, v4

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 39
    move-object v8, v4

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 41
    :cond_0
    move-object v8, v7

    move-object v4, v8

    .line 42
    goto :goto_0

    .line 43
    .end local v6    # "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    .end local v7    # "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :cond_1
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    return-object v0
.end method
