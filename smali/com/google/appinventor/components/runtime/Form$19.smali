.class final Lcom/google/appinventor/components/runtime/Form$19;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 4

    .prologue
    .line 1251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form$19;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerClosed(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1266
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$19;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->access$302(Lcom/google/appinventor/components/runtime/Form;Z)Z

    move-result v2

    .line 1267
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$19;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->SideMenuClosed()V

    .line 1268
    return-void
.end method

.method public final onDrawerOpened(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1260
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$19;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->access$302(Lcom/google/appinventor/components/runtime/Form;Z)Z

    move-result v2

    .line 1261
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$19;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->SideMenuOpened()V

    .line 1262
    return-void
.end method

.method public final onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1256
    return-void
.end method

.method public final onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 1274
    return-void
.end method
