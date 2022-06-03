.class public Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;,
        Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;,
        Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    }
.end annotation


# static fields
.field private static final ALLOW_BINARY:Z = false

.field public static final AUTO_CONSTRAINT_CREATOR:I = 0x2

.field public static final SCOUT_CREATOR:I = 0x1

.field private static final UNSET_GONE_MARGIN:I = -0x1

.field public static final USER_CREATOR:I


# instance fields
.field private mConnectionCreator:I

.field private mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

.field mGoneMargin:I

.field public mMargin:I

.field final mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

.field private mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

.field mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field final mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "owner":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, p2

    .local v2, "type":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 73
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 74
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 76
    move-object v3, v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 77
    move-object v3, v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 78
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 87
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 88
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 89
    return-void
.end method

.method private isConnectionToMe(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, p2

    .local v2, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 589
    const/4 v7, 0x0

    move v0, v7

    .line 605
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .line 591
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 593
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 594
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 596
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v7

    move-object v3, v7

    .line 597
    .local v3, "targetAnchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;>;"
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v7

    .local v5, "targetAnchorsSize":I
    :goto_1
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_3

    .line 598
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v7

    .line 599
    .local v6, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v7, v6

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isSimilarDimensionConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 600
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 601
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 597
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 605
    .end local v6    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method


# virtual methods
.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    .locals 10

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "toAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v2, p2

    .local v2, "margin":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, -0x1

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return v0
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z
    .locals 11

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "toAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v2, p2

    .local v2, "margin":I
    move v3, p3

    .local v3, "creator":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    const/4 v7, -0x1

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move v9, v3

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return v0
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z
    .locals 9

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "toAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v2, p2

    .local v2, "margin":I
    move v3, p3

    .local v3, "goneMargin":I
    move-object v4, p4

    .local v4, "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    move v5, p5

    .local v5, "creator":I
    move v6, p6

    .local v6, "forceConnection":Z
    move-object v7, v1

    if-nez v7, :cond_0

    .line 211
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 212
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 213
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 214
    move-object v7, v0

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 215
    move-object v7, v0

    const/4 v8, 0x2

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 216
    const/4 v7, 0x1

    move v0, v7

    .line 230
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .line 218
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    move v7, v6

    if-nez v7, :cond_1

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 219
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 221
    :cond_1
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 222
    move v7, v2

    if-lez v7, :cond_2

    .line 223
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 227
    :goto_1
    move-object v7, v0

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 228
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 229
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 230
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 225
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_1
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)Z
    .locals 12

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "toAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v2, p2

    .local v2, "margin":I
    move-object v3, p3

    .local v3, "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    move/from16 v4, p4

    .local v4, "creator":I
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    const/4 v8, -0x1

    move-object v9, v3

    move v10, v4

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return v0
.end method

.method public getConnectionCreator()I
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return v0
.end method

.method public getConnectionType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return-object v0
.end method

.method public getMargin()I
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 126
    const/4 v1, 0x0

    move v0, v1

    .line 132
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .line 128
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 129
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 130
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    move v0, v1

    goto :goto_0

    .line 132
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    move v0, v1

    goto :goto_0
.end method

.method public final getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 5

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 633
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 615
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v1

    .line 631
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return-object v0

    .line 618
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v1

    goto :goto_0

    .line 621
    :pswitch_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v1

    goto :goto_0

    .line 624
    :pswitch_3
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v1

    goto :goto_0

    .line 631
    :pswitch_4
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return-object v0
.end method

.method public getPriorityLevel()I
    .locals 5

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 468
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 458
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    .line 466
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .line 459
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :pswitch_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 460
    :pswitch_2
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 461
    :pswitch_3
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 462
    :pswitch_4
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 463
    :pswitch_5
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 464
    :pswitch_6
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 465
    :pswitch_7
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 466
    :pswitch_8
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return-object v0
.end method

.method public getSnapPriorityLevel()I
    .locals 5

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 446
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 436
    :pswitch_0
    const/4 v1, 0x1

    move v0, v1

    .line 444
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .line 437
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 438
    :pswitch_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 439
    :pswitch_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 440
    :pswitch_4
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 441
    :pswitch_5
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 442
    :pswitch_6
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 443
    :pswitch_7
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 444
    :pswitch_8
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return-object v0
.end method

.method public getStrength()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return-object v0
.end method

