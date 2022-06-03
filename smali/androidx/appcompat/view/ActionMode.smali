.class public abstract Landroidx/appcompat/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/ActionMode$Callback;
    }
.end annotation


# instance fields
.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionMode;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionMode;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ActionMode;
    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionMode;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/ActionMode;->mTitleOptionalHint:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ActionMode;
    return v0
.end method

.method public abstract invalidate()V
.end method

.method public isTitleOptional()Z
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionMode;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ActionMode;
    return v0
.end method

.method public isUiFocusable()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionMode;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/ActionMode;
    return v0
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionMode;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/ActionMode;
    move v1, p1

    .local v1, "titleOptional":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/view/ActionMode;->mTitleOptionalHint:Z

    .line 135
    return-void
.end method
