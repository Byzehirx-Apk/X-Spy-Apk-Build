.class public final Landroidx/core/app/NotificationCompat$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final DEFAULT_GRAVITY:I = 0x50

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_BIG_PICTURE_AMBIENT:I = 0x20

.field private static final FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY:I = 0x40

.field private static final FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final KEY_BRIDGE_TAG:Ljava/lang/String; = "bridgeTag"

.field private static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final KEY_DISMISSAL_ID:Ljava/lang/String; = "dismissalId"

.field private static final KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final SCREEN_TIMEOUT_LONG:I = -0x1

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0

.field public static final SIZE_DEFAULT:I = 0x0

.field public static final SIZE_FULL_SCREEN:I = 0x5

.field public static final SIZE_LARGE:I = 0x4

.field public static final SIZE_MEDIUM:I = 0x3

.field public static final SIZE_SMALL:I = 0x2

.field public static final SIZE_XSMALL:I = 0x1

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBridgeTag:Ljava/lang/String;

.field private mContentActionIndex:I

.field private mContentIcon:I

.field private mContentIconGravity:I

.field private mCustomContentHeight:I

.field private mCustomSizePreset:I

.field private mDismissalId:Ljava/lang/String;

.field private mDisplayIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mGravity:I

.field private mHintScreenTimeout:I

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 3866
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3847
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 3848
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3850
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 3853
    move-object v1, v0

    const v2, 0x800005

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 3854
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 3855
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 3857
    move-object v1, v0

    const/16 v2, 0x50

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3867
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 12

    .prologue
    .line 3869
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "notification":Landroid/app/Notification;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 3847
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 3848
    move-object v7, v0

    const/4 v8, 0x1

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3850
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 3853
    move-object v7, v0

    const v8, 0x800005

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 3854
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 3855
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 3857
    move-object v7, v0

    const/16 v8, 0x50

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3870
    move-object v7, v1

    invoke-static {v7}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v7

    move-object v2, v7

    .line 3871
    .local v2, "extras":Landroid/os/Bundle;
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    const-string/jumbo v8, "android.wearable.EXTENSIONS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    :goto_0
    move-object v3, v7

    .line 3873
    .local v3, "wearableBundle":Landroid/os/Bundle;
    move-object v7, v3

    if-eqz v7, :cond_6

    .line 3874
    move-object v7, v3

    const-string/jumbo v8, "actions"

    .line 3875
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v4, v7

    .line 3876
    .local v4, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_4

    move-object v7, v4

    if-eqz v7, :cond_4

    .line 3877
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroidx/core/app/NotificationCompat$Action;

    move-object v5, v7

    .line 3878
    .local v5, "actions":[Landroidx/core/app/NotificationCompat$Action;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 3879
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-lt v7, v8, :cond_2

    .line 3880
    move-object v7, v5

    move v8, v6

    move-object v9, v4

    move v10, v6

    .line 3881
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$Action;

    .line 3880
    invoke-static {v9}, Landroidx/core/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v9

    aput-object v9, v7, v8

    .line 3878
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3871
    .end local v3    # "wearableBundle":Landroid/os/Bundle;
    .end local v4    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v5    # "actions":[Landroidx/core/app/NotificationCompat$Action;
    .end local v6    # "i":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 3882
    .restart local v3    # "wearableBundle":Landroid/os/Bundle;
    .restart local v4    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v5    # "actions":[Landroidx/core/app/NotificationCompat$Action;
    .restart local v6    # "i":I
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_0

    .line 3883
    move-object v7, v5

    move v8, v6

    move-object v9, v4

    move v10, v6

    .line 3884
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 3883
    invoke-static {v9}, Landroidx/core/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_2

    .line 3887
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    move-object v8, v5

    check-cast v8, [Landroidx/core/app/NotificationCompat$Action;

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    .line 3890
    .end local v5    # "actions":[Landroidx/core/app/NotificationCompat$Action;
    .end local v6    # "i":I
    :cond_4
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "flags"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3891
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "displayIntent"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 3893
    move-object v7, v3

    const-string/jumbo v8, "pages"

    invoke-static {v7, v8}, Landroidx/core/app/NotificationCompat;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v7

    move-object v5, v7

    .line 3895
    .local v5, "pages":[Landroid/app/Notification;
    move-object v7, v5

    if-eqz v7, :cond_5

    .line 3896
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v8, v5

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    .line 3899
    :cond_5
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "background"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 3900
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "contentIcon"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 3901
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "contentIconGravity"

    const v10, 0x800005

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 3903
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "contentActionIndex"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 3905
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "customSizePreset"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 3907
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "customContentHeight"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 3908
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "gravity"

    const/16 v10, 0x50

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3909
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "hintScreenTimeout"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 3910
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "dismissalId"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 3911
    move-object v7, v0

    move-object v8, v3

    const-string/jumbo v9, "bridgeTag"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 3913
    .end local v4    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v5    # "pages":[Landroid/app/Notification;
    :cond_6
    return-void
.end method

.method private static getActionFromActionCompat(Landroidx/core/app/NotificationCompat$Action;)Landroid/app/Notification$Action;
    .locals 15
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    .line 3988
    move-object v0, p0

    .local v0, "actionCompat":Landroidx/core/app/NotificationCompat$Action;
    new-instance v9, Landroid/app/Notification$Action$Builder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    .line 3989
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Action;->getIcon()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    move-object v13, v0

    .line 3990
    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v1, v9

    .line 3992
    .local v1, "actionBuilder":Landroid/app/Notification$Action$Builder;
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 3993
    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v9

    .line 3997
    .local v2, "actionExtras":Landroid/os/Bundle;
    :goto_0
    move-object v9, v2

    const-string/jumbo v10, "android.support.allowGeneratedReplies"

    move-object v11, v0

    .line 3998
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v11

    .line 3997
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3999
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v9, v10, :cond_0

    .line 4000
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v9

    .line 4002
    :cond_0
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v9

    .line 4003
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v9

    move-object v3, v9

    .line 4004
    .local v3, "remoteInputCompats":[Landroidx/core/app/RemoteInput;
    move-object v9, v3

    if-eqz v9, :cond_2

    .line 4005
    move-object v9, v3

    invoke-static {v9}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v9

    move-object v4, v9

    .line 4006
    .local v4, "remoteInputs":[Landroid/app/RemoteInput;
    move-object v9, v4

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 4007
    .local v8, "remoteInput":Landroid/app/RemoteInput;
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object v9

    .line 4006
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3995
    .end local v2    # "actionExtras":Landroid/os/Bundle;
    .end local v3    # "remoteInputCompats":[Landroidx/core/app/RemoteInput;
    .end local v4    # "remoteInputs":[Landroid/app/RemoteInput;
    .end local v8    # "remoteInput":Landroid/app/RemoteInput;
    :cond_1
    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v2, v9

    .restart local v2    # "actionExtras":Landroid/os/Bundle;
    goto :goto_0

    .line 4010
    .restart local v3    # "remoteInputCompats":[Landroidx/core/app/RemoteInput;
    :cond_2
    move-object v9, v1

    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "actionCompat":Landroidx/core/app/NotificationCompat$Action;
    return-object v0
.end method

.method private setFlag(IZ)V
    .locals 8

    .prologue
    .line 4579
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "mask":I
    move v2, p2

    .local v2, "value":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 4580
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    move v5, v1

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 4584
    :goto_0
    return-void

    .line 4582
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    move v5, v1

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4

    .prologue
    .line 4046
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "action":Landroidx/core/app/NotificationCompat$Action;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 4047
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public addActions(Ljava/util/List;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 4063
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationCompat$Action;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 4064
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public addPage(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4

    .prologue
    .line 4138
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "page":Landroid/app/Notification;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 4139
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public addPages(Ljava/util/List;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 4153
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 4154
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public clearActions()Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 2

    .prologue
    .line 4073
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4074
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public clearPages()Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 2

    .prologue
    .line 4163
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4164
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public clone()Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 7

    .prologue
    .line 4015
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    new-instance v2, Landroidx/core/app/NotificationCompat$WearableExtender;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    move-object v1, v2

    .line 4016
    .local v1, "that":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v2, v1

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 4017
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 4018
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 4019
    move-object v2, v1

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 4020
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 4021
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 4022
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 4023
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 4024
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 4025
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 4026
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 4027
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 4028
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 4029
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 4030
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3745
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$WearableExtender;->clone()Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 11

    .prologue
    .line 3922
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationCompat$Builder;
    new-instance v6, Landroid/os/Bundle;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v2, v6

    .line 3924
    .local v2, "wearableBundle":Landroid/os/Bundle;
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3925
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_11

    .line 3926
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 3927
    .local v3, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    move-object v5, v6

    .line 3928
    .local v5, "action":Landroidx/core/app/NotificationCompat$Action;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    .line 3929
    move-object v6, v3

    move-object v7, v5

    .line 3930
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$WearableExtender;->getActionFromActionCompat(Landroidx/core/app/NotificationCompat$Action;)Landroid/app/Notification$Action;

    move-result-object v7

    .line 3929
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 3934
    :cond_0
    :goto_1
    goto :goto_0

    .line 3931
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    .line 3932
    move-object v6, v3

    move-object v7, v5

    invoke-static {v7}, Landroidx/core/app/NotificationCompatJellybean;->getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    .line 3935
    .end local v5    # "action":Landroidx/core/app/NotificationCompat$Action;
    :cond_2
    move-object v6, v2

    const-string/jumbo v7, "actions"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3936
    .line 3940
    .end local v3    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3
    :goto_2
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 3941
    move-object v6, v2

    const-string/jumbo v7, "flags"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3943
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_5

    .line 3944
    move-object v6, v2

    const-string/jumbo v7, "displayIntent"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3946
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3947
    move-object v6, v2

    const-string/jumbo v7, "pages"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 3948
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/app/Notification;

    .line 3947
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Parcelable;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3950
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_7

    .line 3951
    move-object v6, v2

    const-string/jumbo v7, "background"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3953
    :cond_7
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    if-eqz v6, :cond_8

    .line 3954
    move-object v6, v2

    const-string/jumbo v7, "contentIcon"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3956
    :cond_8
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const v7, 0x800005

    if-eq v6, v7, :cond_9

    .line 3957
    move-object v6, v2

    const-string/jumbo v7, "contentIconGravity"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3959
    :cond_9
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    .line 3960
    move-object v6, v2

    const-string/jumbo v7, "contentActionIndex"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3963
    :cond_a
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    if-eqz v6, :cond_b

    .line 3964
    move-object v6, v2

    const-string/jumbo v7, "customSizePreset"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3966
    :cond_b
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    if-eqz v6, :cond_c

    .line 3967
    move-object v6, v2

    const-string/jumbo v7, "customContentHeight"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3969
    :cond_c
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    const/16 v7, 0x50

    if-eq v6, v7, :cond_d

    .line 3970
    move-object v6, v2

    const-string/jumbo v7, "gravity"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3972
    :cond_d
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    if-eqz v6, :cond_e

    .line 3973
    move-object v6, v2

    const-string/jumbo v7, "hintScreenTimeout"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3975
    :cond_e
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 3976
    move-object v6, v2

    const-string/jumbo v7, "dismissalId"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    :cond_f
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 3979
    move-object v6, v2

    const-string/jumbo v7, "bridgeTag"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3982
    :cond_10
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "android.wearable.EXTENSIONS"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3983
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0

    .line 3937
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    :cond_11
    move-object v6, v2

    const-string/jumbo v7, "actions"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method public getActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4081
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 4201
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public getBridgeTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4575
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public getContentAction()I
    .locals 2

    .prologue
    .line 4278
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0
.end method

.method public getContentIcon()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4218
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0
.end method

.method public getContentIconGravity()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4241
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .locals 3

    .prologue
    .line 4394
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCustomContentHeight()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4353
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0
.end method

.method public getCustomSizePreset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4329
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0
.end method

.method public getDismissalId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4554
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 4124
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public getGravity()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4301
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0
.end method

.method public getHintAmbientBigPicture()Z
    .locals 3

    .prologue
    .line 4509
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4462
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintContentIntentLaunchesActivity()Z
    .locals 3

    .prologue
    .line 4532
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintHideIcon()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4415
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintScreenTimeout()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4486
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4436
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4175
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public getStartScrollBottom()Z
    .locals 3

    .prologue
    .line 4372
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4

    .prologue
    .line 4188
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/Bitmap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 4189
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setBridgeTag(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4

    .prologue
    .line 4566
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "bridgeTag":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 4567
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setContentAction(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4

    .prologue
    .line 4259
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "actionIndex":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 4260
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setContentIcon(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4209
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "icon":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 4210
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setContentIconGravity(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4229
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "contentIconGravity":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 4230
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setContentIntentAvailableOffline(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5

    .prologue
    .line 4383
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "contentIntentAvailableOffline":Z
    move-object v2, v0

    const/4 v3, 0x1

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 4384
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setCustomContentHeight(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4341
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "height":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 4342
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setCustomSizePreset(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4315
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "sizePreset":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 4316
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setDismissalId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4

    .prologue
    .line 4545
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "dismissalId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 4546
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4

    .prologue
    .line 4115
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move-object v1, p1

    .local v1, "intent":Landroid/app/PendingIntent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 4116
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setGravity(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4289
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 4290
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setHintAmbientBigPicture(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5

    .prologue
    .line 4497
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "hintAmbientBigPicture":Z
    move-object v2, v0

    const/16 v3, 0x20

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 4498
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4449
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "hintAvoidBackgroundClipping":Z
    move-object v2, v0

    const/16 v3, 0x10

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 4450
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setHintContentIntentLaunchesActivity(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5

    .prologue
    .line 4521
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "hintContentIntentLaunchesActivity":Z
    move-object v2, v0

    const/16 v3, 0x40

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 4522
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setHintHideIcon(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4404
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "hintHideIcon":Z
    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 4405
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setHintScreenTimeout(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4474
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "timeout":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 4475
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setHintShowBackgroundOnly(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4425
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "hintShowBackgroundOnly":Z
    move-object v2, v0

    const/4 v3, 0x4

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 4426
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method

.method public setStartScrollBottom(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5

    .prologue
    .line 4362
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    move v1, p1

    .local v1, "startScrollBottom":Z
    move-object v2, v0

    const/16 v3, 0x8

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 4363
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$WearableExtender;
    return-object v0
.end method
