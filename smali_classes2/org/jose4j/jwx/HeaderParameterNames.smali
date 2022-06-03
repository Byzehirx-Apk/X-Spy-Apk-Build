.class public Lorg/jose4j/jwx/HeaderParameterNames;
.super Ljava/lang/Object;
.source "HeaderParameterNames.java"


# static fields
.field public static final AGREEMENT_PARTY_U_INFO:Ljava/lang/String; = "apu"

.field public static final AGREEMENT_PARTY_V_INFO:Ljava/lang/String; = "apv"

.field public static final ALGORITHM:Ljava/lang/String; = "alg"

.field public static final AUTHENTICATION_TAG:Ljava/lang/String; = "tag"

.field public static final BASE64URL_ENCODE_PAYLOAD:Ljava/lang/String; = "b64"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "cty"

.field public static final CRITICAL:Ljava/lang/String; = "crit"

.field public static final ENCRYPTION_METHOD:Ljava/lang/String; = "enc"

.field public static final EPHEMERAL_PUBLIC_KEY:Ljava/lang/String; = "epk"

.field public static final INITIALIZATION_VECTOR:Ljava/lang/String; = "iv"

.field public static final JWK:Ljava/lang/String; = "jwk"

.field public static final JWK_SET_URL:Ljava/lang/String; = "jku"

.field public static final KEY_ID:Ljava/lang/String; = "kid"

.field public static final PBES2_ITERATION_COUNT:Ljava/lang/String; = "p2c"

.field public static final PBES2_SALT_INPUT:Ljava/lang/String; = "p2s"

.field public static final TYPE:Ljava/lang/String; = "typ"

.field public static final X509_CERTIFICATE_CHAIN:Ljava/lang/String; = "x5c"

.field public static final X509_CERTIFICATE_SHA256_THUMBPRINT:Ljava/lang/String; = "x5t#S256"

.field public static final X509_CERTIFICATE_THUMBPRINT:Ljava/lang/String; = "x5t"

.field public static final X509_URL:Ljava/lang/String; = "x5u"

.field public static final ZIP:Ljava/lang/String; = "zip"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/HeaderParameterNames;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
