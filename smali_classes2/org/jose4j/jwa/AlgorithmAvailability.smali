.class public Lorg/jose4j/jwa/AlgorithmAvailability;
.super Ljava/lang/Object;
.source "AlgorithmAvailability.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/jose4j/jwa/AlgorithmAvailability;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwa/AlgorithmAvailability;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmAvailability;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "serviceName":Ljava/lang/String;
    move-object v1, p1

    .local v1, "algorithm":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v5}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    move-object v2, v5

    .line 33
    .local v2, "algorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 35
    .local v4, "serviceAlg":Ljava/lang/String;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    const/4 v5, 0x1

    move v0, v5

    .line 42
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v4    # "serviceAlg":Ljava/lang/String;
    :goto_1
    return v0

    .line 39
    .restart local v0    # "serviceName":Ljava/lang/String;
    .restart local v4    # "serviceAlg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 41
    .end local v4    # "serviceAlg":Ljava/lang/String;
    :cond_1
    sget-object v5, Lorg/jose4j/jwa/AlgorithmAvailability;->log:Lorg/slf4j/Logger;

    const-string/jumbo v6, "{} is NOT available for {}. Algorithms available from underlying JCE: {}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v0

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method
