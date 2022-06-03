.class Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 4

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 553
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-object v2, v6

    .line 558
    .local v2, "tabView":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBar$Tab;->select()V

    .line 559
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v6, v6, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v6

    move v3, v6

    .line 560
    .local v3, "tabCount":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 561
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v6, v6, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 562
    .local v5, "child":Landroid/view/View;
    move-object v6, v5

    move-object v7, v5

    move-object v8, v1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 560
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 562
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 564
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
