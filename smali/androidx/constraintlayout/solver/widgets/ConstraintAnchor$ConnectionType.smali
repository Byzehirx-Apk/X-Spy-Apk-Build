.class public final enum Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

.field public static final enum RELAXED:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

.field public static final enum STRICT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "RELAXED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "STRICT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    aput-object v3, v1, v2

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->$VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

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
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->$VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    return-object v0
.end method
