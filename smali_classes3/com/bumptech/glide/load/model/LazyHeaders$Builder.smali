.class public final Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
.super Ljava/lang/Object;
.source "LazyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/LazyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "identity"

.field private static final DEFAULT_HEADERS:Ljava/util/Map;
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

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static final ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private copyOnModify:Z

.field private headers:Ljava/util/Map;
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

.field private isEncodingDefault:Z

.field private isUserAgentDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 95
    const-string/jumbo v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v1

    .line 106
    .local v0, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    sget-object v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    move-object v1, v0

    const-string/jumbo v2, "User-Agent"

    new-instance v3, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    :cond_0
    move-object v1, v0

    const-string/jumbo v2, "Accept-Encoding"

    new-instance v3, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "identity"

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 117
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 118
    move-object v1, v0

    sget-object v2, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    iput-object v2, v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 119
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    .line 120
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    return-void
.end method

.method private copyHeaders()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    new-instance v4, Ljava/util/HashMap;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v4

    .line 222
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 223
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 224
    goto :goto_0

    .line 225
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    return-object v0
.end method

.method private copyIfNecessary()V
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    if-eqz v1, :cond_0

    .line 206
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 207
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyHeaders()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 209
    :cond_0
    return-void
.end method

.method private getFactories(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    .line 197
    .local v2, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 198
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 199
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 201
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "factory":Lcom/bumptech/glide/load/model/LazyHeaderFactory;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Accept-Encoding"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "User-Agent"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v3

    move-object v0, v3

    .line 153
    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    :goto_0
    return-object v0

    .line 151
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    :cond_2
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    .line 152
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 153
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 9

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    return-object v0
.end method

.method public build()Lcom/bumptech/glide/load/model/LazyHeaders;
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 216
    new-instance v1, Lcom/bumptech/glide/load/model/LazyHeaders;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/model/LazyHeaders;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "factory":Lcom/bumptech/glide/load/model/LazyHeaderFactory;
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    .line 177
    move-object v4, v2

    if-nez v4, :cond_2

    .line 178
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 185
    :goto_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Accept-Encoding"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    .line 188
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "User-Agent"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    .line 192
    :cond_1
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    return-object v0

    .line 180
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    :cond_2
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 181
    .local v3, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 182
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 9

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    :cond_0
    new-instance v5, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
