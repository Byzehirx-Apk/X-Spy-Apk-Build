.class final Lcom/google/appinventor/components/runtime/File$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->Delete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

.field private synthetic rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/File$2;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Ljava/lang/String;

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/File$2;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:Z

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 12

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_2

    .line 213
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File$2;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Ljava/lang/String;

    const-string/jumbo v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    const-string/jumbo v5, "DeleteFile"

    const/16 v6, 0x839

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/File$2;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 216
    .line 230
    :goto_0
    return-void

    .line 218
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File$2;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Ljava/lang/String;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/File$2;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:Z

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/File;->access$000(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 219
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File$2;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    const-string/jumbo v5, "Delete"

    new-instance v6, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 225
    :cond_1
    new-instance v3, Ljava/io/File;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 227
    goto :goto_0

    .line 228
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    const-string/jumbo v5, "Delete"

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    goto :goto_0
.end method
