.class Landroidx/viewpager/widget/ViewPager$ItemInfo;
.super Ljava/lang/Object;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemInfo"
.end annotation


# instance fields
.field object:Ljava/lang/Object;

.field offset:F

.field position:I

.field scrolling:Z

.field widthFactor:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
