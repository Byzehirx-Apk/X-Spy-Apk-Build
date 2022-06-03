.class Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/Snapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Connection"
.end annotation


# instance fields
.field private mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCreator:I

.field private mMargin:I

.field private mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

.field private mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    move-object v1, p1

    .local v1, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 49
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 50
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    .line 51
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getStrength()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 52
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    .line 53
    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 8

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object v2, v3

    .line 82
    .local v2, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)Z

    move-result v3

    .line 83
    return-void
.end method

.method public updateFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 62
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_0

    .line 63
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 64
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    .line 65
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getStrength()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 66
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    .line 70
    move-object v2, v0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    goto :goto_0
.end method
