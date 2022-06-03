.class final Lcom/google/appinventor/components/runtime/HVArrangement$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/HVArrangement;->isCard(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 410
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 421
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move v0, v3

    return v0

    .line 414
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 415
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 418
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/HVArrangement;->Click()V

    goto :goto_0
.end method
