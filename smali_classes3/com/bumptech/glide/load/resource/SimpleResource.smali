.class public Lcom/bumptech/glide/load/resource/SimpleResource;
.super Ljava/lang/Object;
.source "SimpleResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/SimpleResource;, "Lcom/bumptech/glide/load/resource/SimpleResource<TT;>;"
    move-object v1, p1

    .local v1, "data":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 16
    move-object v2, v1

    if-nez v2, :cond_0

    .line 17
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Data must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/SimpleResource;->data:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/SimpleResource;, "Lcom/bumptech/glide/load/resource/SimpleResource<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/SimpleResource;->data:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/SimpleResource;, "Lcom/bumptech/glide/load/resource/SimpleResource<TT;>;"
    return-object v0
.end method

.method public final getSize()I
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/SimpleResource;, "Lcom/bumptech/glide/load/resource/SimpleResource<TT;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/SimpleResource;, "Lcom/bumptech/glide/load/resource/SimpleResource<TT;>;"
    return v0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/load/resource/SimpleResource;, "Lcom/bumptech/glide/load/resource/SimpleResource<TT;>;"
    return-void
.end method
