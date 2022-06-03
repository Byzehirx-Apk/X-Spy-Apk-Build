.class public Lorg/jose4j/jwt/consumer/JwtConsumer;
.super Ljava/lang/Object;
.source "JwtConsumer.java"


# instance fields
.field private decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

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

.field private requireSignature:Z

.field private skipSignatureVerification:Z

.field private skipVerificationKeyResolutionOnNone:Z

.field private validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator;",
            ">;"
        }
    .end annotation
.end field

.field private verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireSignature:Z

    .line 77
    return-void
.end method

.method private isNestedJwt(Lorg/jose4j/jwx/JsonWebStructure;)Z
    .locals 5

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "joseObject":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v3, v1

    invoke-virtual {v3}, Lorg/jose4j/jwx/JsonWebStructure;->getContentTypeHeaderValue()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 473
    .local v2, "cty":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    const-string/jumbo v4, "jwt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    const-string/jumbo v4, "application/jwt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public process(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtContext;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .prologue
    .line 316
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object/from16 v1, p1

    .local v1, "jwt":Ljava/lang/String;
    move-object v11, v1

    move-object v2, v11

    .line 317
    .local v2, "workingJwt":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v3, v11

    .line 318
    .local v3, "jwtClaims":Lorg/jose4j/jwt/JwtClaims;
    new-instance v11, Ljava/util/LinkedList;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v11

    .line 320
    .local v4, "joseObjects":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jose4j/jwx/JsonWebStructure;>;"
    new-instance v11, Lorg/jose4j/jwt/consumer/JwtContext;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    const/4 v14, 0x0

    move-object v15, v4

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lorg/jose4j/jwt/consumer/JwtContext;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/JwtClaims;Ljava/util/List;)V

    move-object v5, v11

    .line 322
    .local v5, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    :goto_0
    move-object v11, v3

    if-nez v11, :cond_a

    .line 327
    move-object v11, v2

    :try_start_0
    invoke-static {v11}, Lorg/jose4j/jwx/JsonWebStructure;->fromCompactSerialization(Ljava/lang/String;)Lorg/jose4j/jwx/JsonWebStructure;

    move-result-object v11

    move-object v6, v11

    .line 329
    .local v6, "joseObject":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v11, v6

    instance-of v11, v11, Lorg/jose4j/jws/JsonWebSignature;

    if-eqz v11, :cond_0

    .line 331
    move-object v11, v6

    check-cast v11, Lorg/jose4j/jws/JsonWebSignature;

    move-object v8, v11

    .line 332
    .local v8, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v11, v8

    invoke-virtual {v11}, Lorg/jose4j/jws/JsonWebSignature;->getUnverifiedPayload()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 369
    .end local v8    # "jws":Lorg/jose4j/jws/JsonWebSignature;
    .local v7, "payload":Ljava/lang/String;
    :goto_1
    move-object v11, v0

    move-object v12, v6

    invoke-direct {v11, v12}, Lorg/jose4j/jwt/consumer/JwtConsumer;->isNestedJwt(Lorg/jose4j/jwx/JsonWebStructure;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 371
    move-object v11, v7

    move-object v2, v11

    .line 401
    :goto_2
    move-object v11, v4

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 430
    goto :goto_0

    .line 336
    .end local v7    # "payload":Ljava/lang/String;
    :cond_0
    move-object v11, v6

    check-cast v11, Lorg/jose4j/jwe/JsonWebEncryption;

    move-object v8, v11

    .line 338
    .local v8, "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweProviderContext:Lorg/jose4j/jca/ProviderContext;

    if-eqz v11, :cond_1

    .line 340
    move-object v11, v8

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweProviderContext:Lorg/jose4j/jca/ProviderContext;

    invoke-virtual {v11, v12}, Lorg/jose4j/jwe/JsonWebEncryption;->setProviderContext(Lorg/jose4j/jca/ProviderContext;)V

    .line 343
    :cond_1
    move-object v11, v0

    iget-boolean v11, v11, Lorg/jose4j/jwt/consumer/JwtConsumer;->relaxDecryptionKeyValidation:Z

    if-eqz v11, :cond_2

    .line 345
    move-object v11, v8

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/jose4j/jwe/JsonWebEncryption;->setDoKeyValidation(Z)V

    .line 348
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v11, :cond_3

    .line 350
    move-object v11, v8

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v11, v12}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 353
    :cond_3
    move-object v11, v4

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    move-object v9, v11

    .line 354
    .local v9, "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwt/consumer/JwtConsumer;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    move-object v12, v8

    move-object v13, v9

    invoke-interface {v11, v12, v13}, Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;->resolveKey(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)Ljava/security/Key;

    move-result-object v11

    move-object v10, v11

    .line 355
    .local v10, "key":Ljava/security/Key;
    move-object v11, v8

    move-object v12, v10

    invoke-virtual {v11, v12}, Lorg/jose4j/jwe/JsonWebEncryption;->setKey(Ljava/security/Key;)V

    .line 356
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v11, :cond_4

    .line 358
    move-object v11, v8

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v11, v12}, Lorg/jose4j/jwe/JsonWebEncryption;->setAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 361
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

    if-eqz v11, :cond_5

    .line 363
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

    move-object v12, v8

    move-object v13, v9

    invoke-interface {v11, v12, v13}, Lorg/jose4j/jwt/consumer/JweCustomizer;->customize(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)V

    .line 366
    :cond_5
    move-object v11, v8

    invoke-virtual {v11}, Lorg/jose4j/jwe/JsonWebEncryption;->getPayload()Ljava/lang/String;
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v11

    move-object v7, v11

    .restart local v7    # "payload":Ljava/lang/String;
    goto :goto_1

    .line 377
    .end local v8    # "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    .end local v9    # "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    .end local v10    # "key":Ljava/security/Key;
    :cond_6
    move-object v11, v7

    move-object v12, v5

    :try_start_1
    invoke-static {v11, v12}, Lorg/jose4j/jwt/JwtClaims;->parse(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/JwtClaims;

    move-result-object v11

    move-object v3, v11

    .line 378
    move-object v11, v5

    move-object v12, v3

    invoke-virtual {v11, v12}, Lorg/jose4j/jwt/consumer/JwtContext;->setJwtClaims(Lorg/jose4j/jwt/JwtClaims;)V
    :try_end_1
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 398
    goto :goto_2

    .line 380
    :catch_0
    move-exception v11

    move-object v8, v11

    .line 382
    .local v8, "ije":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    move-object v11, v0

    :try_start_2
    iget-boolean v11, v11, Lorg/jose4j/jwt/consumer/JwtConsumer;->liberalContentTypeHandling:Z
    :try_end_2
    .catch Lorg/jose4j/lang/JoseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v11, :cond_8

    .line 386
    move-object v11, v1

    :try_start_3
    invoke-static {v11}, Lorg/jose4j/jwx/JsonWebStructure;->fromCompactSerialization(Ljava/lang/String;)Lorg/jose4j/jwx/JsonWebStructure;
    :try_end_3
    .catch Lorg/jose4j/lang/JoseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v11

    .line 387
    move-object v11, v7

    move-object v2, v11

    .line 392
    goto :goto_2

    .line 389
    :catch_1
    move-exception v11

    move-object v9, v11

    .line 391
    .local v9, "je":Lorg/jose4j/lang/JoseException;
    move-object v11, v8

    :try_start_4
    throw v11
    :try_end_4
    .catch Lorg/jose4j/lang/JoseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 403
    .end local v6    # "joseObject":Lorg/jose4j/jwx/JsonWebStructure;
    .end local v7    # "payload":Ljava/lang/String;
    .end local v8    # "ije":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    .end local v9    # "je":Lorg/jose4j/lang/JoseException;
    :catch_2
    move-exception v11

    move-object v7, v11

    .line 405
    .local v7, "e":Lorg/jose4j/lang/JoseException;
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v11

    .line 406
    .local v8, "sb":Ljava/lang/StringBuilder;
    move-object v11, v8

    const-string/jumbo v12, "Unable to process"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 407
    move-object v11, v4

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 409
    move-object v11, v8

    const-string/jumbo v12, " nested"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 411
    :cond_7
    move-object v11, v8

    const-string/jumbo v12, " JOSE object (cause: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 412
    new-instance v11, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/16 v13, 0x11

    move-object v14, v8

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v9, v11

    .line 413
    .local v9, "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    new-instance v11, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "JWT processing failed."

    move-object v14, v9

    move-object v15, v7

    move-object/from16 v16, v5

    invoke-direct/range {v12 .. v16}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v11

    .line 396
    .end local v9    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .restart local v6    # "joseObject":Lorg/jose4j/jwx/JsonWebStructure;
    .local v7, "payload":Ljava/lang/String;
    .local v8, "ije":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    :cond_8
    move-object v11, v8

    :try_start_5
    throw v11
    :try_end_5
    .catch Lorg/jose4j/lang/JoseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 415
    .end local v6    # "joseObject":Lorg/jose4j/jwx/JsonWebStructure;
    .end local v7    # "payload":Ljava/lang/String;
    .end local v8    # "ije":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    :catch_3
    move-exception v11

    move-object v7, v11

    .line 417
    .local v7, "e":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    move-object v11, v7

    throw v11

    .line 419
    .end local v7    # "e":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    :catch_4
    move-exception v11

    move-object v7, v11

    .line 421
    .local v7, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v11

    .line 422
    .local v8, "sb":Ljava/lang/StringBuilder;
    move-object v11, v8

    const-string/jumbo v12, "Unexpected exception encountered while processing"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 423
    move-object v11, v4

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 425
    move-object v11, v8

    const-string/jumbo v12, " nested"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 427
    :cond_9
    move-object v11, v8

    const-string/jumbo v12, " JOSE object ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 428
    new-instance v11, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/16 v13, 0x11

    move-object v14, v8

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v9, v11

    .line 429
    .restart local v9    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    new-instance v11, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "JWT processing failed."

    move-object v14, v9

    move-object v15, v7

    move-object/from16 v16, v5

    invoke-direct/range {v12 .. v16}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v11

    .line 433
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    :cond_a
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v11, v12}, Lorg/jose4j/jwt/consumer/JwtConsumer;->processContext(Lorg/jose4j/jwt/consumer/JwtContext;)V

    .line 434
    move-object v11, v5

    move-object v0, v11

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    return-object v0
.end method

