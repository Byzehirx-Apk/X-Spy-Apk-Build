.class public Lorg/jose4j/lang/BouncyCastleProviderHelp;
.super Ljava/lang/Object;
.source "BouncyCastleProviderHelp.java"


# static fields
.field private static final BC_PROVIDER_FQCN:Ljava/lang/String; = "org.bouncycastle.jce.provider.BouncyCastleProvider"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/BouncyCastleProviderHelp;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableBouncyCastleProvider()Z
    .locals 7

    .prologue
    .line 28
    :try_start_0
    const-string/jumbo v5, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v0, v5

    .line 30
    .local v0, "bcProvider":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v5

    move-object v1, v5

    .local v1, "arr$":[Ljava/security/Provider;
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .local v2, "len$":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i$":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 32
    .local v4, "provider":Ljava/security/Provider;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    const/4 v5, 0x1

    move v0, v5

    .line 44
    .end local v0    # "bcProvider":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    .end local v4    # "provider":Ljava/security/Provider;
    :goto_1
    return v0

    .line 30
    .restart local v0    # "bcProvider":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    .restart local v4    # "provider":Ljava/security/Provider;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v4    # "provider":Ljava/security/Provider;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider;

    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 39
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1

    .line 41
    .end local v1    # "arr$":[Ljava/security/Provider;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method
