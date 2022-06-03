.class public final enum Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
.super Ljava/lang/Enum;
.source "AlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwa/AlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConstraintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

.field public static final enum BLACKLIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

.field public static final enum PERMIT:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

.field public static final enum WHITELIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "WHITELIST"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->WHITELIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    .line 45
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "BLACKLIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLACKLIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    .line 51
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PERMIT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->PERMIT:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    .line 57
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "BLOCK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->WHITELIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLACKLIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->PERMIT:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    aput-object v3, v1, v2

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->$VALUES:[Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

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
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->$VALUES:[Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    invoke-virtual {v0}, [Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    return-object v0
.end method
