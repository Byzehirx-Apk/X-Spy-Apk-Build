.class public Landroidx/transition/AutoTransition;
.super Landroidx/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/transition/AutoTransition;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/TransitionSet;-><init>()V

    .line 38
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/AutoTransition;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/transition/AutoTransition;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    move-object v3, v0

    invoke-direct {v3}, Landroidx/transition/AutoTransition;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/transition/AutoTransition;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/transition/AutoTransition;->setOrdering(I)Landroidx/transition/TransitionSet;

    move-result-object v1

    .line 48
    move-object v1, v0

    new-instance v2, Landroidx/transition/Fade;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroidx/transition/Fade;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/transition/AutoTransition;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroidx/transition/ChangeBounds;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroidx/transition/Fade;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/transition/Fade;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v1

    .line 51
    return-void
.end method
