.class public Lgnu/kawa/util/HashNode;
.super Ljava/lang/Object;
.source "HashNode.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public next:Lgnu/kawa/util/HashNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    .line 57
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/util/HashNode;

    if-nez v3, :cond_0

    .line 73
    const/4 v3, 0x0

    move v0, v3

    .line 78
    .end local v0    # "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    :goto_0
    return v0

    .line 77
    .restart local v0    # "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    :cond_0
    move-object v3, v1

    check-cast v3, Lgnu/kawa/util/HashNode;

    move-object v2, v3

    .line 78
    .local v2, "h2":Lgnu/kawa/util/HashNode;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v3, :cond_2

    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v3, :cond_3

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v3, :cond_3

    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    return v0

    .restart local v0    # "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    move-object v2, v3

    .line 37
    .local v2, "old":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 38
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    return-object v0
.end method
