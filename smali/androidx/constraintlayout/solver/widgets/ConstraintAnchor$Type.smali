.class public final enum Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

.field public static final enum BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

.field public static final enum BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

.field public static final enum LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

.field public static final enum NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

.field public static final enum RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

.field public static final enum TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "TOP"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "RIGHT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "BOTTOM"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "BASELINE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "CENTER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "CENTER_X"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "CENTER_Y"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v0, 0x9

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    aput-object v3, v1, v2

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->$VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

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

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->$VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method
