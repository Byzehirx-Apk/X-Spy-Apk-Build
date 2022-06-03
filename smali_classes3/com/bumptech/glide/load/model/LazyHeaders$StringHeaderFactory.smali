.class final Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
.super Ljava/lang/Object;
.source "LazyHeaders.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/LazyHeaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/LazyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringHeaderFactory"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 234
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public buildHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    if-eqz v3, :cond_0

    .line 252
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    move-object v2, v3

    .line 253
    .local v2, "other":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .line 255
    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    .end local v2    # "other":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StringHeaderFactory{value=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    return-object v0
.end method
