.class public Lorg/jose4j/jwt/consumer/AudValidator;
.super Ljava/lang/Object;
.source "AudValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final MISSING_AUD:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;


# instance fields
.field private acceptableAudiences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requireAudience:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "No Audience (aud) claim present."

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/AudValidator;->MISSING_AUD:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/AudValidator;
    move-object v1, p1

    .local v1, "acceptableAudiences":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move v2, p2

    .local v2, "requireAudience":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    .line 38
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/jose4j/jwt/consumer/AudValidator;->requireAudience:Z

    .line 39
    return-void
.end method


# virtual methods
.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/AudValidator;
    move-object v1, p1

    .local v1, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v7, v1

    invoke-virtual {v7}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object v7

    move-object v2, v7

    .line 46
    .local v2, "jwtClaims":Lorg/jose4j/jwt/JwtClaims;
    move-object v7, v2

    invoke-virtual {v7}, Lorg/jose4j/jwt/JwtClaims;->hasAudience()Z

    move-result v7

    if-nez v7, :cond_1

    .line 48
    move-object v7, v0

    iget-boolean v7, v7, Lorg/jose4j/jwt/consumer/AudValidator;->requireAudience:Z

    if-eqz v7, :cond_0

    sget-object v7, Lorg/jose4j/jwt/consumer/AudValidator;->MISSING_AUD:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    :goto_0
    move-object v0, v7

    .line 88
    .end local v0    # "this":Lorg/jose4j/jwt/consumer/AudValidator;
    :goto_1
    return-object v0

    .line 48
    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/AudValidator;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 51
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Lorg/jose4j/jwt/JwtClaims;->getAudience()Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 53
    .local v3, "audiences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move v4, v7

    .line 54
    .local v4, "ok":Z
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 56
    .local v6, "audience":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 58
    const/4 v7, 0x1

    move v4, v7

    .line 60
    :cond_2
    goto :goto_2

    .line 62
    .end local v6    # "audience":Ljava/lang/String;
    :cond_3
    move v7, v4

    if-nez v7, :cond_6

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v7

    .line 65
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v7, v5

    const-string/jumbo v8, "Audience (aud) claim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 66
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 68
    move-object v7, v5

    const-string/jumbo v8, " present in the JWT but no expected audience value(s) were provided to the JWT Consumer."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 74
    :goto_3
    move-object v7, v5

    const-string/jumbo v8, " Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 75
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 77
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 83
    :goto_4
    move-object v7, v5

    const-string/jumbo v8, " as an aud value."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 85
    new-instance v7, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x8

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_1

    .line 72
    :cond_4
    move-object v7, v5

    const-string/jumbo v8, " doesn\'t contain an acceptable identifier."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_3

    .line 81
    :cond_5
    move-object v7, v5

    const-string/jumbo v8, "one of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_4

    .line 88
    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_1
.end method
