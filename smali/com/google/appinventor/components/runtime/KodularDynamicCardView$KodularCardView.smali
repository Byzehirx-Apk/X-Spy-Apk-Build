.class public Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;
.super Lcom/google/android/material/card/MaterialCardView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularDynamicCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KodularCardView"
.end annotation


# instance fields
.field public fullClick:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    .line 407
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;)V

    .line 404
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    .line 408
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    .line 411
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 404
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    .line 412
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    .line 415
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 404
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    .line 416
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    move v0, v2

    return v0
.end method
