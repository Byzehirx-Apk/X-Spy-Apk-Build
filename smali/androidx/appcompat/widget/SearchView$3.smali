.class Landroidx/appcompat/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$3;->this$0:Landroidx/appcompat/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$3;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move v2, p2

    .local v2, "hasFocus":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$3;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v3, :cond_0

    .line 334
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$3;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$3;->this$0:Landroidx/appcompat/widget/SearchView;

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 336
    :cond_0
    return-void
.end method
