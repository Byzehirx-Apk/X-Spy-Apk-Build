.class public Lorg/jose4j/jwe/ContentEncryptionAlgorithmIdentifiers;
.super Ljava/lang/Object;
.source "ContentEncryptionAlgorithmIdentifiers.java"


# static fields
.field public static final AES_128_CBC_HMAC_SHA_256:Ljava/lang/String; = "A128CBC-HS256"

.field public static final AES_128_GCM:Ljava/lang/String; = "A128GCM"

.field public static final AES_192_CBC_HMAC_SHA_384:Ljava/lang/String; = "A192CBC-HS384"

.field public static final AES_192_GCM:Ljava/lang/String; = "A192GCM"

.field public static final AES_256_CBC_HMAC_SHA_512:Ljava/lang/String; = "A256CBC-HS512"

.field public static final AES_256_GCM:Ljava/lang/String; = "A256GCM"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/ContentEncryptionAlgorithmIdentifiers;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
