.class Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
.super Ljava/lang/Object;
.source "CryptoUtils.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;->getCipher(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;

.field final synthetic val$cipher:Ljavax/crypto/Cipher;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;Ljavax/crypto/Cipher;)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->this$0:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->val$cipher:Ljavax/crypto/Cipher;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFinal([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    move-object v1, p1

    .local v1, "input":[B
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->val$cipher:Ljavax/crypto/Cipher;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    return-object v0
.end method

.method public doFinal([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    move-object v1, p1

    .local v1, "input":[B
    move v2, p2

    .local v2, "inputOffset":I
    move v3, p3

    .local v3, "inputLength":I
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->val$cipher:Ljavax/crypto/Cipher;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->val$cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    return-object v0
.end method

.method public getBlockSize()I
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->val$cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    return v0
.end method

.method public getIV()[B
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->val$cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->val$cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    return-object v0
.end method

.method public init(ILjava/security/Key;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    move v1, p1

    .local v1, "opMode":I
    move-object v2, p2

    .local v2, "key":Ljava/security/Key;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->val$cipher:Ljavax/crypto/Cipher;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 77
    return-void
.end method

.method public init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;
    move v1, p1

    .local v1, "opMode":I
    move-object v2, p2

    .local v2, "key":Ljava/security/Key;
    move-object v3, p3

    .local v3, "params":Ljava/security/spec/AlgorithmParameterSpec;
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;->val$cipher:Ljavax/crypto/Cipher;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 82
    return-void
.end method
