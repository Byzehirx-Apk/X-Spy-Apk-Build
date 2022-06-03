.class Landroidx/appcompat/view/menu/StandardMenuPopup$2;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/StandardMenuPopup;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/view/menu/StandardMenuPopup;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/StandardMenuPopup$2;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v2, :cond_1

    .line 88
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 89
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v2, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v3, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 91
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 92
    return-void
.end method
