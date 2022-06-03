.class public Lorg/jose4j/http/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lorg/jose4j/http/SimpleResponse;


# instance fields
.field private body:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private statusCode:I

.field private statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Response;
    move v1, p1

    .local v1, "statusCode":I
    move-object v2, p2

    .local v2, "statusMessage":Ljava/lang/String;
    move-object v3, p3

    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v4, p4

    .local v4, "body":Ljava/lang/String;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v8, v0

    move v9, v1

    iput v9, v8, Lorg/jose4j/http/Response;->statusCode:I

    .line 21
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lorg/jose4j/http/Response;->statusMessage:Ljava/lang/String;

    .line 22
    move-object v8, v0

    new-instance v9, Ljava/util/HashMap;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v8, Lorg/jose4j/http/Response;->headers:Ljava/util/Map;

    .line 23
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v6, v8

    .line 25
    .local v6, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v8, v0

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/jose4j/http/Response;->normalizeHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 26
    .local v7, "name":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/http/Response;->headers:Ljava/util/Map;

    move-object v9, v7

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 27
    goto :goto_0

    .line 28
    .end local v6    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "name":Ljava/lang/String;
    :cond_0
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lorg/jose4j/http/Response;->body:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private normalizeHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Response;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/http/Response;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/http/Response;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Response;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/http/Response;->body:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/http/Response;
    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Response;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/http/Response;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/http/Response;
    return-object v0
.end method

.method public getHeaderValues(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Response;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/http/Response;->normalizeHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 53
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/http/Response;->headers:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/http/Response;
    return-object v0
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Response;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/http/Response;->statusCode:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/http/Response;
    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Response;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/http/Response;->statusMessage:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/http/Response;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Response;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SimpleResponse{statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lorg/jose4j/http/Response;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", statusMessage=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/http/Response;->statusMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", headers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/http/Response;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", body=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/http/Response;->body:Ljava/lang/String;

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

    .end local v0    # "this":Lorg/jose4j/http/Response;
    return-object v0
.end method
