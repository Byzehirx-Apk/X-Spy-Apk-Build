.class public Landroidx/constraintlayout/solver/widgets/Snapshot;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    }
.end annotation


# instance fields
.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 11

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Snapshot;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    .line 92
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mX:I

    .line 93
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mY:I

    .line 94
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mWidth:I

    .line 95
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mHeight:I

    .line 96
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 97
    .local v2, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .local v4, "anchorsSize":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 98
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v6

    .line 99
    .local v5, "a":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    new-instance v7, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-direct {v8, v9}, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v5    # "a":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Snapshot;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mX:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setX(I)V

    .line 127
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mY:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setY(I)V

    .line 128
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mWidth:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 129
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Snapshot;->mHeight:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 130
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .local v3, "mConnectionsSize":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 131
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;

    move-object v4, v5

    .line 132
    .local v4, "connection":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->applyTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v4    # "connection":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    :cond_0
    return-void
.end method

.method public updateFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Snapshot;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Snapshot;->mX:I

    .line 110
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Snapshot;->mY:I

    .line 111
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Snapshot;->mWidth:I

    .line 112
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Snapshot;->mHeight:I

    .line 113
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 114
    .local v2, "connections":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 115
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;

    move-object v4, v5

    .line 116
    .local v4, "connection":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->updateFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v4    # "connection":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    :cond_0
    return-void
.end method
