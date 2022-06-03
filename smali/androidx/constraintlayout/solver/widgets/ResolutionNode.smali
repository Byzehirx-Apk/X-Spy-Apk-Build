.class public Landroidx/constraintlayout/solver/widgets/ResolutionNode;
.super Ljava/lang/Object;
.source "ResolutionNode.java"


# static fields
.field public static final REMOVED:I = 0x2

.field public static final RESOLVED:I = 0x1

.field public static final UNRESOLVED:I


# instance fields
.field dependents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ResolutionNode;",
            ">;"
        }
    .end annotation
.end field

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    .line 35
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    return-void
.end method


# virtual methods
.method public addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v1, p1

    .local v1, "node":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 39
    return-void
.end method

.method public didResolve()V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    .line 70
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    move-object v2, v3

    .line 71
    .local v2, "node":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->resolve()V

    .line 72
    goto :goto_0

    .line 73
    .end local v2    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    .line 48
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    move-object v2, v3

    .line 49
    .local v2, "node":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->invalidate()V

    .line 50
    goto :goto_0

    .line 51
    .end local v2    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    :cond_0
    return-void
.end method

.method public invalidateAnchors()V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v3, v0

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v3, :cond_0

    .line 55
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    .line 57
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    move-object v2, v3

    .line 58
    .local v2, "node":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->invalidateAnchors()V

    .line 59
    goto :goto_0

    .line 60
    .end local v2    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    :cond_1
    return-void
.end method

.method public isResolved()Z
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Landroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .locals 0
    .param p1, "resolutionDimension"    # Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .prologue
    .line 85
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    .line 43
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 44
    return-void
.end method

.method public resolve()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
