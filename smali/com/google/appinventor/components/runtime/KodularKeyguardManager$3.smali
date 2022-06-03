.class final Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->RequestDismissKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 6

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    .line 186
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$2;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 192
    return-void
.end method

.method public final onDismissError()V
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissError()V

    .line 175
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$1;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 181
    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    .line 197
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$3;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 203
    return-void
.end method
