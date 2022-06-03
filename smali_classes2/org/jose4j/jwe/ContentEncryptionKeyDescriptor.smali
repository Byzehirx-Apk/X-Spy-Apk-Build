.class public Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
.super Ljava/lang/Object;
.source "ContentEncryptionKeyDescriptor.java"


# instance fields
.field private final contentEncryptionKeyAlgorithm:Ljava/lang/String;

.field private final contentEncryptionKeyByteLength:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move v1, p1

    .local v1, "contentEncryptionKeyByteLength":I
    move-object v2, p2

    .local v2, "contentEncryptionKeyAlgorithm":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->contentEncryptionKeyByteLength:I

    .line 29
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->contentEncryptionKeyAlgorithm:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getContentEncryptionKeyAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->contentEncryptionKeyAlgorithm:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    return-object v0
.end method

.method public getContentEncryptionKeyByteLength()I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->contentEncryptionKeyByteLength:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    return v0
.end method
