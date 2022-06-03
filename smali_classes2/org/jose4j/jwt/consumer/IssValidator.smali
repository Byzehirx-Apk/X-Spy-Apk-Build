.class public Lorg/jose4j/jwt/consumer/IssValidator;
.super Ljava/lang/Object;
.source "IssValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# instance fields
.field private expectedIssuers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requireIssuer:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/IssValidator;
    move-object v1, p1

    .local v1, "expectedIssuer":Ljava/lang/String;
    move v2, p2

    .local v2, "requireIssuer":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 37
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    .line 39
    :cond_0
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/jose4j/jwt/consumer/IssValidator;->requireIssuer:Z

    .line 40
    return-void
.end method

.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/IssValidator;
    move v1, p1

    .local v1, "requireIssuer":Z
    move-object v2, p2

    .local v2, "expectedIssuers":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lorg/jose4j/jwt/consumer/IssValidator;->requireIssuer:Z

    .line 45
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    array-length v3, v3

    if-lez v3, :cond_0

    .line 47
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    .line 48
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v3

    .line 50
    :cond_0
    return-void
.end method

.method private expectedValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/IssValidator;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/IssValidator;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/IssValidator;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/IssValidator;
    move-object v1, p1

    .local v1, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v3, v1

    invoke-virtual {v3}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jose4j/jwt/JwtClaims;->getIssuer()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 57
    .local v2, "issuer":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 59
    move-object v3, v0

    iget-boolean v3, v3, Lorg/jose4j/jwt/consumer/IssValidator;->requireIssuer:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xb

    const-string/jumbo v6, "No Issuer (iss) claim present."

    invoke-direct {v4, v5, v6}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    :goto_0
    move-object v0, v3

    .line 67
    .end local v0    # "this":Lorg/jose4j/jwt/consumer/IssValidator;
    :goto_1
    return-object v0

    .line 59
    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/IssValidator;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 62
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 64
    new-instance v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xc

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Issuer (iss) claim value ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") doesn\'t match expected value of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-direct {v7}, Lorg/jose4j/jwt/consumer/IssValidator;->expectedValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    .line 67
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method
