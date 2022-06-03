.class public Lorg/jose4j/jwt/NumericDate;
.super Ljava/lang/Object;
.source "NumericDate.java"


# static fields
.field private static final CONVERSION:J = 0x3e8L


# instance fields
.field private value:J


# direct methods
.method private constructor <init>(J)V
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/NumericDate;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwt/NumericDate;->setValue(J)V

    .line 42
    return-void
.end method

.method private canConvertToMillis()Z
    .locals 11

    .prologue
    .line 94
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/NumericDate;
    move-object v6, v1

    invoke-virtual {v6}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 95
    .local v2, "secs":J
    move-wide v6, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-wide v4, v6

    .line 96
    .local v4, "millis":J
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    move-wide v6, v4

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    :cond_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    move-wide v6, v4

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-gtz v6, :cond_4

    :cond_1
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move-wide v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    and-int/2addr v6, v7

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    move v1, v6

    .end local v1    # "this":Lorg/jose4j/jwt/NumericDate;
    return v1

    .restart local v1    # "this":Lorg/jose4j/jwt/NumericDate;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static fromMilliseconds(J)Lorg/jose4j/jwt/NumericDate;
    .locals 6

    .prologue
    .line 56
    move-wide v0, p0

    .local v0, "millisecondsFromEpoch":J
    move-wide v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/jose4j/jwt/NumericDate;->fromSeconds(J)Lorg/jose4j/jwt/NumericDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "millisecondsFromEpoch":J
    return-object v0
.end method

.method public static fromSeconds(J)Lorg/jose4j/jwt/NumericDate;
    .locals 8

    .prologue
    .line 51
    move-wide v0, p0

    .local v0, "secondsFromEpoch":J
    new-instance v2, Lorg/jose4j/jwt/NumericDate;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-wide v4, v0

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jwt/NumericDate;-><init>(J)V

    move-object v0, v2

    .end local v0    # "secondsFromEpoch":J
    return-object v0
.end method

.method public static now()Lorg/jose4j/jwt/NumericDate;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jose4j/jwt/NumericDate;->fromMilliseconds(J)Lorg/jose4j/jwt/NumericDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSeconds(J)V
    .locals 9

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/NumericDate;
    move-wide v1, p1

    .local v1, "seconds":J
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lorg/jose4j/jwt/NumericDate;->value:J

    move-wide v6, v1

    invoke-static {v4, v5, v6, v7}, Lorg/jose4j/lang/Maths;->add(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwt/NumericDate;->setValue(J)V

    .line 62
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/NumericDate;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lorg/jose4j/jwt/NumericDate;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-wide v2, v2, Lorg/jose4j/jwt/NumericDate;->value:J

    move-object v4, v1

    check-cast v4, Lorg/jose4j/jwt/NumericDate;

    iget-wide v4, v4, Lorg/jose4j/jwt/NumericDate;->value:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getValue()J
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/NumericDate;
    move-object v1, v0

    iget-wide v1, v1, Lorg/jose4j/jwt/NumericDate;->value:J

    move-wide v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    return-wide v0
.end method

.method public getValueInMillis()J
    .locals 12

    .prologue
    .line 81
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/NumericDate;
    move-object v6, v1

    invoke-virtual {v6}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 82
    .local v2, "secs":J
    move-wide v6, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-wide v4, v6

    .line 84
    .local v4, "millis":J
    move-object v6, v1

    invoke-direct {v6}, Lorg/jose4j/jwt/NumericDate;->canConvertToMillis()Z

    move-result v6

    if-nez v6, :cond_0

    .line 86
    new-instance v6, Ljava/lang/ArithmeticException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "converting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " seconds to milliseconds (x1000) resulted in long integer overflow ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 89
    :cond_0
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "this":Lorg/jose4j/jwt/NumericDate;
    return-wide v1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 139
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/NumericDate;
    move-object v2, v1

    iget-wide v2, v2, Lorg/jose4j/jwt/NumericDate;->value:J

    move-object v4, v1

    iget-wide v4, v4, Lorg/jose4j/jwt/NumericDate;->value:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lorg/jose4j/jwt/NumericDate;
    return v1
.end method

.method public isAfter(Lorg/jose4j/jwt/NumericDate;)Z
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/NumericDate;
    move-object v1, p1

    .local v1, "when":Lorg/jose4j/jwt/NumericDate;
    move-object v2, v0

    iget-wide v2, v2, Lorg/jose4j/jwt/NumericDate;->value:J

    move-object v4, v1

    invoke-virtual {v4}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/jose4j/jwt/NumericDate;)Z
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/NumericDate;
    move-object v1, p1

    .local v1, "when":Lorg/jose4j/jwt/NumericDate;
    move-object v2, v0

    iget-wide v2, v2, Lorg/jose4j/jwt/NumericDate;->value:J

    move-object v4, v1

    invoke-virtual {v4}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOnOrAfter(Lorg/jose4j/jwt/NumericDate;)Z
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/NumericDate;
    move-object v1, p1

    .local v1, "when":Lorg/jose4j/jwt/NumericDate;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/NumericDate;->isBefore(Lorg/jose4j/jwt/NumericDate;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setValue(J)V
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/NumericDate;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lorg/jose4j/jwt/NumericDate;->value:J

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/NumericDate;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 119
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v4, v1

    const-string/jumbo v5, "NumericDate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 120
    move-object v4, v0

    invoke-direct {v4}, Lorg/jose4j/jwt/NumericDate;->canConvertToMillis()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v4

    move-object v2, v4

    .line 123
    .local v2, "df":Ljava/text/DateFormat;
    new-instance v4, Ljava/util/Date;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwt/NumericDate;->getValueInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v3, v4

    .line 124
    .local v3, "date":Ljava/util/Date;
    move-object v4, v1

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 126
    .end local v2    # "df":Ljava/text/DateFormat;
    .end local v3    # "date":Ljava/util/Date;
    :cond_0
    move-object v4, v1

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 127
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwt/NumericDate;
    return-object v0
.end method
