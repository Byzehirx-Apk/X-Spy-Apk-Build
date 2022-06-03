.class final Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularDynamicCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

.field private synthetic lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;I)V
    .locals 5

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 447
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 448
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->TouchDown(I)V

    .line 453
    :cond_0
    :goto_0
    const/4 v3, 0x0

    move v0, v3

    return v0

    .line 449
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move-object v3, v2

    .line 450
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 451
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->TouchUp(I)V

    goto :goto_0
.end method
