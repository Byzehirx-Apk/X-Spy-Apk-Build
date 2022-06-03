.class public Lorg/slf4j/helpers/BasicMDCAdapter;
.super Ljava/lang/Object;
.source "BasicMDCAdapter.java"

# interfaces
.implements Lorg/slf4j/spi/MDCAdapter;


# instance fields
.field private inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v1, v0

    new-instance v2, Lorg/slf4j/helpers/BasicMDCAdapter$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/slf4j/helpers/BasicMDCAdapter$1;-><init>(Lorg/slf4j/helpers/BasicMDCAdapter;)V

    iput-object v2, v1, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v2}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v1, v2

    .line 108
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 109
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 110
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v2}, Ljava/lang/InheritableThreadLocal;->remove()V

    .line 112
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v3}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v2, v3

    .line 86
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 87
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 89
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getCopyOfContextMap()Ljava/util/Map;
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
    .line 135
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v2}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v1, v2

    .line 136
    .local v1, "oldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 137
    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v2

    .line 139
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v2}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v1, v2

    .line 122
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .line 125
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "val":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 71
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "key cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v4}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v3, v4

    .line 74
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, v3

    if-nez v4, :cond_1

    .line 75
    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 76
    move-object v4, v0

    iget-object v4, v4, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    :cond_1
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v3}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v2, v3

    .line 98
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 99
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 101
    :cond_0
    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter;
    move-object v1, p1

    .local v1, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocal:Ljava/lang/InheritableThreadLocal;

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 145
    return-void
.end method
