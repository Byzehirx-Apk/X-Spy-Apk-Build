.class Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareActivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ShareActionProvider;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ShareActionProvider;)V
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 398
    return-void
.end method


# virtual methods
.method public onChooseActivity(Landroidx/appcompat/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
    move-object v1, p1

    .local v1, "host":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object v3, v3, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-eqz v3, :cond_0

    .line 403
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object v3, v3, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Landroidx/appcompat/widget/ShareActionProvider;Landroid/content/Intent;)Z

    move-result v3

    .line 406
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
    return v0
.end method
