.class synthetic Lorg/jose4j/jwa/AlgorithmConstraints$1;
.super Ljava/lang/Object;
.source "AlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwa/AlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jose4j$jwa$AlgorithmConstraints$ConstraintType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->values()[Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lorg/jose4j/jwa/AlgorithmConstraints$1;->$SwitchMap$org$jose4j$jwa$AlgorithmConstraints$ConstraintType:[I

    :try_start_0
    sget-object v1, Lorg/jose4j/jwa/AlgorithmConstraints$1;->$SwitchMap$org$jose4j$jwa$AlgorithmConstraints$ConstraintType:[I

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->PERMIT:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    invoke-virtual {v2}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lorg/jose4j/jwa/AlgorithmConstraints$1;->$SwitchMap$org$jose4j$jwa$AlgorithmConstraints$ConstraintType:[I

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->WHITELIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    invoke-virtual {v2}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lorg/jose4j/jwa/AlgorithmConstraints$1;->$SwitchMap$org$jose4j$jwa$AlgorithmConstraints$ConstraintType:[I

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    invoke-virtual {v2}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lorg/jose4j/jwa/AlgorithmConstraints$1;->$SwitchMap$org$jose4j$jwa$AlgorithmConstraints$ConstraintType:[I

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLACKLIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    invoke-virtual {v2}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3
.end method
