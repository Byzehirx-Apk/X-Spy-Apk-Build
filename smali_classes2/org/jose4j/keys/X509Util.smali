.class public Lorg/jose4j/keys/X509Util;
.super Ljava/lang/Object;
.source "X509Util.java"


# static fields
.field private static final FACTORY_TYPE:Ljava/lang/String; = "X.509"


# instance fields
.field private certFactory:Ljava/security/cert/CertificateFactory;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/X509Util;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v2, v0

    :try_start_0
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/keys/X509Util;->certFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 47
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Couldn\'t find X.509 CertificateFactory!?!"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/X509Util;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v3, v0

    :try_start_0
    const-string/jumbo v4, "X.509"

    move-object v5, v1

    invoke-static {v4, v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    iput-object v4, v3, Lorg/jose4j/keys/X509Util;->certFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    return-void

    .line 57
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 59
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Couldn\'t find X.509 CertificateFactory!?!"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static base64urlThumbprint(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    move-object v1, p1

    .local v1, "hashAlg":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v5}, Lorg/jose4j/lang/HashUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v2, v5

    .line 139
    .local v2, "msgDigest":Ljava/security/MessageDigest;
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 144
    .line 145
    .local v3, "certificateEncoded":[B
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    move-object v4, v5

    .line 146
    .local v4, "digest":[B
    move-object v5, v4

    invoke-static {v5}, Lorg/jose4j/base64url/Base64Url;->encode([B)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    return-object v0

    .line 141
    .end local v3    # "certificateEncoded":[B
    .end local v4    # "digest":[B
    .restart local v0    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 143
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Lorg/jose4j/lang/UncheckedJoseException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Unable to get certificate thumbprint due to unexpected certificate encoding exception."

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getX509Util(Ljava/lang/String;)Lorg/jose4j/keys/X509Util;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "jcaProvider":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Lorg/jose4j/keys/X509Util;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lorg/jose4j/keys/X509Util;-><init>()V

    move-object v0, v2

    .line 73
    .end local v0    # "jcaProvider":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "jcaProvider":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v2, Lorg/jose4j/keys/X509Util;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/jose4j/keys/X509Util;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 77
    .local v1, "e":Ljava/security/NoSuchProviderException;
    new-instance v2, Lorg/jose4j/lang/JoseException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found when creating X509Util."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static x5t(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    move-object v1, v0

    const-string/jumbo v2, "SHA-1"

    invoke-static {v1, v2}, Lorg/jose4j/keys/X509Util;->base64urlThumbprint(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    return-object v0
.end method

.method public static x5tS256(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    move-object v1, v0

    const-string/jumbo v2, "SHA-256"

    invoke-static {v1, v2}, Lorg/jose4j/keys/X509Util;->base64urlThumbprint(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    return-object v0
.end method


# virtual methods
.method public fromBase64Der(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/X509Util;
    move-object v1, p1

    .local v1, "b64EncodedDer":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v5}, Lorg/jose4j/base64url/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    move-object v2, v5

    .line 111
    .local v2, "der":[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v5

    .line 114
    .local v3, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/jose4j/keys/X509Util;->certFactory:Ljava/security/cert/CertificateFactory;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    move-object v4, v5

    .line 115
    .local v4, "certificate":Ljava/security/cert/Certificate;
    move-object v5, v4

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/keys/X509Util;
    return-object v0

    .line 117
    .end local v4    # "certificate":Ljava/security/cert/Certificate;
    .restart local v0    # "this":Lorg/jose4j/keys/X509Util;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 119
    .local v4, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Lorg/jose4j/lang/JoseException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to convert "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " value to X509Certificate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public toBase64(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/X509Util;
    move-object v1, p1

    .local v1, "x509Certificate":Ljava/security/cert/X509Certificate;
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    move-object v2, v3

    .line 87
    .local v2, "der":[B
    move-object v3, v2

    invoke-static {v3}, Lorg/jose4j/base64url/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/keys/X509Util;
    return-object v0

    .line 89
    .end local v2    # "der":[B
    .restart local v0    # "this":Lorg/jose4j/keys/X509Util;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 91
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Unexpected problem getting encoded certificate."

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toPem(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/X509Util;
    move-object v1, p1

    .local v1, "x509Certificate":Ljava/security/cert/X509Certificate;
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    move-object v2, v3

    .line 100
    .local v2, "der":[B
    move-object v3, v2

    invoke-static {v3}, Lorg/jose4j/base64url/SimplePEMEncoder;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/keys/X509Util;
    return-object v0

    .line 102
    .end local v2    # "der":[B
    .restart local v0    # "this":Lorg/jose4j/keys/X509Util;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 104
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Unexpected problem getting encoded certificate."

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
