.class Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 4

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/widget/BaseAdapter;-><init>()V

    .line 523
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    move v1, p1

    .local v1, "position":I
    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 543
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/app/ActionBar$Tab;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-result-object v4

    move-object v2, v4

    .line 547
    :goto_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    return-object v0

    .line 545
    .restart local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->bindTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    goto :goto_0
.end method
