.class public Lorg/jose4j/lang/DefaultByteGenerator;
.super Ljava/lang/Object;
.source "DefaultByteGenerator.java"

# interfaces
.implements Lorg/jose4j/lang/ByteGenerator;


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/DefaultByteGenerator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v1, v0

    new-instance v2, Ljava/security/SecureRandom;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, v1, Lorg/jose4j/lang/DefaultByteGenerator;->random:Ljava/security/SecureRandom;

    .line 31
    return-void
.end method


# virtual methods
.method public randomBytes(I)[B
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/DefaultByteGenerator;
    move v1, p1

    .local v1, "length":I
    move v3, v1

    new-array v3, v3, [B

    move-object v2, v3

    .line 40
    .local v2, "bytes":[B
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/lang/DefaultByteGenerator;->random:Ljava/security/SecureRandom;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 41
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/lang/DefaultByteGenerator;
    return-object v0
.end method
