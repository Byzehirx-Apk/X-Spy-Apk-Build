.class public Lorg/jose4j/jwt/consumer/InvalidJwtException;
.super Ljava/lang/Exception;
.source "InvalidJwtException.java"


# instance fields
.field private details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;",
            ">;"
        }
    .end annotation
.end field

.field private jwtContext:Lorg/jose4j/jwt/consumer/JwtContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;",
            ">;",
            "Lorg/jose4j/jwt/consumer/JwtContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "details":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;>;"
    move-object v3, p3

    .local v3, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    move-object v4, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    .line 34
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    .line 35
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/jose4j/jwt/consumer/InvalidJwtException;->jwtContext:Lorg/jose4j/jwt/consumer/JwtContext;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "detail":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    move-object v3, p3

    .local v3, "cause":Ljava/lang/Throwable;
    move-object v4, p4

    .local v4, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    move-object v5, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    .line 41
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/jose4j/jwt/consumer/InvalidJwtException;->jwtContext:Lorg/jose4j/jwt/consumer/JwtContext;

    .line 42
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public getErrorDetails()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    return-object v0
.end method

.method public getJwtContext()Lorg/jose4j/jwt/consumer/JwtContext;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/InvalidJwtException;->jwtContext:Lorg/jose4j/jwt/consumer/JwtContext;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 108
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    invoke-super {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    move-object v2, v1

    const-string/jumbo v3, " Additional details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 112
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    return-object v0
.end method

.method public hasErrorCode(I)Z
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    move v1, p1

    .local v1, "code":I
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v3, v4

    .line 61
    .local v3, "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    move v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;->getErrorCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 63
    const/4 v4, 0x1

    move v0, v4

    .line 66
    .end local v0    # "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    .end local v3    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    :goto_1
    return v0

    .line 65
    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    .restart local v3    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    :cond_0
    goto :goto_0

    .line 66
    .end local v3    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public hasExpired()Z
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/consumer/InvalidJwtException;->hasErrorCode(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    return v0
.end method
