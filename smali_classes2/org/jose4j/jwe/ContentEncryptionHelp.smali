.class Lorg/jose4j/jwe/ContentEncryptionHelp;
.super Ljava/lang/Object;
.source "ContentEncryptionHelp.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionHelp;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static choseContext(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jca/ProviderContext$Context;
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "headers":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "providerCtx":Lorg/jose4j/jca/ProviderContext;
    move-object v3, v0

    if-eqz v3, :cond_0

    const-string/jumbo v3, "dir"

    move-object v4, v0

    const-string/jumbo v5, "alg"

    invoke-virtual {v4, v5}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 44
    .local v2, "isDir":Z
    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v3

    :goto_1
    move-object v0, v3

    .end local v0    # "headers":Lorg/jose4j/jwx/Headers;
    return-object v0

    .line 43
    .end local v2    # "isDir":Z
    .restart local v0    # "headers":Lorg/jose4j/jwx/Headers;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 44
    .restart local v2    # "isDir":Z
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v3

    goto :goto_1
.end method

.method static getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "headers":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "providerCtx":Lorg/jose4j/jca/ProviderContext;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/jose4j/jwe/ContentEncryptionHelp;->choseContext(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v3

    move-object v2, v3

    .line 32
    .local v2, "ctx":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v3, v2

    invoke-virtual {v3}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "headers":Lorg/jose4j/jwx/Headers;
    return-object v0
.end method

.method static getMacProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "headers":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/jose4j/jwe/ContentEncryptionHelp;->choseContext(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v3

    move-object v2, v3

    .line 38
    .local v2, "ctx":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v3, v2

    invoke-virtual {v3}, Lorg/jose4j/jca/ProviderContext$Context;->getMacProvider()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "headers":Lorg/jose4j/jwx/Headers;
    return-object v0
.end method
