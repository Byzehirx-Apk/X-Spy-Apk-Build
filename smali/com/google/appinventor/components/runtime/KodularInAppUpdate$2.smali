.class final Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularInAppUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/android/play/core/install/InstallState;

    move-object v2, v4

    move-object v1, v3

    .line 1080
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1081
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 1082
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateFailed()V

    .line 1091
    :goto_0
    return-void

    .line 1083
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 1084
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 1085
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateCanceled()V

    goto :goto_0

    .line 1086
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 1087
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateDownloaded()V

    goto :goto_0

    .line 1088
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1089
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateDownloading()V

    goto :goto_0

    .line 1090
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1091
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateInstalling()V

    goto :goto_0

    .line 1092
    :cond_4
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1093
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 1094
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateInstalled()V

    .line 77
    :cond_5
    goto :goto_0
.end method
