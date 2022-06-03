.class public Lorg/jose4j/jwa/AlgorithmFactoryFactory;
.super Ljava/lang/Object;
.source "AlgorithmFactoryFactory.java"


# static fields
.field private static final factoryFactory:Lorg/jose4j/jwa/AlgorithmFactoryFactory;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private compressionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jose4j/jwa/AlgorithmFactory",
            "<",
            "Lorg/jose4j/zip/CompressionAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jose4j/jwa/AlgorithmFactory",
            "<",
            "Lorg/jose4j/jwe/ContentEncryptionAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jose4j/jwa/AlgorithmFactory",
            "<",
            "Lorg/jose4j/jwe/KeyManagementAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jose4j/jwa/AlgorithmFactory",
            "<",
            "Lorg/jose4j/jws/JsonWebSignatureAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-class v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    .line 36
    new-instance v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;-><init>()V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->factoryFactory:Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->initialize()V

    .line 46
    return-void
.end method

.method public static getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->factoryFactory:Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    return-object v0
.end method

.method private initialize()V
    .locals 15

    .prologue
    .line 56
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    const-string/jumbo v8, "java.version"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 57
    .local v2, "version":Ljava/lang/String;
    const-string/jumbo v8, "java.vendor"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 58
    .local v3, "vendor":Ljava/lang/String;
    const-string/jumbo v8, "java.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 59
    .local v4, "home":Ljava/lang/String;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 60
    .local v5, "providers":Ljava/lang/String;
    sget-object v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    const-string/jumbo v9, "Initializing jose4j (running with Java {} from {} at {} with {} security providers installed)..."

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v3

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v4

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move-object v13, v5

    aput-object v13, v11, v12

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v6, v8

    .line 62
    .local v6, "startTime":J
    move-object v8, v1

    new-instance v9, Lorg/jose4j/jwa/AlgorithmFactory;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "alg"

    const-class v12, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    invoke-direct {v10, v11, v12}, Lorg/jose4j/jwa/AlgorithmFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v9, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    .line 63
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/PlaintextNoneAlgorithm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 64
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 65
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha384;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha384;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 66
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 67
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP256UsingSha256;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP256UsingSha256;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 68
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP384UsingSha384;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP384UsingSha384;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 69
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 70
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha256;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha256;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 71
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha384;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha384;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 72
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha512;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha512;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 73
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha256;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha256;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 74
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha384;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha384;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 75
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 77
    sget-object v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    const-string/jumbo v9, "JWS signature algorithms: {}"

    move-object v10, v1

    iget-object v10, v10, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    invoke-virtual {v10}, Lorg/jose4j/jwa/AlgorithmFactory;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    move-object v8, v1

    new-instance v9, Lorg/jose4j/jwa/AlgorithmFactory;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "alg"

    const-class v12, Lorg/jose4j/jwe/KeyManagementAlgorithm;

    invoke-direct {v10, v11, v12}, Lorg/jose4j/jwa/AlgorithmFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v9, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    .line 80
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$Rsa1_5;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$Rsa1_5;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 81
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 82
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 83
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 84
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 85
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 86
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 87
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 88
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes128KeyWrapAlgorithm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes128KeyWrapAlgorithm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 89
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes192KeyWrapAlgorithm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes192KeyWrapAlgorithm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 90
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes256KeyWrapAlgorithm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes256KeyWrapAlgorithm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 91
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha256Aes128;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha256Aes128;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 92
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha384Aes192;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha384Aes192;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 93
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha512Aes256;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha512Aes256;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 94
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes128Gcm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes128Gcm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 95
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes192Gcm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes192Gcm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 96
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes256Gcm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes256Gcm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 98
    sget-object v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    const-string/jumbo v9, "JWE key management algorithms: {}"

    move-object v10, v1

    iget-object v10, v10, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    invoke-virtual {v10}, Lorg/jose4j/jwa/AlgorithmFactory;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    move-object v8, v1

    new-instance v9, Lorg/jose4j/jwa/AlgorithmFactory;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "enc"

    const-class v12, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    invoke-direct {v10, v11, v12}, Lorg/jose4j/jwa/AlgorithmFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v9, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    .line 101
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes128CbcHmacSha256;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes128CbcHmacSha256;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 102
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes192CbcHmacSha384;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes192CbcHmacSha384;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 103
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes256CbcHmacSha512;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes256CbcHmacSha512;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 104
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes128Gcm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes128Gcm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 105
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes192Gcm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes192Gcm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 106
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes256Gcm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes256Gcm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 108
    sget-object v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    const-string/jumbo v9, "JWE content encryption algorithms: {}"

    move-object v10, v1

    iget-object v10, v10, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    invoke-virtual {v10}, Lorg/jose4j/jwa/AlgorithmFactory;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    move-object v8, v1

    new-instance v9, Lorg/jose4j/jwa/AlgorithmFactory;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "zip"

    const-class v12, Lorg/jose4j/zip/CompressionAlgorithm;

    invoke-direct {v10, v11, v12}, Lorg/jose4j/jwa/AlgorithmFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v9, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->compressionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    .line 111
    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->compressionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v9, Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;-><init>()V

    invoke-virtual {v8, v9}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 113
    sget-object v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    const-string/jumbo v9, "JWE compression algorithms: {}"

    move-object v10, v1

    iget-object v10, v10, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->compressionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    invoke-virtual {v10}, Lorg/jose4j/jwa/AlgorithmFactory;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    sget-object v8, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    const-string/jumbo v9, "Initialized jose4j in {}ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-wide v12, v6

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jose4j/jwa/AlgorithmFactory",
            "<",
            "Lorg/jose4j/zip/CompressionAlgorithm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->compressionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    return-object v0
.end method

.method public getJweContentEncryptionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jose4j/jwa/AlgorithmFactory",
            "<",
            "Lorg/jose4j/jwe/ContentEncryptionAlgorithm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    return-object v0
.end method

.method public getJweKeyManagementAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jose4j/jwa/AlgorithmFactory",
            "<",
            "Lorg/jose4j/jwe/KeyManagementAlgorithm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    return-object v0
.end method

.method public getJwsAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jose4j/jwa/AlgorithmFactory",
            "<",
            "Lorg/jose4j/jws/JsonWebSignatureAlgorithm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    return-object v0
.end method

.method reinitialize()V
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    sget-object v1, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    const-string/jumbo v2, "Reinitializing jose4j..."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 51
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->initialize()V

    .line 52
    return-void
.end method
