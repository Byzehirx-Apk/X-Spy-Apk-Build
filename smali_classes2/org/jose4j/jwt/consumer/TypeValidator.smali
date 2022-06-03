.class public Lorg/jose4j/jwt/consumer/TypeValidator;
.super Ljava/lang/Object;
.source "TypeValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final APPLICATION_PRIMARY_TYPE:Ljava/lang/String; = "application"


# instance fields
.field private expectedType:Ljavax/activation/MimeType;

.field private requireType:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/TypeValidator;
    move v1, p1

    .local v1, "requireType":Z
    move-object v2, p2

    .local v2, "expectedType":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v4, v0

    move-object v5, v0

    move-object v6, v2

    :try_start_0
    invoke-virtual {v5, v6}, Lorg/jose4j/jwt/consumer/TypeValidator;->toMediaType(Ljava/lang/String;)Ljavax/activation/MimeType;

    move-result-object v5

    iput-object v5, v4, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    .line 22
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    invoke-virtual {v4}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    new-instance v4, Ljavax/activation/MimeTypeParseException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "cannot use wildcard in subtype"

    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 30
    .local v3, "e":Ljavax/activation/MimeTypeParseException;
    new-instance v4, Lorg/jose4j/lang/UncheckedJoseException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The given expected type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' isn\'t a valid media type in this context."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 31
    .line 32
    .end local v3    # "e":Ljavax/activation/MimeTypeParseException;
    :cond_0
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lorg/jose4j/jwt/consumer/TypeValidator;->requireType:Z

    .line 33
    return-void
.end method


# virtual methods
.method toMediaType(Ljava/lang/String;)Ljavax/activation/MimeType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/TypeValidator;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljavax/activation/MimeType;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/TypeValidator;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/TypeValidator;
    :cond_0
    new-instance v2, Ljavax/activation/MimeType;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "application"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method validate(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 10

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/TypeValidator;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_1

    .line 48
    move-object v4, v0

    iget-boolean v4, v4, Lorg/jose4j/jwt/consumer/TypeValidator;->requireType:Z

    if-eqz v4, :cond_0

    new-instance v4, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0x15

    const-string/jumbo v7, "No typ header parameter present in the innermost JWS/JWE"

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    :goto_0
    move-object v0, v4

    .line 75
    .end local v0    # "this":Lorg/jose4j/jwt/consumer/TypeValidator;
    :goto_1
    return-object v0

    .line 48
    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/TypeValidator;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 51
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    if-eqz v4, :cond_4

    .line 55
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lorg/jose4j/jwt/consumer/TypeValidator;->toMediaType(Ljava/lang/String;)Ljavax/activation/MimeType;

    move-result-object v4

    move-object v2, v4

    .line 56
    .local v2, "mediaType":Ljavax/activation/MimeType;
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavax/activation/MimeType;->match(Ljavax/activation/MimeType;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-virtual {v4}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 58
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v4

    .line 59
    .local v3, "msg":Ljava/lang/StringBuilder;
    move-object v4, v3

    const-string/jumbo v5, "Invalid typ header parameter value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'. Expecting \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 60
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 61
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    invoke-virtual {v4}, Ljavax/activation/MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    move-object v4, v3

    const-string/jumbo v5, " or just \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    invoke-virtual {v5}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 65
    :cond_3
    move-object v4, v3

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 66
    new-instance v4, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0x16

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto/16 :goto_1

    .line 72
    .line 75
    .end local v2    # "mediaType":Ljavax/activation/MimeType;
    .end local v3    # "msg":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v4, 0x0

    move-object v0, v4

    goto/16 :goto_1

    .line 69
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 71
    .local v2, "e":Ljavax/activation/MimeTypeParseException;
    new-instance v4, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0x16

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "typ header parameter value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' not parsable as a media type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_1
.end method

.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/TypeValidator;
    move-object v1, p1

    .local v1, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v4, v1

    invoke-virtual {v4}, Lorg/jose4j/jwt/consumer/JwtContext;->getJoseObjects()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jose4j/jwx/JsonWebStructure;

    move-object v2, v4

    .line 39
    .local v2, "jsonWebThing":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v4, v2

    const-string/jumbo v5, "typ"

    invoke-virtual {v4, v5}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 41
    .local v3, "type":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/jose4j/jwt/consumer/TypeValidator;->validate(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/TypeValidator;
    return-object v0
.end method
