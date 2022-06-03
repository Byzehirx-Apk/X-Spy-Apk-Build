.class public Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
.super Ljava/lang/Object;
.source "JwtConsumerBuilder.java"


# instance fields
.field private audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

.field private customValidators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator;",
            ">;"
        }
    .end annotation
.end field

.field private dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

.field private decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

.field private expectedSubject:Ljava/lang/String;

.field private issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

.field private jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field private jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field private jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

.field private jweProviderContext:Lorg/jose4j/jca/ProviderContext;

.field private jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field private jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

.field private jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

.field private liberalContentTypeHandling:Z

.field private relaxDecryptionKeyValidation:Z

.field private relaxVerificationKeyValidation:Z

.field private requireEncryption:Z

.field private requireIntegrity:Z

.field private requireJti:Z

.field private requireSignature:Z

.field private requireSubject:Z

.field private skipAllDefaultValidators:Z

.field private skipAllValidators:Z

.field private skipDefaultAudienceValidation:Z

.field private skipSignatureVerification:Z

.field private skipVerificationKeyResolutionOnNone:Z

.field private typeValidator:Lorg/jose4j/jwt/consumer/TypeValidator;

.field private verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 70
    move-object v1, v0

    new-instance v2, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;-><init>(Ljava/security/Key;)V

    iput-object v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    .line 71
    move-object v1, v0

    new-instance v2, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;-><init>(Ljava/security/Key;)V

    iput-object v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    .line 83
    move-object v1, v0

    new-instance v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/jose4j/jwt/consumer/NumericDateValidator;-><init>()V

    iput-object v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    .line 87
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->customValidators:Ljava/util/List;

    .line 89
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSignature:Z

    .line 94
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipSignatureVerification:Z

    .line 102
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllValidators:Z

    .line 103
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllDefaultValidators:Z

    .line 122
    return-void
.end method


