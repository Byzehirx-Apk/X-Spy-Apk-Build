.class final Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnSuccessListener",
        "<",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-object v2, v4

    move-object v1, v3

    .line 1183
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1188
    move-object v3, v1

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-static {}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()I

    move-result v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1191
    :goto_0
    return-void

    .line 1189
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1190
    const-string/jumbo v3, "InApp Update"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1191
    goto :goto_0

    .line 1192
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 1197
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/play/core/tasks/Task;

    move-result-object v3

    .line 179
    :cond_1
    goto :goto_0
.end method
