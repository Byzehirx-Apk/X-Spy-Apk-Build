.class public final Lcom/bumptech/glide/load/model/LazyHeaders;
.super Ljava/lang/Object;
.source "LazyHeaders.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;,
        Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    }
.end annotation


# instance fields
.field private volatile combinedHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    move-object v1, p1

    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    .line 26
    return-void
.end method

.method private generateHeaders()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    new-instance v8, Ljava/util/HashMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v1, v8

    .line 44
    .local v1, "combinedHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v3, v8

    .line 45
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v8

    .line 46
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v5, v8

    .line 47
    .local v5, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 48
    move-object v8, v5

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/load/model/LazyHeaderFactory;

    move-object v7, v8

    .line 49
    .local v7, "factory":Lcom/bumptech/glide/load/model/LazyHeaderFactory;
    move-object v8, v4

    move-object v9, v7

    invoke-interface {v9}, Lcom/bumptech/glide/load/model/LazyHeaderFactory;->buildHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 50
    move v8, v6

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_0

    .line 51
    move-object v8, v4

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 47
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    .end local v7    # "factory":Lcom/bumptech/glide/load/model/LazyHeaderFactory;
    :cond_1
    move-object v8, v1

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 55
    goto :goto_0

    .line 57
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    .end local v6    # "i":I
    :cond_2
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders;

    if-eqz v3, :cond_0

    .line 70
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/model/LazyHeaders;

    move-object v2, v3

    .line 71
    .local v2, "other":Lcom/bumptech/glide/load/model/LazyHeaders;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .line 73
    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    .end local v2    # "other":Lcom/bumptech/glide/load/model/LazyHeaders;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 31
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 32
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 33
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/load/model/LazyHeaders;->generateHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    .line 35
    :cond_0
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    return-object v0

    .line 35
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LazyHeaders{headers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders;
    return-object v0
.end method