# virtual methods
.method public build()Lorg/jose4j/jwt/consumer/JwtConsumer;
    .locals 9

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    new-instance v3, Ljava/util/ArrayList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 712
    .local v1, "validators":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwt/consumer/ErrorCodeValidator;>;"
    move-object v3, v0

    iget-boolean v3, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllValidators:Z

    if-nez v3, :cond_4

    .line 714
    move-object v3, v0

    iget-boolean v3, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllDefaultValidators:Z

    if-nez v3, :cond_3

    .line 716
    move-object v3, v0

    iget-boolean v3, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipDefaultAudienceValidation:Z

    if-nez v3, :cond_1

    .line 718
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

    if-nez v3, :cond_0

    .line 720
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwt/consumer/AudValidator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwt/consumer/AudValidator;-><init>(Ljava/util/Set;Z)V

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

    .line 722
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 725
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    if-nez v3, :cond_2

    .line 727
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwt/consumer/IssValidator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwt/consumer/IssValidator;-><init>(Ljava/lang/String;Z)V

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    .line 729
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 731
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 733
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->expectedSubject:Ljava/lang/String;

    if-nez v3, :cond_5

    new-instance v3, Lorg/jose4j/jwt/consumer/SubValidator;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-boolean v5, v5, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSubject:Z

    invoke-direct {v4, v5}, Lorg/jose4j/jwt/consumer/SubValidator;-><init>(Z)V

    :goto_0
    move-object v2, v3

    .line 734
    .local v2, "subValidator":Lorg/jose4j/jwt/consumer/SubValidator;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 735
    move-object v3, v1

    new-instance v4, Lorg/jose4j/jwt/consumer/JtiValidator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-boolean v6, v6, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireJti:Z

    invoke-direct {v5, v6}, Lorg/jose4j/jwt/consumer/JtiValidator;-><init>(Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 737
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->typeValidator:Lorg/jose4j/jwt/consumer/TypeValidator;

    if-eqz v3, :cond_3

    .line 739
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->typeValidator:Lorg/jose4j/jwt/consumer/TypeValidator;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 743
    .end local v2    # "subValidator":Lorg/jose4j/jwt/consumer/SubValidator;
    :cond_3
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->customValidators:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 746
    :cond_4
    new-instance v3, Lorg/jose4j/jwt/consumer/JwtConsumer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;-><init>()V

    move-object v2, v3

    .line 747
    .local v2, "jwtConsumer":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setValidators(Ljava/util/List;)V

    .line 748
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setVerificationKeyResolver(Lorg/jose4j/keys/resolvers/VerificationKeyResolver;)V

    .line 749
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setDecryptionKeyResolver(Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;)V

    .line 751
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJwsAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 752
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJweAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 753
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJweContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 755
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSignature:Z

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRequireSignature(Z)V

    .line 756
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireEncryption:Z

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRequireEncryption(Z)V

    .line 757
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireIntegrity:Z

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRequireIntegrity(Z)V

    .line 759
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->liberalContentTypeHandling:Z

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setLiberalContentTypeHandling(Z)V

    .line 761
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipSignatureVerification:Z

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setSkipSignatureVerification(Z)V

    .line 763
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipVerificationKeyResolutionOnNone:Z

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setSkipVerificationKeyResolutionOnNone(Z)V

    .line 765
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->relaxVerificationKeyValidation:Z

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRelaxVerificationKeyValidation(Z)V

    .line 766
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->relaxDecryptionKeyValidation:Z

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRelaxDecryptionKeyValidation(Z)V

    .line 768
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJwsCustomizer(Lorg/jose4j/jwt/consumer/JwsCustomizer;)V

    .line 769
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJweCustomizer(Lorg/jose4j/jwt/consumer/JweCustomizer;)V

    .line 771
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJwsProviderContext(Lorg/jose4j/jca/ProviderContext;)V

    .line 772
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweProviderContext:Lorg/jose4j/jca/ProviderContext;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJweProviderContext(Lorg/jose4j/jca/ProviderContext;)V

    .line 774
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0

    .line 733
    .end local v2    # "jwtConsumer":Lorg/jose4j/jwt/consumer/JwtConsumer;
    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    :cond_5
    new-instance v3, Lorg/jose4j/jwt/consumer/SubValidator;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->expectedSubject:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/jose4j/jwt/consumer/SubValidator;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public registerValidator(Lorg/jose4j/jwt/consumer/ErrorCodeValidator;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "validator":Lorg/jose4j/jwt/consumer/ErrorCodeValidator;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->customValidators:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 625
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public registerValidator(Lorg/jose4j/jwt/consumer/Validator;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 7

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "validator":Lorg/jose4j/jwt/consumer/Validator;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->customValidators:Ljava/util/List;

    new-instance v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;-><init>(Lorg/jose4j/jwt/consumer/Validator;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 612
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setAllowedClockSkewInSeconds(I)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move v1, p1

    .local v1, "secondsOfAllowedClockSkew":I
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setAllowedClockSkewSeconds(I)V

    .line 569
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setDecryptionKey(Ljava/security/Key;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 7

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "decryptionKey":Ljava/security/Key;
    move-object v2, v0

    new-instance v3, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;-><init>(Ljava/security/Key;)V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setDecryptionKeyResolver(Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setDecryptionKeyResolver(Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "decryptionKeyResolver":Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    .line 354
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setDisableRequireSignature()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSignature:Z

    .line 155
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setEnableLiberalContentTypeHandling()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->liberalContentTypeHandling:Z

    .line 176
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setEnableRequireEncryption()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireEncryption:Z

    .line 131
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setEnableRequireIntegrity()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireIntegrity:Z

    .line 142
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setEvaluationTime(Lorg/jose4j/jwt/NumericDate;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "evaluationTime":Lorg/jose4j/jwt/NumericDate;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setEvaluationTime(Lorg/jose4j/jwt/NumericDate;)V

    .line 558
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public varargs setExpectedAudience(Z[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 10

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move v1, p1

    .local v1, "requireAudienceClaim":Z
    move-object v2, p2

    .local v2, "audience":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 418
    .local v3, "acceptableAudiences":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v4, v0

    new-instance v5, Lorg/jose4j/jwt/consumer/AudValidator;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move v8, v1

    invoke-direct {v6, v7, v8}, Lorg/jose4j/jwt/consumer/AudValidator;-><init>(Ljava/util/Set;Z)V

    iput-object v5, v4, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

    .line 419
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public varargs setExpectedAudience([Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 5

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "audience":[Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setExpectedAudience(Z[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setExpectedIssuer(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 5

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "expectedIssuer":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setExpectedIssuer(ZLjava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setExpectedIssuer(ZLjava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 9

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move v1, p1

    .local v1, "requireIssuer":Z
    move-object v2, p2

    .local v2, "expectedIssuer":Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwt/consumer/IssValidator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move v7, v1

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwt/consumer/IssValidator;-><init>(Ljava/lang/String;Z)V

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    .line 453
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public varargs setExpectedIssuers(Z[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 9

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move v1, p1

    .local v1, "requireIssuer":Z
    move-object v2, p2

    .local v2, "expectedIssuers":[Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwt/consumer/IssValidator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwt/consumer/IssValidator;-><init>(Z[Ljava/lang/String;)V

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    .line 441
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setExpectedSubject(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "subject":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->expectedSubject:Ljava/lang/String;

    .line 488
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setRequireSubject()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setExpectedType(ZLjava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 9

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move v1, p1

    .local v1, "requireType":Z
    move-object v2, p2

    .local v2, "expectedType":Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwt/consumer/TypeValidator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwt/consumer/TypeValidator;-><init>(ZLjava/lang/String;)V

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->typeValidator:Lorg/jose4j/jwt/consumer/TypeValidator;

    .line 702
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setIssuedAtRestrictions(II)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 5

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move v1, p1

    .local v1, "allowedSecondsInTheFuture":I
    move v2, p2

    .local v2, "allowedSecondsInThePast":I
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setIatAllowedSecondsInTheFuture(I)V

    .line 535
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    move v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setIatAllowedSecondsInThePast(I)V

    .line 536
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public varargs setJweAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 9

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "type":Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    move-object v2, p2

    .local v2, "algorithms":[Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 281
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setJweAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "constraints":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 246
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public varargs setJweContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 9

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "type":Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    move-object v2, p2

    .local v2, "algorithms":[Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 293
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setJweContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "constraints":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 257
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setJweCustomizer(Lorg/jose4j/jwt/consumer/JweCustomizer;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "jweCustomizer":Lorg/jose4j/jwt/consumer/JweCustomizer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

    .line 655
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setJweProviderContext(Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "jweProviderContext":Lorg/jose4j/jca/ProviderContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweProviderContext:Lorg/jose4j/jca/ProviderContext;

    .line 687
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public varargs setJwsAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 9

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "type":Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    move-object v2, p2

    .local v2, "algorithms":[Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 269
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setJwsAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "constraints":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 235
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setJwsCustomizer(Lorg/jose4j/jwt/consumer/JwsCustomizer;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "jwsCustomizer":Lorg/jose4j/jwt/consumer/JwsCustomizer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

    .line 640
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setJwsProviderContext(Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "jwsProviderContext":Lorg/jose4j/jca/ProviderContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

    .line 671
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setMaxFutureValidityInMinutes(I)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move v1, p1

    .local v1, "maxFutureValidityInMinutes":I
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setMaxFutureValidityInMinutes(I)V

    .line 580
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setRelaxDecryptionKeyValidation()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->relaxDecryptionKeyValidation:Z

    .line 601
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setRelaxVerificationKeyValidation()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->relaxVerificationKeyValidation:Z

    .line 591
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setRequireExpirationTime()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setRequireExp(Z)V

    .line 511
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setRequireIssuedAt()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setRequireIat(Z)V

    .line 521
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setRequireJwtId()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireJti:Z

    .line 498
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setRequireNotBefore()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setRequireNbf(Z)V

    .line 546
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setRequireSubject()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSubject:Z

    .line 474
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setSkipAllDefaultValidators()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllDefaultValidators:Z

    .line 224
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setSkipAllValidators()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllValidators:Z

    .line 214
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setSkipDefaultAudienceValidation()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipDefaultAudienceValidation:Z

    .line 429
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setSkipSignatureVerification()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipSignatureVerification:Z

    .line 195
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setSkipVerificationKeyResolutionOnNone()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 3

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipVerificationKeyResolutionOnNone:Z

    .line 330
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setVerificationKey(Ljava/security/Key;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 7

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "verificationKey":Ljava/security/Key;
    move-object v2, v0

    new-instance v3, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;-><init>(Ljava/security/Key;)V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setVerificationKeyResolver(Lorg/jose4j/keys/resolvers/VerificationKeyResolver;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method

.method public setVerificationKeyResolver(Lorg/jose4j/keys/resolvers/VerificationKeyResolver;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    move-object v1, p1

    .local v1, "verificationKeyResolver":Lorg/jose4j/keys/resolvers/VerificationKeyResolver;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    .line 319
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    return-object v0
.end method
