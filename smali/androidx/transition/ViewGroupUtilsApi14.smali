.class Landroidx/transition/ViewGroupUtilsApi14;
.super Ljava/lang/Object;
.source "ViewGroupUtilsApi14.java"


# static fields
.field private static final LAYOUT_TRANSITION_CHANGING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ViewGroupUtilsApi14"

.field private static sCancelMethod:Ljava/lang/reflect/Method;

.field private static sCancelMethodFetched:Z

.field private static sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

.field private static sLayoutSuppressedField:Ljava/lang/reflect/Field;

.field private static sLayoutSuppressedFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupUtilsApi14;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method private static cancelLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "t":Landroid/animation/LayoutTransition;
    sget-boolean v2, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    if-nez v2, :cond_0

    .line 111
    :try_start_0
    const-class v2, Landroid/animation/LayoutTransition;

    const-string/jumbo v3, "cancel"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    .line 112
    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    .line 118
    :cond_0
    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 120
    :try_start_1
    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 125
    .line 127
    :cond_1
    :goto_1
    return-void

    .line 113
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 114
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "ViewGroupUtilsApi14"

    const-string/jumbo v3, "Failed to access cancel method by reflection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 121
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 122
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "ViewGroupUtilsApi14"

    const-string/jumbo v3, "Failed to access cancel method by reflection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 125
    goto :goto_1

    .line 123
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 124
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "ViewGroupUtilsApi14"

    const-string/jumbo v3, "Failed to invoke cancel method by reflection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 8
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    move v1, p1

    .local v1, "suppress":Z
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-nez v4, :cond_0

    .line 46
    new-instance v4, Landroidx/transition/ViewGroupUtilsApi14$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/transition/ViewGroupUtilsApi14$1;-><init>()V

    sput-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    .line 52
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 53
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 54
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 55
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 56
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 58
    :cond_0
    move v4, v1

    if-eqz v4, :cond_4

    .line 60
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    move-object v2, v4

    .line 61
    .local v2, "layoutTransition":Landroid/animation/LayoutTransition;
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 62
    move-object v4, v2

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    move-object v4, v2

    invoke-static {v4}, Landroidx/transition/ViewGroupUtilsApi14;->cancelLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 65
    :cond_1
    move-object v4, v2

    sget-object v5, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-eq v4, v5, :cond_2

    .line 66
    move-object v4, v0

    sget v5, Landroidx/transition/R$id;->transition_layout_save:I

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 70
    :cond_2
    move-object v4, v0

    sget-object v5, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 71
    .line 106
    .end local v2    # "layoutTransition":Landroid/animation/LayoutTransition;
    :cond_3
    :goto_0
    return-void

    .line 73
    :cond_4
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 75
    sget-boolean v4, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    if-nez v4, :cond_5

    .line 77
    :try_start_0
    const-class v4, Landroid/view/ViewGroup;

    const-string/jumbo v5, "mLayoutSuppressed"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    .line 78
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    :goto_1
    const/4 v4, 0x1

    sput-boolean v4, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    .line 84
    :cond_5
    const/4 v4, 0x0

    move v2, v4

    .line 85
    .local v2, "layoutSuppressed":Z
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_6

    .line 87
    :try_start_1
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    move v2, v4

    .line 88
    move v4, v2

    if-eqz v4, :cond_6

    .line 89
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 95
    :cond_6
    :goto_2
    move v4, v2

    if-eqz v4, :cond_7

    .line 96
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 99
    :cond_7
    move-object v4, v0

    sget v5, Landroidx/transition/R$id;->transition_layout_save:I

    .line 100
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    move-object v3, v4

    .line 101
    .local v3, "layoutTransition":Landroid/animation/LayoutTransition;
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 102
    move-object v4, v0

    sget v5, Landroidx/transition/R$id;->transition_layout_save:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 103
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 79
    .end local v2    # "layoutSuppressed":Z
    .end local v3    # "layoutTransition":Landroid/animation/LayoutTransition;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 80
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v4, "ViewGroupUtilsApi14"

    const-string/jumbo v5, "Failed to access mLayoutSuppressed field by reflection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 91
    .local v2, "layoutSuppressed":Z
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 92
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ViewGroupUtilsApi14"

    const-string/jumbo v5, "Failed to get mLayoutSuppressed field by reflection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method
