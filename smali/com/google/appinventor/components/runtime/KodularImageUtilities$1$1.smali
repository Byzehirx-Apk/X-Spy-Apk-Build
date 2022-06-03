.class final Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 82
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;Z)Z

    move-result v3

    .line 83
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->LoadImageAsync(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;Z)Z

    move-result v3

    .line 86
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularImageUtilities$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    const-string/jumbo v5, "LoadImageAsync"

    const-string/jumbo v6, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    goto :goto_0
.end method
