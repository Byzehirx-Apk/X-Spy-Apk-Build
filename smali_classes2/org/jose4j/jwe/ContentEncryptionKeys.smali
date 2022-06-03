.class public Lorg/jose4j/jwe/ContentEncryptionKeys;
.super Ljava/lang/Object;
.source "ContentEncryptionKeys.java"


# instance fields
.field private final contentEncryptionKey:[B

.field private final encryptedKey:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionKeys;
    move-object v1, p1

    .local v1, "contentEncryptionKey":[B
    move-object v2, p2

    .local v2, "encryptedKey":[B
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwe/ContentEncryptionKeys;->contentEncryptionKey:[B

    .line 31
    move-object v3, v0

    move-object v4, v2

    if-nez v4, :cond_0

    sget-object v4, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    :goto_0
    iput-object v4, v3, Lorg/jose4j/jwe/ContentEncryptionKeys;->encryptedKey:[B

    .line 32
    return-void

    .line 31
    :cond_0
    move-object v4, v2

    goto :goto_0
.end method


# virtual methods
.method public getContentEncryptionKey()[B
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionKeys;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/ContentEncryptionKeys;->contentEncryptionKey:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/ContentEncryptionKeys;
    return-object v0
.end method

.method public getEncryptedKey()[B
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionKeys;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/ContentEncryptionKeys;->encryptedKey:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/ContentEncryptionKeys;
    return-object v0
.end method
