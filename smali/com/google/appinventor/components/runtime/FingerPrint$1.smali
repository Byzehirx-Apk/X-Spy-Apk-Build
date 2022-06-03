.class final Lcom/google/appinventor/components/runtime/FingerPrint$1;
.super Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FingerPrint;->Authenticate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 9

    .prologue
    .line 132
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    move v5, v2

    move-object v6, v3

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/FingerPrint;->OnAuthenticationError(ILjava/lang/String;)V

    .line 133
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    move-object v5, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, -0xcbcca

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;Ljava/lang/String;I)V

    .line 135
    new-instance v4, Landroid/os/Handler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 136
    new-instance v5, Lcom/google/appinventor/components/runtime/FingerPrint$1$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/FingerPrint$1$1;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint$1;)V

    const-wide/16 v6, 0x320

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 143
    :cond_1
    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 7

    .prologue
    .line 178
    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/FingerPrint;->OnAuthenticationFailed()V

    .line 179
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    const-string/jumbo v3, "Fingerprint not recognized"

    const v4, -0xcbcca

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;Ljava/lang/String;I)V

    .line 181
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 182
    new-instance v3, Lcom/google/appinventor/components/runtime/FingerPrint$1$4;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/FingerPrint$1$4;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint$1;)V

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 190
    :cond_1
    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 9

    .prologue
    .line 147
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    move v5, v2

    move-object v6, v3

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/FingerPrint;->OnAuthenticationHelp(ILjava/lang/String;)V

    .line 148
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    move-object v5, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, -0xcbcca

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;Ljava/lang/String;I)V

    .line 150
    new-instance v4, Landroid/os/Handler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 151
    new-instance v5, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint$1;)V

    const-wide/16 v6, 0x320

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 159
    :cond_1
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/FingerPrint;->OnAuthenticationSucceeded()V

    .line 164
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    const-string/jumbo v3, "Fingerprint recognized"

    const v4, -0xb350b0

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;Ljava/lang/String;I)V

    .line 166
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 167
    new-instance v3, Lcom/google/appinventor/components/runtime/FingerPrint$1$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/FingerPrint$1$3;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint$1;)V

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 174
    :cond_1
    return-void
.end method
