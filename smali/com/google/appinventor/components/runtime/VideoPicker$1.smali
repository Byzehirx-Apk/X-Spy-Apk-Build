.class final Lcom/google/appinventor/components/runtime/VideoPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/VideoPicker;->click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/VideoPicker;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_1

    .line 59
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPicker;->BeforePicking()V

    .line 60
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker;->requestCode:I

    if-nez v3, :cond_0

    .line 61
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/VideoPicker;->requestCode:I

    .line 63
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/VideoPicker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget v5, v5, Lcom/google/appinventor/components/runtime/VideoPicker;->requestCode:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getOpenAnimType()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 65
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .line 74
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 67
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/VideoPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPicker;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    const-string/jumbo v5, "Open"

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 70
    goto :goto_0

    .line 68
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 69
    const-string/jumbo v3, "VideoPicker"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/VideoPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPicker;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/VideoPicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPicker;

    const-string/jumbo v5, "Open"

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    goto :goto_0
.end method