.method public getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConnectionAllowed(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z
    .locals 8

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    new-instance v4, Ljava/util/HashSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v2, v4

    .line 567
    .local v2, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 568
    const/4 v4, 0x0

    move v0, v4

    .line 577
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .line 570
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object v3, v4

    .line 571
    .local v3, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 572
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 574
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object v5, v3

    if-ne v4, v5, :cond_2

    .line 575
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 577
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public isConnectionAllowed(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .locals 5

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, p2

    .local v2, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnectionAllowed(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return v0
.end method

.method public isSideAnchor()Z
    .locals 5

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 329
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 321
    :pswitch_0
    const/4 v1, 0x1

    move v0, v1

    .line 327
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :pswitch_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSimilarDimensionConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .locals 7

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    move-object v2, v3

    .line 341
    .local v2, "target":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v3, v4, :cond_0

    .line 342
    const/4 v3, 0x1

    move v0, v3

    .line 360
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .line 344
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 362
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 346
    :pswitch_0
    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 351
    :pswitch_1
    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_2

    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_2

    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 357
    :pswitch_2
    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_4

    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_4

    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_4

    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v3, v4, :cond_5

    :cond_4
    const/4 v3, 0x1

    :goto_3
    move v0, v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 360
    :pswitch_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSnapCompatibleWith(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .locals 6

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_0

    .line 480
    const/4 v2, 0x0

    move v0, v2

    .line 531
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .line 482
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 483
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 485
    :cond_1
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 533
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 487
    :pswitch_0
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 490
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 488
    :sswitch_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 489
    :sswitch_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 494
    :pswitch_1
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_1

    .line 497
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 495
    :sswitch_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 496
    :sswitch_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 501
    :pswitch_2
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 504
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 502
    :pswitch_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 503
    :pswitch_4
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 508
    :pswitch_5
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    .line 511
    :pswitch_6
    const/4 v2, 0x0

    move v0, v2

    goto/16 :goto_0

    .line 509
    :pswitch_7
    const/4 v2, 0x1

    move v0, v2

    goto/16 :goto_0

    .line 510
    :pswitch_8
    const/4 v2, 0x1

    move v0, v2

    goto/16 :goto_0

    .line 515
    :pswitch_9
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_2

    .line 518
    const/4 v2, 0x0

    move v0, v2

    goto/16 :goto_0

    .line 516
    :sswitch_4
    const/4 v2, 0x1

    move v0, v2

    goto/16 :goto_0

    .line 517
    :sswitch_5
    const/4 v2, 0x1

    move v0, v2

    goto/16 :goto_0

    .line 522
    :pswitch_a
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    .line 525
    const/4 v2, 0x0

    move v0, v2

    goto/16 :goto_0

    .line 523
    :pswitch_b
    const/4 v2, 0x1

    move v0, v2

    goto/16 :goto_0

    .line 524
    :pswitch_c
    const/4 v2, 0x1

    move v0, v2

    goto/16 :goto_0

    .line 531
    :pswitch_d
    const/4 v2, 0x0

    move v0, v2

    goto/16 :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_2
        :pswitch_a
        :pswitch_d
    .end packed-switch

    .line 487
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 494
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch

    .line 501
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 508
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 515
    :sswitch_data_2
    .sparse-switch
        0x4 -> :sswitch_4
        0x8 -> :sswitch_5
    .end sparse-switch

    .line 522
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .locals 8

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 269
    const/4 v4, 0x0

    move v0, v4

    .line 305
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .line 271
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v4

    move-object v2, v4

    .line 272
    .local v2, "target":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_3

    .line 273
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_2

    move-object v4, v1

    .line 274
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v4

    if-nez v4, :cond_2

    .line 275
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 277
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 279
    :cond_3
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 307
    new-instance v4, Ljava/lang/AssertionError;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 282
    :pswitch_0
    move-object v4, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v4, v5, :cond_4

    move-object v4, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v4, v5, :cond_4

    move-object v4, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 287
    :pswitch_1
    move-object v4, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v4, v5, :cond_5

    move-object v4, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_8

    :cond_5
    const/4 v4, 0x1

    :goto_2
    move v3, v4

    .line 288
    .local v3, "isCompatible":Z
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_7

    .line 289
    move v4, v3

    if-nez v4, :cond_6

    move-object v4, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_9

    :cond_6
    const/4 v4, 0x1

    :goto_3
    move v3, v4

    .line 291
    :cond_7
    move v4, v3

    move v0, v4

    goto/16 :goto_0

    .line 287
    .end local v3    # "isCompatible":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 289
    .restart local v3    # "isCompatible":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 295
    .end local v3    # "isCompatible":Z
    :pswitch_2
    move-object v4, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v4, v5, :cond_a

    move-object v4, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_d

    :cond_a
    const/4 v4, 0x1

    :goto_4
    move v3, v4

    .line 296
    .restart local v3    # "isCompatible":Z
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_c

    .line 297
    move v4, v3

    if-nez v4, :cond_b

    move-object v4, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_e

    :cond_b
    const/4 v4, 0x1

    :goto_5
    move v3, v4

    .line 299
    :cond_c
    move v4, v3

    move v0, v4

    goto/16 :goto_0

    .line 295
    .end local v3    # "isCompatible":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_4

    .line 297
    .restart local v3    # "isCompatible":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_5

    .line 305
    .end local v3    # "isCompatible":Z
    :pswitch_3
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public isVerticalAnchor()Z
    .locals 5

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 414
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 406
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    .line 412
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 176
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 177
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 178
    move-object v1, v0

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 179
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 180
    move-object v1, v0

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 181
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->reset()V

    .line 182
    return-void
.end method

.method public resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "cache":Landroidx/constraintlayout/solver/Cache;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v2, :cond_0

    .line 102
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/SolverVariable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    goto :goto_0
.end method

.method public setConnectionCreator(I)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v1, p1

    .local v1, "creator":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return-void
.end method

.method public setConnectionType(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "type":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 158
    return-void
.end method

.method public setGoneMargin(I)V
    .locals 4

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 393
    :cond_0
    return-void
.end method

.method public setMargin(I)V
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 383
    :cond_0
    return-void
.end method

.method public setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 4

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v1, p1

    .local v1, "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 373
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    return-object v0
.end method
