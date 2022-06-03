.class public final Landroidx/core/view/accessibility/AccessibilityManagerCompat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityManagerCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 47
    const/4 v2, 0x0

    move v0, v2

    .line 49
    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :goto_0
    return v0

    .restart local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    move-object v2, v0

    new-instance v3, Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;-><init>(Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 166
    move-object v2, v1

    if-nez v2, :cond_0

    .line 167
    const/4 v2, 0x0

    move v0, v2

    .line 172
    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :goto_0
    return v0

    .line 169
    .restart local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    move-object v2, v0

    new-instance v3, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 172
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    move v1, p1

    .local v1, "feedbackTypeFlags":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    return-object v0
.end method

.method public static getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    return-object v0
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    return v0
.end method

.method public static removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 67
    const/4 v2, 0x0

    move v0, v2

    .line 69
    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :goto_0
    return v0

    .restart local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    move-object v2, v0

    new-instance v3, Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;-><init>(Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 185
    move-object v2, v1

    if-nez v2, :cond_0

    .line 186
    const/4 v2, 0x0

    move v0, v2

    .line 191
    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :goto_0
    return v0

    .line 188
    .restart local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    move-object v2, v0

    new-instance v3, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 191
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
