.class public Lorg/jose4j/jwt/IntDate;
.super Ljava/lang/Object;
.source "IntDate.java"


# static fields
.field private static final CONVERSION:J = 0x3e8L


# instance fields
.field private value:J


# direct methods
.method private constructor <init>(J)V
    .locals 7

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/IntDate;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lorg/jose4j/jwt/IntDate;->value:J

    .line 32
    return-void
.end method

.method public static fromMillis(J)Lorg/jose4j/jwt/IntDate;
    .locals 6

    .prologue
    .line 46
    move-wide v0, p0

    .local v0, "millisecondsFromEpoch":J
    move-wide v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/jose4j/jwt/IntDate;->fromSeconds(J)Lorg/jose4j/jwt/IntDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "millisecondsFromEpoch":J
    return-object v0
.end method

.method public static fromSeconds(J)Lorg/jose4j/jwt/IntDate;
    .locals 8

    .prologue
    .line 41
    move-wide v0, p0

    .local v0, "secondsFromEpoch":J
    new-instance v2, Lorg/jose4j/jwt/IntDate;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-wide v4, v0

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jwt/IntDate;-><init>(J)V

    move-object v0, v2

    .end local v0    # "secondsFromEpoch":J
    return-object v0
.end method

.method public static now()Lorg/jose4j/jwt/IntDate;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jose4j/jwt/IntDate;->fromMillis(J)Lorg/jose4j/jwt/IntDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSeconds(I)V
    .locals 6

    .prologue
    .line 56
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/IntDate;
    move v2, p1

    .local v2, "seconds":I
    move-object v3, v1

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwt/IntDate;->addSeconds(J)V

    .line 57
    return-void
.end method

.method public addSeconds(J)V
    .locals 9

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/IntDate;
    move-wide v1, p1

    .local v1, "seconds":J
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lorg/jose4j/jwt/IntDate;->value:J

    move-wide v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lorg/jose4j/jwt/IntDate;->value:J

    .line 52
    return-void
.end method

.method public after(Lorg/jose4j/jwt/IntDate;)Z
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/IntDate;
    move-object v1, p1

    .local v1, "when":Lorg/jose4j/jwt/IntDate;
    move-object v2, v0

    iget-wide v2, v2, Lorg/jose4j/jwt/IntDate;->value:J

    move-object v4, v1

    invoke-virtual {v4}, Lorg/jose4j/jwt/IntDate;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/IntDate;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwt/IntDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public before(Lorg/jose4j/jwt/IntDate;)Z
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/IntDate;
    move-object v1, p1

    .local v1, "when":Lorg/jose4j/jwt/IntDate;
    move-object v2, v0

    iget-wide v2, v2, Lorg/jose4j/jwt/IntDate;->value:J

    move-object v4, v1

    invoke-virtual {v4}, Lorg/jose4j/jwt/IntDate;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/IntDate;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwt/IntDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/IntDate;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lorg/jose4j/jwt/IntDate;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-wide v2, v2, Lorg/jose4j/jwt/IntDate;->value:J

    move-object v4, v1

    check-cast v4, Lorg/jose4j/jwt/IntDate;

    iget-wide v4, v4, Lorg/jose4j/jwt/IntDate;->value:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/IntDate;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwt/IntDate;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getValue()J
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/IntDate;
    move-object v1, v0

    iget-wide v1, v1, Lorg/jose4j/jwt/IntDate;->value:J

    move-wide v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/IntDate;
    return-wide v0
.end method

.method public getValueInMillis()J
    .locals 6

    .prologue
    .line 66
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/IntDate;
    move-object v2, v1

    invoke-virtual {v2}, Lorg/jose4j/jwt/IntDate;->getValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lorg/jose4j/jwt/IntDate;
    return-wide v1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 99
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/IntDate;
    move-object v2, v1

    iget-wide v2, v2, Lorg/jose4j/jwt/IntDate;->value:J

    move-object v4, v1

    iget-wide v4, v4, Lorg/jose4j/jwt/IntDate;->value:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lorg/jose4j/jwt/IntDate;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/IntDate;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 83
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string/jumbo v4, "IntDate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 84
    move-object v3, v2

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lorg/jose4j/jwt/IntDate;->getValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    move-object v3, v2

    new-instance v4, Ljava/util/Date;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-virtual {v6}, Lorg/jose4j/jwt/IntDate;->getValueInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    move-object v3, v2

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Lorg/jose4j/jwt/IntDate;
    return-object v1
.end method
