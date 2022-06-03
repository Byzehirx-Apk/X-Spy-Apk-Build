.class Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;I)V
    .locals 5

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    move-object v3, v0

    invoke-direct {v3}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 570
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 587
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez v2, :cond_0

    .line 580
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 582
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 575
    return-void
.end method
