.class public final enum Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
.super Ljava/lang/Enum;
.source "JsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/JsonWebKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputControlLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

.field public static final enum INCLUDE_PRIVATE:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

.field public static final enum INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

.field public static final enum PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "INCLUDE_PRIVATE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_PRIVATE:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    new-instance v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "INCLUDE_SYMMETRIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    new-instance v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PUBLIC_ONLY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_PRIVATE:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    aput-object v3, v1, v2

    sput-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->$VALUES:[Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->$VALUES:[Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {v0}, [Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    return-object v0
.end method
