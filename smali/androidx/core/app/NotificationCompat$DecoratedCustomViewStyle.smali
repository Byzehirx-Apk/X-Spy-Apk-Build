.class public Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2935
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2936
    return-void
.end method

.method private createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 12

    .prologue
    .line 3007
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    move-object v1, p1

    .local v1, "innerView":Landroid/widget/RemoteViews;
    move v2, p2

    .local v2, "showActions":Z
    move-object v8, v0

    const/4 v9, 0x1

    sget v10, Landroidx/core/R$layout;->notification_template_custom_big:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v8

    move-object v3, v8

    .line 3009
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    move-object v8, v3

    sget v9, Landroidx/core/R$id;->actions:I

    invoke-virtual {v8, v9}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 3010
    const/4 v8, 0x0

    move v4, v8

    .line 3011
    .local v4, "actionsVisible":Z
    move v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 3012
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v5, v8

    .line 3013
    .local v5, "numActions":I
    move v8, v5

    if-lez v8, :cond_0

    .line 3014
    const/4 v8, 0x1

    move v4, v8

    .line 3015
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    .line 3016
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v8, v9}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v8

    move-object v7, v8

    .line 3017
    .local v7, "button":Landroid/widget/RemoteViews;
    move-object v8, v3

    sget v9, Landroidx/core/R$id;->actions:I

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 3015
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3021
    .end local v5    # "numActions":I
    .end local v6    # "i":I
    .end local v7    # "button":Landroid/widget/RemoteViews;
    :cond_0
    move v8, v4

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :goto_1
    move v5, v8

    .line 3022
    .local v5, "actionVisibility":I
    move-object v8, v3

    sget v9, Landroidx/core/R$id;->actions:I

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3023
    move-object v8, v3

    sget v9, Landroidx/core/R$id;->action_divider:I

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3024
    move-object v8, v0

    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 3025
    move-object v8, v3

    move-object v0, v8

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    return-object v0

    .line 3021
    .end local v5    # "actionVisibility":I
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    :cond_1
    const/16 v8, 0x8

    goto :goto_1
.end method

.method private generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 11

    .prologue
    .line 3029
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    move-object v1, p1

    .local v1, "action":Landroidx/core/app/NotificationCompat$Action;
    move-object v4, v1

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 3030
    .local v2, "tombstone":Z
    new-instance v4, Landroid/widget/RemoteViews;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v7, v2

    if-eqz v7, :cond_3

    sget v7, Landroidx/core/R$layout;->notification_action_tombstone:I

    :goto_1
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v3, v4

    .line 3033
    .local v3, "button":Landroid/widget/RemoteViews;
    move-object v4, v3

    sget v5, Landroidx/core/R$id;->action_image:I

    move-object v6, v0

    move-object v7, v1

    .line 3034
    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Action;->getIcon()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroidx/core/R$color;->notification_action_color_filter:I

    .line 3035
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 3034
    invoke-virtual {v6, v7, v8}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3033
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3036
    move-object v4, v3

    sget v5, Landroidx/core/R$id;->action_text:I

    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3037
    move v4, v2

    if-nez v4, :cond_0

    .line 3038
    move-object v4, v3

    sget v5, Landroidx/core/R$id;->action_container:I

    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3040
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_1

    .line 3041
    move-object v4, v3

    sget v5, Landroidx/core/R$id;->action_container:I

    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 3043
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    return-object v0

    .line 3029
    .end local v2    # "tombstone":Z
    .end local v3    # "button":Landroid/widget/RemoteViews;
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 3030
    .restart local v2    # "tombstone":Z
    :cond_3
    sget v7, Landroidx/core/R$layout;->notification_action:I

    goto :goto_1
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2944
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 2945
    move-object v2, v1

    invoke-interface {v2}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2947
    :cond_0
    return-void
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2972
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 2974
    const/4 v4, 0x0

    move-object v0, v4

    .line 2984
    .end local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    :goto_0
    return-object v0

    .line 2976
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    move-object v2, v4

    .line 2977
    .local v2, "bigContentView":Landroid/widget/RemoteViews;
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    .line 2979
    :goto_1
    move-object v3, v4

    .line 2980
    .local v3, "innerView":Landroid/widget/RemoteViews;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 2982
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 2977
    .end local v3    # "innerView":Landroid/widget/RemoteViews;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2979
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    goto :goto_1

    .line 2984
    .restart local v3    # "innerView":Landroid/widget/RemoteViews;
    :cond_2
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2955
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 2957
    const/4 v2, 0x0

    move-object v0, v2

    .line 2963
    .end local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    :goto_0
    return-object v0

    .line 2959
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2961
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 2963
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2993
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 2995
    const/4 v4, 0x0

    move-object v0, v4

    .line 3003
    .end local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    :goto_0
    return-object v0

    .line 2997
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    move-object v2, v4

    .line 2998
    .local v2, "headsUp":Landroid/widget/RemoteViews;
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    :goto_1
    move-object v3, v4

    .line 2999
    .local v3, "innerView":Landroid/widget/RemoteViews;
    move-object v4, v2

    if-nez v4, :cond_2

    .line 3001
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 2998
    .end local v3    # "innerView":Landroid/widget/RemoteViews;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    goto :goto_1

    .line 3003
    .restart local v3    # "innerView":Landroid/widget/RemoteViews;
    :cond_2
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
