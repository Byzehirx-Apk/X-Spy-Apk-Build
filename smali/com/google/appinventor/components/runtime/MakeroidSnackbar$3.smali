.class final Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->showSnackbar(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSnackbar;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSnackbar;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string/jumbo v3, "UNDEFINED"

    move-object v1, v3

    .line 147
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 164
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSnackbar;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->OnDismissed(Ljava/lang/String;)V

    .line 165
    return-void

    .line 149
    :pswitch_0
    const-string/jumbo v3, "ACTION"

    move-object v1, v3

    .line 150
    goto :goto_0

    .line 152
    :pswitch_1
    const-string/jumbo v3, "CONSECUTIVE"

    move-object v1, v3

    .line 153
    goto :goto_0

    .line 155
    :pswitch_2
    const-string/jumbo v3, "MANUAL"

    move-object v1, v3

    .line 156
    goto :goto_0

    .line 158
    :pswitch_3
    const-string/jumbo v3, "SWIPE"

    move-object v1, v3

    .line 159
    goto :goto_0

    .line 161
    :pswitch_4
    const-string/jumbo v3, "TIMEOUT"

    move-object v1, v3

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/snackbar/Snackbar;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method

.method public final onShown(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSnackbar;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->OnShown()V

    .line 169
    return-void
.end method

.method public final bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->onShown(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
