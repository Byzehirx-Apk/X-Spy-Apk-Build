.class public Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
.super Ljava/lang/Object;
.source "SimpleAeadCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/SimpleAeadCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CipherOutput"
.end annotation


# instance fields
.field private ciphertext:[B

.field private tag:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;[B)[B
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "x0":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    move-object v1, p1

    .local v1, "x1":[B
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->ciphertext:[B

    move-object v0, v2

    .end local v0    # "x0":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    return-object v0
.end method

.method static synthetic access$102(Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;[B)[B
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "x0":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    move-object v1, p1

    .local v1, "x1":[B
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->tag:[B

    move-object v0, v2

    .end local v0    # "x0":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    return-object v0
.end method


# virtual methods
.method public getCiphertext()[B
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->ciphertext:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    return-object v0
.end method

.method public getTag()[B
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->tag:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    return-object v0
.end method
