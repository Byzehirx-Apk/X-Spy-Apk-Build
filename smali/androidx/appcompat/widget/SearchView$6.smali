.class Landroidx/appcompat/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
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
    .line 997
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$6;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 1001
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$6;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move v2, p2

    .local v2, "keyCode":I
    move-object v3, p3

    .local v3, "event":Landroid/view/KeyEvent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_0

    .line 1002
    const/4 v4, 0x0

    move v0, v4

    .line 1031
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView$6;
    :goto_0
    return v0

    .line 1012
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView$6;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 1013
    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1014
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/appcompat/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 1019
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1020
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1021
    move v4, v2

    const/16 v5, 0x42

    if-ne v4, v5, :cond_2

    .line 1022
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->cancelLongPress()V

    .line 1025
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 1026
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1025
    invoke-virtual {v4, v5, v6, v7}, Landroidx/appcompat/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1027
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1031
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
