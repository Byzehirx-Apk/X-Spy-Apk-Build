.class public Lorg/jose4j/jca/ProviderContext;
.super Ljava/lang/Object;
.source "ProviderContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jca/ProviderContext$Context;
    }
.end annotation


# instance fields
.field private generalProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

.field private secureRandom:Ljava/security/SecureRandom;

.field private suppliedKeyProviderContext:Lorg/jose4j/jca/ProviderContext$Context;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v1, v0

    new-instance v2, Lorg/jose4j/jca/ProviderContext$Context;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/jose4j/jca/ProviderContext$Context;-><init>(Lorg/jose4j/jca/ProviderContext;)V

    iput-object v2, v1, Lorg/jose4j/jca/ProviderContext;->suppliedKeyProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

    .line 53
    move-object v1, v0

    new-instance v2, Lorg/jose4j/jca/ProviderContext$Context;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/jose4j/jca/ProviderContext$Context;-><init>(Lorg/jose4j/jca/ProviderContext;)V

    iput-object v2, v1, Lorg/jose4j/jca/ProviderContext;->generalProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

    .line 100
    return-void
.end method


# virtual methods
.method public getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jca/ProviderContext;->generalProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext;
    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jca/ProviderContext;->secureRandom:Ljava/security/SecureRandom;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext;
    return-object v0
.end method

.method public getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jca/ProviderContext;->suppliedKeyProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext;
    return-object v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext;
    move-object v1, p1

    .local v1, "secureRandom":Ljava/security/SecureRandom;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext;->secureRandom:Ljava/security/SecureRandom;

    .line 94
    return-void
.end method
