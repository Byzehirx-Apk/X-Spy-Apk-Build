.class public Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field public mActions:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mBadgeIcon:I

.field mBigContentView:Landroid/widget/RemoteViews;

.field mCategory:Ljava/lang/String;

.field mChannelId:Ljava/lang/String;

.field mColor:I

.field mColorized:Z

.field mColorizedSet:Z

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContentView:Landroid/widget/RemoteViews;

.field public mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mExtras:Landroid/os/Bundle;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupAlertBehavior:I

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field mHeadsUpContentView:Landroid/widget/RemoteViews;

.field mInvisibleActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mLocalOnly:Z

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field public mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field mRemoteInputHistory:[Ljava/lang/CharSequence;

.field mShortcutId:Ljava/lang/String;

.field mShowWhen:Z

.field mSortKey:Ljava/lang/String;

.field mStyle:Landroidx/core/app/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mTimeout:J

.field mUseChronometer:Z

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "channelId":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 669
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 675
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 686
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 697
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 702
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 703
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 709
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 712
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 713
    move-object v3, v0

    new-instance v4, Landroid/app/Notification;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 735
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 736
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 739
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 740
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v4, -0x1

    iput v4, v3, Landroid/app/Notification;->audioStreamType:I

    .line 741
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 742
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 743
    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1589
    move-object v0, p0

    .local v0, "cs":Ljava/lang/CharSequence;
    move-object v1, v0

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v0, v1

    .line 1593
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 1590
    .restart local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x1400

    if-le v1, v2, :cond_1

    .line 1591
    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x1400

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 1593
    :cond_1
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method private reduceLargeIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 986
    move-object v1, p0

    .local v1, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v2, p1

    .local v2, "icon":Landroid/graphics/Bitmap;
    move-object v8, v2

    if-eqz v8, :cond_0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1b

    if-lt v8, v9, :cond_1

    .line 987
    :cond_0
    move-object v8, v2

    move-object v1, v8

    .line 1002
    .end local v1    # "this":Landroidx/core/app/NotificationCompat$Builder;
    :goto_0
    return-object v1

    .line 990
    .restart local v1    # "this":Landroidx/core/app/NotificationCompat$Builder;
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v3, v8

    .line 991
    .local v3, "res":Landroid/content/res/Resources;
    move-object v8, v3

    sget v9, Landroidx/core/R$dimen;->compat_notification_large_icon_max_width:I

    .line 992
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v4, v8

    .line 993
    .local v4, "maxWidth":I
    move-object v8, v3

    sget v9, Landroidx/core/R$dimen;->compat_notification_large_icon_max_height:I

    .line 994
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v5, v8

    .line 995
    .local v5, "maxHeight":I
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move v9, v4

    if-gt v8, v9, :cond_2

    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v9, v5

    if-gt v8, v9, :cond_2

    .line 996
    move-object v8, v2

    move-object v1, v8

    goto :goto_0

    .line 999
    :cond_2
    move v8, v4

    int-to-double v8, v8

    const/4 v10, 0x1

    move-object v11, v2

    .line 1000
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    move v10, v5

    int-to-double v10, v10

    const/4 v12, 0x1

    move-object v13, v2

    .line 1001
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v10, v12

    .line 999
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    move-wide v6, v8

    .line 1002
    .local v6, "scale":D
    move-object v8, v2

    move-object v9, v2

    .line 1004
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-double v9, v9

    move-wide v11, v6

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    move-object v10, v2

    .line 1005
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    move-wide v12, v6

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    const/4 v11, 0x1

    .line 1002
    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v1, v8

    goto :goto_0
.end method

.method private setFlag(IZ)V
    .locals 8

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "mask":I
    move v2, p2

    .local v2, "value":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 1186
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/app/Notification;->flags:I

    move v5, v1

    or-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1190
    :goto_0
    return-void

    .line 1188
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/app/Notification;->flags:I

    move v5, v1

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 11

    .prologue
    .line 1355
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "icon":I
    move-object v2, p2

    .local v2, "title":Ljava/lang/CharSequence;
    move-object v3, p3

    .local v3, "intent":Landroid/app/PendingIntent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroidx/core/app/NotificationCompat$Action;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1356
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1374
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "action":Landroidx/core/app/NotificationCompat$Action;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1375
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 7

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1295
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1296
    move-object v2, v0

    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1301
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0

    .line 1298
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public addInvisibleAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 11
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1390
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "icon":I
    move-object v2, p2

    .local v2, "title":Ljava/lang/CharSequence;
    move-object v3, p3

    .local v3, "intent":Landroid/app/PendingIntent;
    move-object v4, v0

    new-instance v5, Landroidx/core/app/NotificationCompat$Action;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->addInvisibleAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public addInvisibleAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1403
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "action":Landroidx/core/app/NotificationCompat$Action;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1404
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1237
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1238
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public build()Landroid/app/Notification;
    .locals 5

    .prologue
    .line 1585
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    new-instance v1, Landroidx/core/app/NotificationCompatBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompatBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1568
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "extender":Landroidx/core/app/NotificationCompat$Extender;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Landroidx/core/app/NotificationCompat$Extender;->extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1569
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public getBigContentView()Landroid/widget/RemoteViews;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1609
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public getColor()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1647
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return v0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1601
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1332
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1333
    move-object v1, v0

    new-instance v2, Landroid/os/Bundle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1335
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public getHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1617
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1577
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public getPriority()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1637
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return v0
.end method

.method public getWhenIfShowing()J
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1627
    move-object v1, p0

    .local v1, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-wide v1

    .restart local v1    # "this":Landroidx/core/app/NotificationCompat$Builder;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 1139
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "autoCancel":Z
    move-object v2, v0

    const/16 v3, 0x10

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1140
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1544
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "icon":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 1545
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1162
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "category":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 1163
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1505
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "channelId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 1506
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1433
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "argb":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 1434
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1118
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "colorize":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    .line 1119
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    .line 1120
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 899
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "info":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 880
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "intent":Landroid/app/PendingIntent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 912
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 829
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 821
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1482
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "contentView":Landroid/widget/RemoteViews;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 1483
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1469
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "contentView":Landroid/widget/RemoteViews;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 1470
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1495
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "contentView":Landroid/widget/RemoteViews;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 1496
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "defaults":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v3, v1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 1178
    move v2, v1

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 1179
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/app/Notification;->flags:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1181
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "intent":Landroid/app/PendingIntent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 924
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1317
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1318
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 946
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "intent":Landroid/app/PendingIntent;
    move v2, p2

    .local v2, "highPriority":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 947
    move-object v3, v0

    const/16 v4, 0x80

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 948
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1253
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "groupKey":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 1254
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1559
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "groupAlertBehavior":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 1560
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1265
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "isGroupSummary":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 1266
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 977
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/Bitmap;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->reduceLargeIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 978
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setLights(III)Landroidx/core/app/NotificationCompat$Builder;
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1074
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "argb":I
    move v2, p2

    .local v2, "onMs":I
    move v3, p3

    .local v3, "offMs":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v6, v1

    iput v6, v5, Landroid/app/Notification;->ledARGB:I

    .line 1075
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v6, v2

    iput v6, v5, Landroid/app/Notification;->ledOnMS:I

    .line 1076
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v6, v3

    iput v6, v5, Landroid/app/Notification;->ledOffMS:I

    .line 1077
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->ledOnMS:I

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->ledOffMS:I

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1078
    .local v4, "showLights":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    move v7, v4

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v6, v7

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1080
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0

    .line 1077
    .end local v4    # "showLights":Z
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1078
    .restart local v4    # "showLights":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1150
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "b":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 1151
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setNumber(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 871
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "number":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 872
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 1095
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "ongoing":Z
    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1096
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 1128
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "onlyAlertOnce":Z
    move-object v2, v0

    const/16 v3, 0x8

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1129
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setPriority(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "pri":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 1211
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "max":I
    move v2, p2

    .local v2, "progress":I
    move v3, p3

    .local v3, "indeterminate":Z
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    .line 889
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    .line 890
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 891
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1458
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "n":Landroid/app/Notification;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 1459
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "text":[Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    .line 862
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "shortcutId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 1531
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 768
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "show":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 769
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "icon":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v3, v1

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 797
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setSmallIcon(II)Landroidx/core/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "icon":I
    move v2, p2

    .local v2, "level":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v4, v1

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 812
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v4, v2

    iput v4, v3, Landroid/app/Notification;->iconLevel:I

    .line 813
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1282
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "sortKey":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 1283
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 1018
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "sound":Landroid/net/Uri;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1019
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->audioStreamType:I

    .line 1020
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 1021
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x4

    .line 1022
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v4, 0x5

    .line 1023
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1024
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1026
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 7

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "sound":Landroid/net/Uri;
    move v2, p2

    .local v2, "streamType":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v4, v1

    iput-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1042
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v4, v2

    iput v4, v3, Landroid/app/Notification;->audioStreamType:I

    .line 1043
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 1044
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x4

    .line 1045
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    move v5, v2

    .line 1046
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 1047
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1049
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1416
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "style":Landroidx/core/app/NotificationCompat$Style;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1417
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 1418
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eqz v2, :cond_0

    .line 1419
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Style;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 1422
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 843
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 957
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "tickerText":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 958
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "tickerText":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "views":Landroid/widget/RemoteViews;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v4, v1

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 969
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 970
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 7

    .prologue
    .line 1514
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-wide v1, p1

    .local v1, "durationMs":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 1515
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "b":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 785
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1064
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-object v1, p1

    .local v1, "pattern":[J
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->vibrate:[J

    .line 1065
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1445
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move v1, p1

    .local v1, "visibility":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 1446
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public setWhen(J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 7

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Builder;
    move-wide v1, p1

    .local v1, "when":J
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-wide v4, v1

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 760
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method
