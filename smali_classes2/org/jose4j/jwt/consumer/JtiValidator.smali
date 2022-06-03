.class public Lorg/jose4j/jwt/consumer/JtiValidator;
.super Ljava/lang/Object;
.source "JtiValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final MISSING_JTI:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;


# instance fields
.field private requireJti:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "The JWT ID (jti) claim is not present."

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/JtiValidator;->MISSING_JTI:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JtiValidator;
    move v1, p1

    .local v1, "requireJti":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/JtiValidator;->requireJti:Z

    .line 33
    return-void
.end method


# virtual methods
.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JtiValidator;
    move-object v1, p1

    .local v1, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v3, v1

    invoke-virtual {v3}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jose4j/jwt/JwtClaims;->getJwtId()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 39
    .local v2, "subject":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lorg/jose4j/jwt/consumer/JtiValidator;->requireJti:Z

    if-eqz v3, :cond_0

    sget-object v3, Lorg/jose4j/jwt/consumer/JtiValidator;->MISSING_JTI:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JtiValidator;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/JtiValidator;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
