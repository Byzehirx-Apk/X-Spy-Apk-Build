.class public Landroidx/constraintlayout/widget/Constraints;
.super Landroid/view/ViewGroup;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Constraints"


# instance fields
.field myConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 42
    move-object v2, v0

    const/16 v3, 0x8

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/Constraints;->init(Landroid/util/AttributeSet;)V

    .line 48
    move-object v3, v0

    const/16 v4, 0x8

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/constraintlayout/widget/Constraints;->init(Landroid/util/AttributeSet;)V

    .line 54
    move-object v4, v0

    const/16 v5, 0x8

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 55
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    const-string/jumbo v2, "Constraints"

    const-string/jumbo v3, " ################# init"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 136
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/Constraints;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/Constraints;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    new-instance v1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/Constraints;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/Constraints;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/Constraints;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/Constraints;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Constraints;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/Constraints;
    return-object v0
.end method

.method public getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/Constraints;->myConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    if-nez v1, :cond_0

    .line 148
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/widget/Constraints;->myConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 151
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/Constraints;->myConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/Constraints;)V

    .line 152
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/Constraints;->myConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/Constraints;
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 159
    return-void
.end method
