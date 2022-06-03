.class Landroidx/viewpager/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 4

    .prologue
    .line 3092
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$PagerObserver;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/ViewPager;

    move-object v2, v0

    invoke-direct {v2}, Landroid/database/DataSetObserver;-><init>()V

    .line 3093
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 3097
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$PagerObserver;
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 3098
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 3101
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$PagerObserver;
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 3102
    return-void
.end method
