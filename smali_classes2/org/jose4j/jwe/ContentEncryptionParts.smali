.class public Lorg/jose4j/jwe/ContentEncryptionParts;
.super Ljava/lang/Object;
.source "ContentEncryptionParts.java"


# instance fields
.field private authenticationTag:[B

.field private ciphertext:[B

.field private iv:[B


# direct methods
.method public constructor <init>([B[B[B)V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionParts;
    move-object v1, p1

    .local v1, "iv":[B
    move-object v2, p2

    .local v2, "ciphertext":[B
    move-object v3, p3

    .local v3, "authenticationTag":[B
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/jose4j/jwe/ContentEncryptionParts;->iv:[B

    .line 30
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/jose4j/jwe/ContentEncryptionParts;->ciphertext:[B

    .line 31
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/jose4j/jwe/ContentEncryptionParts;->authenticationTag:[B

    .line 32
    return-void
.end method


# virtual methods
.method public getAuthenticationTag()[B
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionParts;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/ContentEncryptionParts;->authenticationTag:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/ContentEncryptionParts;
    return-object v0
.end method

.method public getCiphertext()[B
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionParts;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/ContentEncryptionParts;->ciphertext:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/ContentEncryptionParts;
    return-object v0
.end method

.method public getIv()[B
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionParts;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/ContentEncryptionParts;->iv:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/ContentEncryptionParts;
    return-object v0
.end method
