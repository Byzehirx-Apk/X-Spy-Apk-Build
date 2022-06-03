.class public final Landroidx/core/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# static fields
.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewGroupCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 115
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v1

    move v0, v1

    .line 117
    .end local v0    # "group":Landroid/view/ViewGroup;
    :goto_0
    return v0

    .restart local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 182
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    .line 187
    .end local v0    # "group":Landroid/view/ViewGroup;
    :goto_0
    return v0

    .line 184
    .restart local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/view/NestedScrollingParent;

    if-eqz v1, :cond_1

    .line 185
    move-object v1, v0

    check-cast v1, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {v1}, Landroidx/core/view/NestedScrollingParent;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 4
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 158
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v2

    move v0, v2

    .line 163
    .end local v0    # "group":Landroid/view/ViewGroup;
    .local v1, "explicit":Ljava/lang/Boolean;
    :goto_0
    return v0

    .line 160
    .end local v1    # "explicit":Ljava/lang/Boolean;
    .restart local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    move-object v2, v0

    sget v3, Landroidx/core/R$id;->tag_transition_group:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v1, v2

    .line 161
    .restart local v1    # "explicit":Ljava/lang/Boolean;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v0

    .line 162
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v0

    .line 163
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    move v0, v3

    .end local v0    # "group":Landroid/view/ViewGroup;
    return v0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 4
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    move v1, p1

    .local v1, "mode":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 131
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    move v1, p1

    .local v1, "split":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 99
    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    move v1, p1

    .local v1, "isTransitionGroup":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 145
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    move-object v2, v0

    sget v3, Landroidx/core/R$id;->tag_transition_group:I

    move v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
