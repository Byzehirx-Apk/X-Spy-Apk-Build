.class final Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilityDelegateAdapter"
.end annotation


# instance fields
.field private final mCompat:Landroidx/core/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "compat":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v2, v0

    invoke-direct {v2}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 54
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v4, v1

    .line 99
    invoke-virtual {v3, v4}, Landroidx/core/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v3

    move-object v2, v3

    .line 100
    .local v2, "provider":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 101
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->getProvider()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeProvider;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v4, v1

    move-object v5, v2

    .line 71
    invoke-static {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    .line 70
    invoke-virtual {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 72
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 77
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "host":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "args":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move v2, p2

    .local v2, "eventType":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 88
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 93
    return-void
.end method
