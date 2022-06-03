.class public Lorg/jose4j/jwt/consumer/NumericDateValidator;
.super Ljava/lang/Object;
.source "NumericDateValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final MISSING_EXP:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

.field private static final MISSING_IAT:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

.field private static final MISSING_NBF:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;


# instance fields
.field private allowedClockSkewSeconds:I

.field private iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

.field private iatAllowedSecondsInThePast:Ljava/lang/Integer;

.field private maxFutureValidityInMinutes:I

.field private requireExp:Z

.field private requireIat:Z

.field private requireNbf:Z

.field private staticEvaluationTime:Lorg/jose4j/jwt/NumericDate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "No Expiration Time (exp) claim present."

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_EXP:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    .line 33
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "No Issued At (iat) claim present."

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_IAT:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    .line 34
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "No Not Before (nbf) claim present."

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_NBF:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    .line 41
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    return-void
.end method

.method private skewMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    if-lez v1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " (even when providing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seconds of leeway to account for clock skew)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 176
    .end local v0    # "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    :cond_0
    const-string/jumbo v1, "."

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public setAllowedClockSkewSeconds(I)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move v1, p1

    .local v1, "allowedClockSkewSeconds":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    .line 69
    return-void
.end method

.method public setEvaluationTime(Lorg/jose4j/jwt/NumericDate;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move-object v1, p1

    .local v1, "evaluationTime":Lorg/jose4j/jwt/NumericDate;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;->staticEvaluationTime:Lorg/jose4j/jwt/NumericDate;

    .line 64
    return-void
.end method

.method public setIatAllowedSecondsInTheFuture(I)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move v1, p1

    .local v1, "iatAllowedSecondsInTheFuture":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method public setIatAllowedSecondsInThePast(I)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move v1, p1

    .local v1, "iatAllowedSecondsInThePast":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInThePast:Ljava/lang/Integer;

    .line 84
    return-void
.end method

.method public setMaxFutureValidityInMinutes(I)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move v1, p1

    .local v1, "maxFutureValidityInMinutes":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    .line 74
    return-void
.end method

.method public setRequireExp(Z)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move v1, p1

    .local v1, "requireExp":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireExp:Z

    .line 49
    return-void
.end method

.method public setRequireIat(Z)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move v1, p1

    .local v1, "requireIat":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireIat:Z

    .line 54
    return-void
.end method

.method public setRequireNbf(Z)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move v1, p1

    .local v1, "requireNbf":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireNbf:Z

    .line 59
    return-void
.end method

.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 89
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    move-object/from16 v1, p1

    .local v1, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v10, v1

    invoke-virtual {v10}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object v10

    move-object v2, v10

    .line 90
    .local v2, "jwtClaims":Lorg/jose4j/jwt/JwtClaims;
    move-object v10, v2

    invoke-virtual {v10}, Lorg/jose4j/jwt/JwtClaims;->getExpirationTime()Lorg/jose4j/jwt/NumericDate;

    move-result-object v10

    move-object v3, v10

    .line 91
    .local v3, "expirationTime":Lorg/jose4j/jwt/NumericDate;
    move-object v10, v2

    invoke-virtual {v10}, Lorg/jose4j/jwt/JwtClaims;->getIssuedAt()Lorg/jose4j/jwt/NumericDate;

    move-result-object v10

    move-object v4, v10

    .line 92
    .local v4, "issuedAt":Lorg/jose4j/jwt/NumericDate;
    move-object v10, v2

    invoke-virtual {v10}, Lorg/jose4j/jwt/JwtClaims;->getNotBefore()Lorg/jose4j/jwt/NumericDate;

    move-result-object v10

    move-object v5, v10

    .line 94
    .local v5, "notBefore":Lorg/jose4j/jwt/NumericDate;
    move-object v10, v0

    iget-boolean v10, v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireExp:Z

    if-eqz v10, :cond_0

    move-object v10, v3

    if-nez v10, :cond_0

    .line 96
    sget-object v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_EXP:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v0, v10

    .line 165
    .end local v0    # "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    :goto_0
    return-object v0

    .line 99
    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/NumericDateValidator;
    :cond_0
    move-object v10, v0

    iget-boolean v10, v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireIat:Z

    if-eqz v10, :cond_1

    move-object v10, v4

    if-nez v10, :cond_1

    .line 101
    sget-object v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_IAT:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v0, v10

    goto :goto_0

    .line 104
    :cond_1
    move-object v10, v0

    iget-boolean v10, v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireNbf:Z

    if-eqz v10, :cond_2

    move-object v10, v5

    if-nez v10, :cond_2

    .line 106
    sget-object v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_NBF:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v0, v10

    goto :goto_0

    .line 109
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->staticEvaluationTime:Lorg/jose4j/jwt/NumericDate;

    if-nez v10, :cond_3

    invoke-static {}, Lorg/jose4j/jwt/NumericDate;->now()Lorg/jose4j/jwt/NumericDate;

    move-result-object v10

    :goto_1
    move-object v6, v10

    .line 111
    .local v6, "evaluationTime":Lorg/jose4j/jwt/NumericDate;
    move-object v10, v3

    if-eqz v10, :cond_7

    .line 113
    move-object v10, v6

    invoke-virtual {v10}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v10

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v10

    move-object v12, v3

    invoke-virtual {v12}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_4

    .line 115
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "The JWT is no longer valid - the evaluation time "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is on or after the Expiration Time (exp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") claim value"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-direct {v11}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 116
    .local v7, "msg":Ljava/lang/String;
    new-instance v10, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v10

    goto/16 :goto_0

    .line 109
    .end local v6    # "evaluationTime":Lorg/jose4j/jwt/NumericDate;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->staticEvaluationTime:Lorg/jose4j/jwt/NumericDate;

    goto :goto_1

    .line 119
    .restart local v6    # "evaluationTime":Lorg/jose4j/jwt/NumericDate;
    :cond_4
    move-object v10, v4

    if-eqz v10, :cond_5

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v10, v11}, Lorg/jose4j/jwt/NumericDate;->isBefore(Lorg/jose4j/jwt/NumericDate;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 121
    new-instance v10, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/16 v12, 0x11

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "The Expiration Time (exp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") claim value cannot be before the Issued At (iat="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") claim value."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v10

    goto/16 :goto_0

    .line 124
    :cond_5
    move-object v10, v5

    if-eqz v10, :cond_6

    move-object v10, v3

    move-object v11, v5

    invoke-virtual {v10, v11}, Lorg/jose4j/jwt/NumericDate;->isBefore(Lorg/jose4j/jwt/NumericDate;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 126
    new-instance v10, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/16 v12, 0x11

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "The Expiration Time (exp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") claim value cannot be before the Not Before (nbf="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") claim value."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v10

    goto/16 :goto_0

    .line 129
    :cond_6
    move-object v10, v0

    iget v10, v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    if-lez v10, :cond_7

    .line 131
    move-object v10, v3

    invoke-virtual {v10}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v10

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v10

    move-object v12, v6

    invoke-virtual {v12}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v10

    move-wide v7, v10

    .line 132
    .local v7, "deltaInSeconds":J
    move-wide v10, v7

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    int-to-long v12, v12

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-lez v10, :cond_7

    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "The Expiration Time (exp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") claim value cannot be more than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget v11, v11, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " minutes in the future relative to the evaluation time "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-direct {v11}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 136
    .local v9, "msg":Ljava/lang/String;
    new-instance v10, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x5

    move-object v13, v9

    invoke-direct {v11, v12, v13}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v10

    goto/16 :goto_0

    .line 141
    .end local v7    # "deltaInSeconds":J
    .end local v9    # "msg":Ljava/lang/String;
    :cond_7
    move-object v10, v5

    if-eqz v10, :cond_8

    .line 143
    move-object v10, v6

    invoke-virtual {v10}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v10

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/jose4j/lang/Maths;->add(JJ)J

    move-result-wide v10

    move-object v12, v5

    invoke-virtual {v12}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "The JWT is not yet valid as the evaluation time "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is before the Not Before (nbf="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") claim time"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-direct {v11}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 146
    .local v7, "msg":Ljava/lang/String;
    new-instance v10, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x6

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v10

    goto/16 :goto_0

    .line 150
    .end local v7    # "msg":Ljava/lang/String;
    :cond_8
    move-object v10, v4

    if-eqz v10, :cond_a

    .line 152
    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

    if-eqz v10, :cond_9

    move-object v10, v4

    invoke-virtual {v10}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v10

    move-object v12, v6

    invoke-virtual {v12}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v10

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_9

    .line 154
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "iat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is more than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " second(s) ahead of now "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-direct {v11}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 155
    .restart local v7    # "msg":Ljava/lang/String;
    new-instance v10, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/16 v12, 0x17

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v10

    goto/16 :goto_0

    .line 158
    .end local v7    # "msg":Ljava/lang/String;
    :cond_9
    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInThePast:Ljava/lang/Integer;

    if-eqz v10, :cond_a

    move-object v10, v6

    invoke-virtual {v10}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v10

    move-object v12, v4

    invoke-virtual {v12}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v10

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInThePast:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_a

    .line 160
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "As of now "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " iat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is more than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInThePast:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " second(s) in the past"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-direct {v11}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 161
    .restart local v7    # "msg":Ljava/lang/String;
    new-instance v10, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/16 v12, 0x18

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v10

    goto/16 :goto_0

    .line 165
    .end local v7    # "msg":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0
.end method
