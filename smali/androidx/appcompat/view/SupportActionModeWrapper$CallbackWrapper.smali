.class public Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/SupportActionModeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mActionModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/SupportActionModeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMenus:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field final mWrappedCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "supportCallback":Landroid/view/ActionMode$Callback;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 150
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    .line 151
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    .line 152
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    .line 153
    move-object v3, v0

    new-instance v4, Landroidx/collection/SimpleArrayMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroidx/collection/SimpleArrayMap;

    .line 154
    return-void
.end method

.method private getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 6

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroidx/collection/SimpleArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Menu;

    move-object v2, v3

    .line 182
    .local v2, "wrapper":Landroid/view/Menu;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 183
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    move-object v4, v1

    check-cast v4, Landroidx/core/internal/view/SupportMenu;

    invoke-static {v3, v4}, Landroidx/appcompat/view/menu/MenuWrapperFactory;->wrapSupportMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)Landroid/view/Menu;

    move-result-object v3

    move-object v2, v3

    .line 184
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroidx/collection/SimpleArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 186
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    return-object v0
.end method


# virtual methods
.method public getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroid/view/ActionMode;
    .locals 10

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    move-object v1, p1

    .local v1, "mode":Landroidx/appcompat/view/ActionMode;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .local v3, "count":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 192
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/SupportActionModeWrapper;

    move-object v4, v5

    .line 193
    .local v4, "wrapper":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 195
    move-object v5, v4

    move-object v0, v5

    .line 203
    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    .end local v2    # "i":I
    .end local v4    # "wrapper":Landroidx/appcompat/view/SupportActionModeWrapper;
    :goto_1
    return-object v0

    .line 191
    .restart local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    .restart local v2    # "i":I
    .restart local v4    # "wrapper":Landroidx/appcompat/view/SupportActionModeWrapper;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v4    # "wrapper":Landroidx/appcompat/view/SupportActionModeWrapper;
    :cond_1
    new-instance v5, Landroidx/appcompat/view/SupportActionModeWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/ActionMode;)V

    move-object v2, v5

    .line 202
    .local v2, "wrapper":Landroidx/appcompat/view/SupportActionModeWrapper;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 203
    move-object v5, v2

    move-object v0, v5

    goto :goto_1
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    move-object v1, p1

    .local v1, "mode":Landroidx/appcompat/view/ActionMode;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    move-object v6, v2

    check-cast v6, Landroidx/core/internal/view/SupportMenuItem;

    .line 172
    invoke-static {v5, v6}, Landroidx/appcompat/view/menu/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)Landroid/view/MenuItem;

    move-result-object v5

    .line 171
    invoke-interface {v3, v4, v5}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    return v0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    move-object v1, p1

    .local v1, "mode":Landroidx/appcompat/view/ActionMode;
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    .line 159
    invoke-direct {v5, v6}, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v5

    .line 158
    invoke-interface {v3, v4, v5}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    return v0
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 5

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    move-object v1, p1

    .local v1, "mode":Landroidx/appcompat/view/ActionMode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 178
    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    move-object v1, p1

    .local v1, "mode":Landroidx/appcompat/view/ActionMode;
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    .line 165
    invoke-direct {v5, v6}, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v5

    .line 164
    invoke-interface {v3, v4, v5}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    return v0
.end method
