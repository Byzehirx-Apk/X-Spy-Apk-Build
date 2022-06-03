.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.java"

# interfaces
.implements Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePanelSlideListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelClosed(Landroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 237
    return-void
.end method

.method public onPanelOpened(Landroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 234
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 231
    return-void
.end method
