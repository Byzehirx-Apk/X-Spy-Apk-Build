.class public Landroidx/core/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field private final mBridge:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 118
    move-object v1, v0

    new-instance v2, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;)V

    iput-object v2, v1, Landroidx/core/view/AccessibilityDelegateCompat;->mBridge:Landroid/view/View$AccessibilityDelegate;

    .line 119
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget-object v3, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat;
    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 7

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 289
    sget-object v3, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    move-object v2, v3

    .line 290
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 291
    new-instance v3, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    .line 294
    .end local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat;
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method getBridge()Landroid/view/View$AccessibilityDelegate;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/AccessibilityDelegateCompat;->mBridge:Landroid/view/View$AccessibilityDelegate;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat;
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget-object v3, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 227
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget-object v3, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    move-object v4, v1

    move-object v5, v2

    .line 246
    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 245
    invoke-virtual {v3, v4, v5}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 247
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget-object v3, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 207
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, p1

    .local v1, "host":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget-object v4, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat;
    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "args":Landroid/os/Bundle;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 315
    sget-object v4, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    .line 317
    .end local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/AccessibilityDelegateCompat;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move v2, p2

    .local v2, "eventType":I
    sget-object v3, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 144
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/AccessibilityDelegateCompat;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget-object v3, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 166
    return-void
.end method
