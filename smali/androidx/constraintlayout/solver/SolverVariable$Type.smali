.class public final enum Landroidx/constraintlayout/solver/SolverVariable$Type;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/solver/SolverVariable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum CONSTANT:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 69
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "UNRESTRICTED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 73
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "CONSTANT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->CONSTANT:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 77
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "SLACK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 81
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 85
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "UNKNOWN"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Landroidx/constraintlayout/solver/SolverVariable$Type;->CONSTANT:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v3, v1, v2

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/solver/SolverVariable$Type;

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
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable$Type;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable$Type;
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/SolverVariable$Type;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/SolverVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-object v0
.end method
