.class final Lcom/google/appinventor/components/runtime/Form$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1303
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1306
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$1500(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$1600(Lcom/google/appinventor/components/runtime/Form;)Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$400(Lcom/google/appinventor/components/runtime/Form;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1307
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$1500(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v2

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1308
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$1500(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v2

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 1316
    :goto_0
    return-void

    .line 1310
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$1500(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v2

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    .line 1314
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->TitlebarBackButtonClicked()V

    .line 1316
    goto :goto_0
.end method
