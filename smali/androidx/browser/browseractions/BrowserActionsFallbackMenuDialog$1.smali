.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BrowserActionsFallbackMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->startAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

.field final synthetic val$isEnterAnimation:Z


# direct methods
.method constructor <init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;Z)V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->val$isEnterAnimation:Z

    move-object v3, v0

    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->val$isEnterAnimation:Z

    if-nez v2, :cond_0

    .line 84
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    invoke-static {v2}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->access$001(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;)V

    .line 86
    :cond_0
    return-void
.end method
