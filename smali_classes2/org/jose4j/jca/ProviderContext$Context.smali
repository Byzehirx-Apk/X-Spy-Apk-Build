.class public Lorg/jose4j/jca/ProviderContext$Context;
.super Ljava/lang/Object;
.source "ProviderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jca/ProviderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field private cipherProvider:Ljava/lang/String;

.field private generalProvider:Ljava/lang/String;

.field private keyAgreementProvider:Ljava/lang/String;

.field private keyFactoryProvider:Ljava/lang/String;

.field private keyPairGeneratorProvider:Ljava/lang/String;

.field private macProvider:Ljava/lang/String;

.field private messageDigestProvider:Ljava/lang/String;

.field private signatureProvider:Ljava/lang/String;

.field final synthetic this$0:Lorg/jose4j/jca/ProviderContext;


# direct methods
.method public constructor <init>(Lorg/jose4j/jca/ProviderContext;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext$Context;->this$0:Lorg/jose4j/jca/ProviderContext;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private select(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    .local v1, "specificValue":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jca/ProviderContext$Context;->generalProvider:Ljava/lang/String;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getCipherProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jca/ProviderContext$Context;->cipherProvider:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    return-object v0
.end method

.method public getGeneralProvider()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jca/ProviderContext$Context;->generalProvider:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    return-object v0
.end method

.method public getKeyAgreementProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jca/ProviderContext$Context;->keyAgreementProvider:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    return-object v0
.end method

.method public getKeyFactoryProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jca/ProviderContext$Context;->keyFactoryProvider:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    return-object v0
.end method

.method public getKeyPairGeneratorProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jca/ProviderContext$Context;->keyPairGeneratorProvider:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    return-object v0
.end method

.method public getMacProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jca/ProviderContext$Context;->macProvider:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    return-object v0
.end method

.method public getMessageDigestProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jca/ProviderContext$Context;->messageDigestProvider:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    return-object v0
.end method

.method public getSignatureProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jca/ProviderContext$Context;->signatureProvider:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jca/ProviderContext$Context;
    return-object v0
.end method

.method public setCipherProvider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    .local v1, "cipherProvider":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext$Context;->cipherProvider:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setGeneralProvider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    .local v1, "generalProvider":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext$Context;->generalProvider:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setKeyAgreementProvider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    .local v1, "keyAgreementProvider":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext$Context;->keyAgreementProvider:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setKeyFactoryProvider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    .local v1, "keyFactoryProvider":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext$Context;->keyFactoryProvider:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setKeyPairGeneratorProvider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    .local v1, "keyPairGeneratorProvider":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext$Context;->keyPairGeneratorProvider:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setMacProvider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    .local v1, "macProvider":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext$Context;->macProvider:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setMessageDigestProvider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    .local v1, "messageDigestProvider":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext$Context;->messageDigestProvider:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setSignatureProvider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v1, p1

    .local v1, "signatureProvider":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jca/ProviderContext$Context;->signatureProvider:Ljava/lang/String;

    .line 211
    return-void
.end method
