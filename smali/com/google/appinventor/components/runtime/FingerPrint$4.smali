.class final Lcom/google/appinventor/components/runtime/FingerPrint$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FingerPrint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 415
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FingerPrint$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/FingerPrint;->CancelScan()V

    .line 416
    move-object v4, v1

    invoke-interface {v4}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method
