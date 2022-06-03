.class public Lorg/jose4j/jws/AlgorithmIdentifiers;
.super Ljava/lang/Object;
.source "AlgorithmIdentifiers.java"


# static fields
.field public static final ECDSA_USING_P256_CURVE_AND_SHA256:Ljava/lang/String; = "ES256"

.field public static final ECDSA_USING_P384_CURVE_AND_SHA384:Ljava/lang/String; = "ES384"

.field public static final ECDSA_USING_P521_CURVE_AND_SHA512:Ljava/lang/String; = "ES512"

.field public static final HMAC_SHA256:Ljava/lang/String; = "HS256"

.field public static final HMAC_SHA384:Ljava/lang/String; = "HS384"

.field public static final HMAC_SHA512:Ljava/lang/String; = "HS512"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final RSA_PSS_USING_SHA256:Ljava/lang/String; = "PS256"

.field public static final RSA_PSS_USING_SHA384:Ljava/lang/String; = "PS384"

.field public static final RSA_PSS_USING_SHA512:Ljava/lang/String; = "PS512"

.field public static final RSA_USING_SHA256:Ljava/lang/String; = "RS256"

.field public static final RSA_USING_SHA384:Ljava/lang/String; = "RS384"

.field public static final RSA_USING_SHA512:Ljava/lang/String; = "RS512"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/AlgorithmIdentifiers;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
