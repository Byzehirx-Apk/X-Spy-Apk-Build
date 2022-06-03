.class public Lorg/jose4j/jwa/AlgorithmFactory;
.super Ljava/lang/Object;
.source "AlgorithmFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lorg/jose4j/jwa/Algorithm;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final algorithms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TA;>;"
        }
    .end annotation
.end field

.field private final log:Lorg/slf4j/Logger;

.field private parameterName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    move-object v1, p1

    .local v1, "parameterName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v3, v0

    new-instance v4, Ljava/util/LinkedHashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lorg/jose4j/jwa/AlgorithmFactory;->algorithms:Ljava/util/Map;

    .line 41
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwa/AlgorithmFactory;->parameterName:Ljava/lang/String;

    .line 42
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v4

    iput-object v4, v3, Lorg/jose4j/jwa/AlgorithmFactory;->log:Lorg/slf4j/Logger;

    .line 43
    return-void
.end method

.method private isAvailable(Lorg/jose4j/jwa/Algorithm;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    move-object v1, p1

    .local v1, "algorithm":Lorg/jose4j/jwa/Algorithm;, "TA;"
    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Lorg/jose4j/jwa/Algorithm;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 91
    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    :goto_0
    return v0

    .line 88
    .restart local v0    # "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 90
    .local v2, "e":Ljava/lang/Throwable;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwa/AlgorithmFactory;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected problem checking for availability of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lorg/jose4j/jwa/Algorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-static {v5}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 91
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    move-object v1, p1

    .local v1, "algorithmIdentifier":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwa/AlgorithmFactory;->algorithms:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jose4j/jwa/Algorithm;

    move-object v2, v3

    .line 49
    .local v2, "algo":Lorg/jose4j/jwa/Algorithm;, "TA;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 51
    new-instance v3, Lorg/jose4j/lang/InvalidAlgorithmException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is an unknown, unsupported or unavailable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwa/AlgorithmFactory;->parameterName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " algorithm (not one of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwa/AlgorithmFactory;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    return-object v0
.end method

.method public getSupportedAlgorithms()Ljava/util/Set;
    .locals 2
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
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwa/AlgorithmFactory;->algorithms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    return-object v0
.end method

.method public isAvailable(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    move-object v1, p1

    .local v1, "algorithmIdentifier":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwa/AlgorithmFactory;->algorithms:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    return v0
.end method

.method public registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    move-object v1, p1

    .local v1, "algorithm":Lorg/jose4j/jwa/Algorithm;, "TA;"
    move-object v3, v1

    invoke-interface {v3}, Lorg/jose4j/jwa/Algorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 71
    .local v2, "algId":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/jose4j/jwa/AlgorithmFactory;->isAvailable(Lorg/jose4j/jwa/Algorithm;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwa/AlgorithmFactory;->algorithms:Ljava/util/Map;

    move-object v4, v2

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 74
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwa/AlgorithmFactory;->log:Lorg/slf4j/Logger;

    const-string/jumbo v4, "{} registered for {} algorithm {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactory;->parameterName:Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwa/AlgorithmFactory;->log:Lorg/slf4j/Logger;

    const-string/jumbo v4, "{} is unavailable so will not be registered for {} algorithms."

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwa/AlgorithmFactory;->parameterName:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterAlgorithm(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<TA;>;"
    move-object v1, p1

    .local v1, "algorithmIdentifier":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwa/AlgorithmFactory;->algorithms:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 99
    return-void
.end method
