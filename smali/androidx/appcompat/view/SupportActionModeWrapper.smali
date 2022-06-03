.class public Landroidx/appcompat/view/SupportActionModeWrapper;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mWrappedObject:Landroidx/appcompat/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/ActionMode;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "supportActionMode":Landroidx/appcompat/view/ActionMode;
    move-object v3, v0

    invoke-direct {v3}, Landroid/view/ActionMode;-><init>()V

    .line 49
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    .line 50
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    .line 51
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 81
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v2}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Landroidx/core/internal/view/SupportMenu;

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/MenuWrapperFactory;->wrapSupportMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)Landroid/view/Menu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->getTitleOptionalHint()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    return v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 76
    return-void
.end method

.method public isTitleOptional()Z
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->isTitleOptional()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method public setSubtitle(I)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/ActionMode;->setSubtitle(I)V

    .line 106
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, p1

    .local v1, "subtitle":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setTitle(I)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/ActionMode;->setTitle(I)V

    .line 96
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper;
    move v1, p1

    .local v1, "titleOptional":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 131
    return-void
.end method