.method public processContext(Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .prologue
    .line 176
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object/from16 v1, p1

    .local v1, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    const/4 v13, 0x0

    move v2, v13

    .line 177
    .local v2, "hasSignature":Z
    const/4 v13, 0x0

    move v3, v13

    .line 178
    .local v3, "hasEncryption":Z
    const/4 v13, 0x0

    move v4, v13

    .line 180
    .local v4, "hasSymmetricEncryption":Z
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v1

    invoke-virtual {v15}, Lorg/jose4j/jwt/consumer/JwtContext;->getJoseObjects()Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v13

    .line 182
    .local v5, "originalJoseObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v13, v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v6, v13

    .local v6, "idx":I
    :goto_0
    move v13, v6

    if-ltz v13, :cond_f

    .line 184
    move-object v13, v5

    move v14, v6

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object v15, v5

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v13

    move-object v7, v13

    .line 185
    .local v7, "joseObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v13, v7

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    move-object v8, v13

    .line 186
    .local v8, "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v13, v5

    move v14, v6

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jose4j/jwx/JsonWebStructure;

    move-object v9, v13

    .line 190
    .local v9, "currentJoseObject":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v13, v9

    :try_start_0
    instance-of v13, v13, Lorg/jose4j/jws/JsonWebSignature;

    if-eqz v13, :cond_9

    .line 192
    move-object v13, v9

    check-cast v13, Lorg/jose4j/jws/JsonWebSignature;

    move-object v10, v13

    .line 193
    .local v10, "jws":Lorg/jose4j/jws/JsonWebSignature;
    const-string/jumbo v13, "none"

    move-object v14, v10

    invoke-virtual {v14}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move v11, v13

    .line 194
    .local v11, "isNoneAlg":Z
    move-object v13, v0

    iget-boolean v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->skipSignatureVerification:Z

    if-nez v13, :cond_7

    .line 196
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

    if-eqz v13, :cond_0

    .line 198
    move-object v13, v10

    move-object v14, v0

    iget-object v14, v14, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

    invoke-virtual {v13, v14}, Lorg/jose4j/jws/JsonWebSignature;->setProviderContext(Lorg/jose4j/jca/ProviderContext;)V

    .line 201
    :cond_0
    move-object v13, v0

    iget-boolean v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->relaxVerificationKeyValidation:Z

    if-eqz v13, :cond_1

    .line 203
    move-object v13, v10

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/jose4j/jws/JsonWebSignature;->setDoKeyValidation(Z)V

    .line 206
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v13, :cond_2

    .line 208
    move-object v13, v10

    move-object v14, v0

    iget-object v14, v14, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v13, v14}, Lorg/jose4j/jws/JsonWebSignature;->setAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 211
    :cond_2
    move v13, v11

    if-eqz v13, :cond_3

    move-object v13, v0

    iget-boolean v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->skipVerificationKeyResolutionOnNone:Z

    if-nez v13, :cond_4

    .line 213
    :cond_3
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    move-object v14, v10

    move-object v15, v8

    invoke-interface {v13, v14, v15}, Lorg/jose4j/keys/resolvers/VerificationKeyResolver;->resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;

    move-result-object v13

    move-object v12, v13

    .line 214
    .local v12, "key":Ljava/security/Key;
    move-object v13, v10

    move-object v14, v12

    invoke-virtual {v13, v14}, Lorg/jose4j/jws/JsonWebSignature;->setKey(Ljava/security/Key;)V

    .line 217
    .end local v12    # "key":Ljava/security/Key;
    :cond_4
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

    if-eqz v13, :cond_5

    .line 219
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

    move-object v14, v10

    move-object v15, v8

    invoke-interface {v13, v14, v15}, Lorg/jose4j/jwt/consumer/JwsCustomizer;->customize(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)V

    .line 222
    :cond_5
    move-object v13, v10

    invoke-virtual {v13}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v13

    if-nez v13, :cond_7

    .line 224
    new-instance v13, Lorg/jose4j/jwt/consumer/InvalidJwtSignatureException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v10

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v16}, Lorg/jose4j/jwt/consumer/InvalidJwtSignatureException;-><init>(Lorg/jose4j/jws/JsonWebSignature;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v13
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 261
    .end local v10    # "jws":Lorg/jose4j/jws/JsonWebSignature;
    .end local v11    # "isNoneAlg":Z
    :catch_0
    move-exception v13

    move-object v10, v13

    .line 263
    .local v10, "e":Lorg/jose4j/lang/JoseException;
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v13

    .line 264
    .local v11, "sb":Ljava/lang/StringBuilder;
    move-object v13, v11

    const-string/jumbo v14, "Unable to process"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 265
    move-object v13, v7

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 267
    move-object v13, v11

    const-string/jumbo v14, " nested"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 269
    :cond_6
    move-object v13, v11

    const-string/jumbo v14, " JOSE object (cause: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 270
    new-instance v13, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0x11

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v12, v13

    .line 271
    .local v12, "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    new-instance v13, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string/jumbo v15, "JWT processing failed."

    move-object/from16 v16, v12

    move-object/from16 v17, v10

    move-object/from16 v18, v1

    invoke-direct/range {v14 .. v18}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v13

    .line 229
    .end local v12    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .local v10, "jws":Lorg/jose4j/jws/JsonWebSignature;
    .local v11, "isNoneAlg":Z
    :cond_7
    move v13, v11

    if-nez v13, :cond_8

    .line 231
    const/4 v13, 0x1

    move v2, v13

    .line 234
    .line 288
    .line 182
    .end local v10    # "jws":Lorg/jose4j/jws/JsonWebSignature;
    .end local v11    # "isNoneAlg":Z
    :cond_8
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 237
    :cond_9
    move-object v13, v9

    :try_start_1
    check-cast v13, Lorg/jose4j/jwe/JsonWebEncryption;

    move-object v10, v13

    .line 239
    .local v10, "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    move-object v14, v10

    move-object v15, v8

    invoke-interface {v13, v14, v15}, Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;->resolveKey(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)Ljava/security/Key;

    move-result-object v13

    move-object v11, v13

    .line 240
    .local v11, "key":Ljava/security/Key;
    move-object v13, v11

    if-eqz v13, :cond_a

    move-object v13, v11

    move-object v14, v10

    invoke-virtual {v14}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 242
    new-instance v13, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0x11

    const-string/jumbo v16, "Key resolution problem."

    invoke-direct/range {v14 .. v16}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object v12, v13

    .line 243
    .local v12, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;>;"
    new-instance v13, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string/jumbo v15, "The resolved decryption key is different than the one originally used to decrypt the JWE."

    move-object/from16 v16, v12

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v17}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v13
    :try_end_1
    .catch Lorg/jose4j/lang/JoseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 273
    .end local v10    # "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    .end local v11    # "key":Ljava/security/Key;
    .end local v12    # "errors":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;>;"
    :catch_1
    move-exception v13

    move-object v10, v13

    .line 275
    .local v10, "e":Lorg/jose4j/jwt/consumer/InvalidJwtException;
    move-object v13, v10

    throw v13

    .line 246
    .local v10, "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    .restart local v11    # "key":Ljava/security/Key;
    :cond_a
    move-object v13, v0

    :try_start_2
    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v13, :cond_b

    .line 248
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v14, v10

    invoke-virtual {v14}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 251
    :cond_b
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v13, :cond_c

    .line 253
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v14, v10

    invoke-virtual {v14}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptionMethodHeaderParameter()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 256
    :cond_c
    const/4 v13, 0x1

    move v3, v13

    .line 258
    move-object v13, v10

    invoke-virtual {v13}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v13

    invoke-interface {v13}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;

    move-result-object v13

    sget-object v14, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;
    :try_end_2
    .catch Lorg/jose4j/lang/JoseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v13, v14, :cond_d

    const/4 v13, 0x1

    :goto_2
    move v4, v13

    goto :goto_1

    :cond_d
    const/4 v13, 0x0

    goto :goto_2

    .line 277
    .end local v10    # "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    .end local v11    # "key":Ljava/security/Key;
    :catch_2
    move-exception v13

    move-object v10, v13

    .line 279
    .local v10, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v13

    .line 280
    .local v11, "sb":Ljava/lang/StringBuilder;
    move-object v13, v11

    const-string/jumbo v14, "Unexpected exception encountered while processing"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 281
    move-object v13, v7

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_e

    .line 283
    move-object v13, v11

    const-string/jumbo v14, " nested"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 285
    :cond_e
    move-object v13, v11

    const-string/jumbo v14, " JOSE object ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 286
    new-instance v13, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0x11

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v12, v13

    .line 287
    .local v12, "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    new-instance v13, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string/jumbo v15, "JWT processing failed."

    move-object/from16 v16, v12

    move-object/from16 v17, v10

    move-object/from16 v18, v1

    invoke-direct/range {v14 .. v18}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v13

    .line 292
    .end local v7    # "joseObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    .end local v8    # "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    .end local v9    # "currentJoseObject":Lorg/jose4j/jwx/JsonWebStructure;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    :cond_f
    move-object v13, v0

    iget-boolean v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireSignature:Z

    if-eqz v13, :cond_10

    move v13, v2

    if-nez v13, :cond_10

    .line 294
    new-instance v13, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0xa

    const-string/jumbo v16, "Missing signature."

    invoke-direct/range {v14 .. v16}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object v6, v13

    .line 295
    .local v6, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;>;"
    new-instance v13, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The JWT has no signature but the JWT Consumer is configured to require one: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwt()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v17}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v13

    .line 298
    .local v6, "idx":I
    :cond_10
    move-object v13, v0

    iget-boolean v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireEncryption:Z

    if-eqz v13, :cond_11

    move v13, v3

    if-nez v13, :cond_11

    .line 300
    new-instance v13, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0x13

    const-string/jumbo v16, "No encryption."

    invoke-direct/range {v14 .. v16}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object v6, v13

    .line 301
    .local v6, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;>;"
    new-instance v13, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The JWT has no encryption but the JWT Consumer is configured to require it: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwt()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v17}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v13

    .line 304
    .local v6, "idx":I
    :cond_11
    move-object v13, v0

    iget-boolean v13, v13, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireIntegrity:Z

    if-eqz v13, :cond_12

    move v13, v2

    if-nez v13, :cond_12

    move v13, v4

    if-nez v13, :cond_12

    .line 306
    new-instance v13, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0x14

    const-string/jumbo v16, "Missing Integrity Protection"

    invoke-direct/range {v14 .. v16}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object v6, v13

    .line 307
    .local v6, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;>;"
    new-instance v13, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The JWT has no integrity protection (signature/MAC or symmetric AEAD encryption) but the JWT Consumer is configured to require it: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwt()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v17}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v13

    .line 311
    .local v6, "idx":I
    :cond_12
    move-object v13, v0

    move-object v14, v1

    invoke-virtual {v13, v14}, Lorg/jose4j/jwt/consumer/JwtConsumer;->validate(Lorg/jose4j/jwt/consumer/JwtContext;)V

    .line 312
    return-void
