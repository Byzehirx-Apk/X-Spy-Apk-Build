.class public Lorg/jose4j/jwe/KeyManagementAlgorithmIdentifiers;
.super Ljava/lang/Object;
.source "KeyManagementAlgorithmIdentifiers.java"


# static fields
.field public static final A128GCMKW:Ljava/lang/String; = "A128GCMKW"

.field public static final A128KW:Ljava/lang/String; = "A128KW"

.field public static final A192GCMKW:Ljava/lang/String; = "A192GCMKW"

.field public static final A192KW:Ljava/lang/String; = "A192KW"

.field public static final A256GCMKW:Ljava/lang/String; = "A256GCMKW"

.field public static final A256KW:Ljava/lang/String; = "A256KW"

.field public static final DIRECT:Ljava/lang/String; = "dir"

.field public static final ECDH_ES:Ljava/lang/String; = "ECDH-ES"

.field public static final ECDH_ES_A128KW:Ljava/lang/String; = "ECDH-ES+A128KW"

.field public static final ECDH_ES_A192KW:Ljava/lang/String; = "ECDH-ES+A192KW"

.field public static final ECDH_ES_A256KW:Ljava/lang/String; = "ECDH-ES+A256KW"

.field public static final PBES2_HS256_A128KW:Ljava/lang/String; = "PBES2-HS256+A128KW"

.field public static final PBES2_HS384_A192KW:Ljava/lang/String; = "PBES2-HS384+A192KW"

.field public static final PBES2_HS512_A256KW:Ljava/lang/String; = "PBES2-HS512+A256KW"

.field public static final RSA1_5:Ljava/lang/String; = "RSA1_5"

.field public static final RSA_OAEP:Ljava/lang/String; = "RSA-OAEP"

.field public static final RSA_OAEP_256:Ljava/lang/String; = "RSA-OAEP-256"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/KeyManagementAlgorithmIdentifiers;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
