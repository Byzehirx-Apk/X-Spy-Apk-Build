.class public Lorg/jose4j/jwk/KeyOperations;
.super Ljava/lang/Object;
.source "KeyOperations.java"


# static fields
.field public static DECRYPT:Ljava/lang/String;

.field public static DERIVE_BITS:Ljava/lang/String;

.field public static DERIVE_KEY:Ljava/lang/String;

.field public static ENCRYPT:Ljava/lang/String;

.field public static SIGN:Ljava/lang/String;

.field public static UNWRAP_KEY:Ljava/lang/String;

.field public static VERIFY:Ljava/lang/String;

.field public static WRAP_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "sign"

    sput-object v0, Lorg/jose4j/jwk/KeyOperations;->SIGN:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "verify"

    sput-object v0, Lorg/jose4j/jwk/KeyOperations;->VERIFY:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "encrypt"

    sput-object v0, Lorg/jose4j/jwk/KeyOperations;->ENCRYPT:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "decrypt"

    sput-object v0, Lorg/jose4j/jwk/KeyOperations;->DECRYPT:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "wrapKey"

    sput-object v0, Lorg/jose4j/jwk/KeyOperations;->WRAP_KEY:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "unwrapKey"

    sput-object v0, Lorg/jose4j/jwk/KeyOperations;->UNWRAP_KEY:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "deriveKey"

    sput-object v0, Lorg/jose4j/jwk/KeyOperations;->DERIVE_KEY:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "deriveBits"

    sput-object v0, Lorg/jose4j/jwk/KeyOperations;->DERIVE_BITS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/KeyOperations;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
