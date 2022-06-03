.class Landroidx/viewpager/widget/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/viewpager/widget/ViewPager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager$3;->this$0:Landroidx/viewpager/widget/ViewPager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$3;
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager$3;->this$0:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 273
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager$3;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 274
    return-void
.end method
