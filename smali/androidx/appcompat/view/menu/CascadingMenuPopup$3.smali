.class Landroidx/appcompat/view/menu/CascadingMenuPopup$3;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroidx/appcompat/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/view/menu/CascadingMenuPopup;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 17
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$3;
    move-object/from16 v2, p1

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object/from16 v3, p2

    .local v3, "item":Landroid/view/MenuItem;
    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    const/4 v10, -0x1

    move v4, v10

    .line 154
    .local v4, "menuIndex":I
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v6, v10

    .local v6, "count":I
    :goto_0
    move v10, v5

    move v11, v6

    if-ge v10, v11, :cond_0

    .line 155
    move-object v10, v2

    move-object v11, v1

    iget-object v11, v11, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v11, v11, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v12, v5

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v11, v11, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne v10, v11, :cond_1

    .line 156
    move v10, v5

    move v4, v10

    .line 161
    :cond_0
    move v10, v4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 162
    .line 194
    .end local v5    # "i":I
    .end local v6    # "count":I
    :goto_1
    return-void

    .line 154
    .restart local v5    # "i":I
    .restart local v6    # "count":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    :cond_2
    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v6, v10

    .line 167
    .local v6, "nextIndex":I
    move v10, v6

    move-object v11, v1

    iget-object v11, v11, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v11, v11, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 168
    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v5, v10

    .line 173
    .local v5, "nextInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :goto_2
    new-instance v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    move-object v13, v5

    move-object v14, v3

    move-object v15, v2

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup$3;Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuBuilder;)V

    move-object v7, v10

    .line 192
    .local v7, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0xc8

    add-long/2addr v10, v12

    move-wide v8, v10

    .line 193
    .local v8, "uptimeMillis":J
    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v10, v10, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    move-object v11, v7

    move-object v12, v2

    move-wide v13, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v10

    .line 194
    goto :goto_1

    .line 170
    .end local v7    # "runnable":Ljava/lang/Runnable;
    .end local v8    # "uptimeMillis":J
    .local v5, "i":I
    :cond_3
    const/4 v10, 0x0

    move-object v5, v10

    .local v5, "nextInfo":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    goto :goto_2
.end method

.method public onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 5
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$3;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    return-void
.end method
