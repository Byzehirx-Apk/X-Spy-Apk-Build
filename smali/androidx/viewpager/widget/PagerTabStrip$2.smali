.class Landroidx/viewpager/widget/PagerTabStrip$2;
.super Ljava/lang/Object;
.source "PagerTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/PagerTabStrip;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/PagerTabStrip;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/viewpager/widget/PagerTabStrip;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/viewpager/widget/PagerTabStrip$2;->this$0:Landroidx/viewpager/widget/PagerTabStrip;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTabStrip$2;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTabStrip$2;->this$0:Landroidx/viewpager/widget/PagerTabStrip;

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTabStrip$2;->this$0:Landroidx/viewpager/widget/PagerTabStrip;

    iget-object v3, v3, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 122
    return-void
.end method
