.class public Lorg/jose4j/jwt/ReservedClaimNames;
.super Ljava/lang/Object;
.source "ReservedClaimNames.java"


# static fields
.field public static final AUDIENCE:Ljava/lang/String; = "aud"

.field public static final EXPIRATION_TIME:Ljava/lang/String; = "exp"

.field public static final INITIAL_REGISTERED_CLAIM_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISSUED_AT:Ljava/lang/String; = "iat"

.field public static final ISSUER:Ljava/lang/String; = "iss"

.field public static final JWT_ID:Ljava/lang/String; = "jti"

.field public static final NOT_BEFORE:Ljava/lang/String; = "nbf"

.field public static final SUBJECT:Ljava/lang/String; = "sub"

.field public static final TYPE:Ljava/lang/String; = "typ"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashSet;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string/jumbo v5, "iss"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string/jumbo v5, "sub"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "aud"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string/jumbo v5, "exp"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string/jumbo v5, "nbf"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string/jumbo v5, "iat"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const-string/jumbo v5, "jti"

    aput-object v5, v3, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwt/ReservedClaimNames;->INITIAL_REGISTERED_CLAIM_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/ReservedClaimNames;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
