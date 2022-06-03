.class public Lcom/google/appinventor/components/runtime/util/crypt/KodularRSA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/PrivateKey;

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildKeyPair()Ljava/security/KeyPair;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/crypt/KodularRSA;->buildKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    .line 28
    move-object v0, v2

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/util/crypt/KodularRSA;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/PublicKey;

    .line 29
    move-object v1, v0

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/util/crypt/KodularRSA;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/PrivateKey;

    .line 32
    :try_start_0
    const-string/jumbo v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 36
    .line 38
    move-object v1, v0

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 39
    move-object v1, v0

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 34
    const-string/jumbo v1, "MakeroidCrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 35
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Lcom/google/appinventor/components/runtime/util/crypt/KodularRSA;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/PublicKey;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularRSA;->decrypt(Ljava/security/PublicKey;[B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 56
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 55
    const-string/jumbo v1, "MakeroidCrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 56
    const-string/jumbo v1, ""

    move-object v0, v1

    goto :goto_0
.end method

.method public static decrypt(Ljava/security/PublicKey;[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 75
    move-object v2, v4

    const/4 v4, 0x2

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 76
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 79
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 78
    const-string/jumbo v3, "MakeroidCrypt"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 79
    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object v0, v3

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Lcom/google/appinventor/components/runtime/util/crypt/KodularRSA;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/PrivateKey;

    move-object v4, v0

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularRSA;->encrypt(Ljava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 47
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 46
    const-string/jumbo v1, "MakeroidCrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 47
    const-string/jumbo v1, ""

    move-object v0, v1

    goto :goto_0
.end method

.method public static encrypt(Ljava/security/PrivateKey;Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 63
    move-object v2, v4

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 65
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 68
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 67
    const-string/jumbo v3, "MakeroidCrypt"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 68
    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object v0, v3

    goto :goto_0
.end method