.end method

.method public processToClaims(Ljava/lang/String;)Lorg/jose4j/jwt/JwtClaims;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "jwt":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/consumer/JwtConsumer;->process(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    return-object v0
.end method

.method setDecryptionKeyResolver(Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "decryptionKeyResolver":Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    .line 102
    return-void
.end method

.method setJweAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "constraints":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 87
    return-void
.end method

.method setJweContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "constraints":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 92
    return-void
.end method

.method setJweCustomizer(Lorg/jose4j/jwt/consumer/JweCustomizer;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "jweCustomizer":Lorg/jose4j/jwt/consumer/JweCustomizer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

    .line 167
    return-void
.end method

.method setJweProviderContext(Lorg/jose4j/jca/ProviderContext;)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "jweProviderContext":Lorg/jose4j/jca/ProviderContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweProviderContext:Lorg/jose4j/jca/ProviderContext;

    .line 157
    return-void
.end method

.method setJwsAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "constraints":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 82
    return-void
.end method

.method setJwsCustomizer(Lorg/jose4j/jwt/consumer/JwsCustomizer;)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "jwsCustomizer":Lorg/jose4j/jwt/consumer/JwsCustomizer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

    .line 162
    return-void
.end method

.method setJwsProviderContext(Lorg/jose4j/jca/ProviderContext;)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "jwsProviderContext":Lorg/jose4j/jca/ProviderContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

    .line 152
    return-void
.end method

.method setLiberalContentTypeHandling(Z)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move v1, p1

    .local v1, "liberalContentTypeHandling":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->liberalContentTypeHandling:Z

    .line 127
    return-void
.end method

.method setRelaxDecryptionKeyValidation(Z)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move v1, p1

    .local v1, "relaxDecryptionKeyValidation":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->relaxDecryptionKeyValidation:Z

    .line 147
    return-void
.end method

.method setRelaxVerificationKeyValidation(Z)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move v1, p1

    .local v1, "relaxVerificationKeyValidation":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->relaxVerificationKeyValidation:Z

    .line 137
    return-void
.end method

.method setRequireEncryption(Z)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move v1, p1

    .local v1, "requireEncryption":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireEncryption:Z

    .line 117
    return-void
.end method

.method setRequireIntegrity(Z)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move v1, p1

    .local v1, "requireIntegrity":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireIntegrity:Z

    .line 122
    return-void
.end method

.method setRequireSignature(Z)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move v1, p1

    .local v1, "requireSignature":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireSignature:Z

    .line 112
    return-void
.end method

.method setSkipSignatureVerification(Z)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move v1, p1

    .local v1, "skipSignatureVerification":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->skipSignatureVerification:Z

    .line 132
    return-void
.end method

.method public setSkipVerificationKeyResolutionOnNone(Z)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move v1, p1

    .local v1, "skipVerificationKeyResolutionOnNone":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->skipVerificationKeyResolutionOnNone:Z

    .line 142
    return-void
.end method

.method setValidators(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "validators":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwt/consumer/ErrorCodeValidator;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->validators:Ljava/util/List;

    .line 107
    return-void
.end method

.method setVerificationKeyResolver(Lorg/jose4j/keys/resolvers/VerificationKeyResolver;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "verificationKeyResolver":Lorg/jose4j/keys/resolvers/VerificationKeyResolver;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtConsumer;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    .line 97
    return-void
.end method

.method validate(Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtConsumer;
    move-object v1, p1

    .local v1, "jwtCtx":Lorg/jose4j/jwt/consumer/JwtContext;
    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 440
    .local v2, "issues":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;>;"
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwt/consumer/JwtConsumer;->validators:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jose4j/jwt/consumer/ErrorCodeValidator;

    move-object v4, v8

    .line 445
    .local v4, "validator":Lorg/jose4j/jwt/consumer/ErrorCodeValidator;
    move-object v8, v4

    move-object v9, v1

    :try_start_0
    invoke-interface {v8, v9}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator;->validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    :try_end_0
    .catch Lorg/jose4j/jwt/MalformedClaimException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object v5, v8

    .line 455
    .line 457
    .local v5, "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    :goto_1
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 459
    move-object v8, v2

    move-object v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 461
    :cond_0
    goto :goto_0

    .line 447
    .end local v5    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 449
    .local v6, "e":Lorg/jose4j/jwt/MalformedClaimException;
    new-instance v8, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/16 v10, 0x12

    move-object v11, v6

    invoke-virtual {v11}, Lorg/jose4j/jwt/MalformedClaimException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v5, v8

    .line 455
    .restart local v5    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    goto :goto_1

    .line 451
    .end local v5    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .end local v6    # "e":Lorg/jose4j/jwt/MalformedClaimException;
    :catch_1
    move-exception v8

    move-object v6, v8

    .line 453
    .local v6, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected exception thrown from validator "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCausesAndAbbreviatedStack(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 454
    .local v7, "msg":Ljava/lang/String;
    new-instance v8, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/16 v10, 0x11

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v5, v8

    .restart local v5    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    goto :goto_1

    .line 463
    .end local v4    # "validator":Lorg/jose4j/jwt/consumer/ErrorCodeValidator;
    .end local v5    # "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_1
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 465
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "JWT (claims->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jose4j/jwt/JwtClaims;->getRawJson()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") rejected due to invalid claims or other invalid content."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 466
    .local v3, "msg":Ljava/lang/String;
    new-instance v8, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v3

    move-object v11, v2

    move-object v12, v1

    invoke-direct {v9, v10, v11, v12}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v8

    .line 468
    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
