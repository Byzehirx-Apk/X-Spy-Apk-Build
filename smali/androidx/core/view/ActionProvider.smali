.class public abstract Landroidx/core/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ActionProvider$VisibilityListener;,
        Landroidx/core/view/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider(support)"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 140
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/ActionProvider;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/ActionProvider;->mContext:Landroid/content/Context;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/ActionProvider;
    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/ActionProvider;
    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/ActionProvider;
    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    move-object v1, p1

    .local v1, "forItem":Landroid/view/MenuItem;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/view/ActionProvider;
    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/ActionProvider;
    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 269
    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/ActionProvider;
    return v0
.end method

.method public refreshVisibility()V
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/view/ActionProvider;->overridesItemVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/view/ActionProvider;->isVisible()Z

    move-result v2

    invoke-interface {v1, v2}, Landroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    .line 313
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    .line 314
    return-void
.end method

.method public setSubUiVisibilityListener(Landroidx/core/view/ActionProvider$SubUiVisibilityListener;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/ActionProvider$SubUiVisibilityListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    .line 290
    return-void
.end method

.method public setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V
    .locals 6

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/ActionProvider$VisibilityListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 300
    const-string/jumbo v2, "ActionProvider(support)"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    .line 301
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " instance while it is still in use somewhere else?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 304
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    .line 305
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ActionProvider;
    move v1, p1

    .local v1, "isVisible":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v2, :cond_0

    .line 280
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 282
    :cond_0
    return-void
.end method
