.class public Lorg/jose4j/jwa/AlgorithmConstraints;
.super Ljava/lang/Object;
.source "AlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwa/AlgorithmConstraints$1;,
        Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    }
.end annotation


# static fields
.field public static final ALLOW_ONLY_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

.field public static final DISALLOW_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

.field public static final NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;


# instance fields
.field private final algorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 32
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 33
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "none"

    aput-object v6, v4, v5

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->DISALLOW_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 34
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->PERMIT:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "none"

    aput-object v6, v4, v5

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->ALLOW_ONLY_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method public varargs constructor <init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v1, p1

    .local v1, "type":Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    move-object v2, p2

    .local v2, "algorithms":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v3, v1

    if-nez v3, :cond_0

    .line 66
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "ConstraintType cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwa/AlgorithmConstraints;->type:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    .line 69
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lorg/jose4j/jwa/AlgorithmConstraints;->algorithms:Ljava/util/Set;

    .line 70
    return-void
.end method


# virtual methods
.method public checkConstraint(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v1, p1

    .local v1, "algorithm":Ljava/lang/String;
    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints$1;->$SwitchMap$org$jose4j$jwa$AlgorithmConstraints$ConstraintType:[I

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwa/AlgorithmConstraints;->type:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    invoke-virtual {v3}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 91
    :cond_0
    return-void

    .line 78
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwa/AlgorithmConstraints;->algorithms:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Lorg/jose4j/lang/InvalidAlgorithmException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' is not a permitted algorithm."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwa/AlgorithmConstraints;->algorithms:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    new-instance v2, Lorg/jose4j/lang/InvalidAlgorithmException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' is a blocked algorithm."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
