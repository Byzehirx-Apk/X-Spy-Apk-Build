.class public final enum Lorg/jose4j/keys/KeyPersuasion;
.super Ljava/lang/Enum;
.source "KeyPersuasion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jose4j/keys/KeyPersuasion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jose4j/keys/KeyPersuasion;

.field public static final enum ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

.field public static final enum NONE:Lorg/jose4j/keys/KeyPersuasion;

.field public static final enum SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 23
    new-instance v0, Lorg/jose4j/keys/KeyPersuasion;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jose4j/keys/KeyPersuasion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/keys/KeyPersuasion;->NONE:Lorg/jose4j/keys/KeyPersuasion;

    new-instance v0, Lorg/jose4j/keys/KeyPersuasion;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "SYMMETRIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jose4j/keys/KeyPersuasion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    new-instance v0, Lorg/jose4j/keys/KeyPersuasion;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "ASYMMETRIC"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/jose4j/keys/KeyPersuasion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jose4j/keys/KeyPersuasion;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lorg/jose4j/keys/KeyPersuasion;->NONE:Lorg/jose4j/keys/KeyPersuasion;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    aput-object v3, v1, v2

    sput-object v0, Lorg/jose4j/keys/KeyPersuasion;->$VALUES:[Lorg/jose4j/keys/KeyPersuasion;

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
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/KeyPersuasion;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jose4j/keys/KeyPersuasion;
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lorg/jose4j/keys/KeyPersuasion;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/jose4j/keys/KeyPersuasion;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lorg/jose4j/keys/KeyPersuasion;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/jose4j/keys/KeyPersuasion;->$VALUES:[Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v0}, [Lorg/jose4j/keys/KeyPersuasion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jose4j/keys/KeyPersuasion;

    return-object v0
.end method
