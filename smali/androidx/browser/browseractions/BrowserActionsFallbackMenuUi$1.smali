.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;
.super Ljava/lang/Object;
.source "BrowserActionsFallbackMenuUi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->displayMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;->val$view:Landroid/view/View;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;
    move-object v1, p1

    .local v1, "dialogInterface":Landroid/content/DialogInterface;
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;->val$view:Landroid/view/View;

    invoke-interface {v2, v3}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;->onMenuShown(Landroid/view/View;)V

    .line 95
    return-void
.end method
