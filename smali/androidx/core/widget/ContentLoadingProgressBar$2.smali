.class Landroidx/core/widget/ContentLoadingProgressBar$2;
.super Ljava/lang/Object;
.source "ContentLoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ContentLoadingProgressBar$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/widget/ContentLoadingProgressBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ContentLoadingProgressBar$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 60
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    iget-boolean v1, v1, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    if-nez v1, :cond_0

    .line 61
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 62
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 64
    :cond_0
    return-void
.end method
