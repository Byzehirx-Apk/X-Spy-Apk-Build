.class public final Landroidx/core/app/NotificationCompat$CarExtender;
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
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    }
.end annotation


# static fields
.field static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field static final EXTRA_INVISIBLE_ACTIONS:Ljava/lang/String; = "invisible_actions"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 4643
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 4638
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    .line 4644
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 8

    .prologue
    .line 4651
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender;
    move-object v1, p1

    .local v1, "notification":Landroid/app/Notification;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 4638
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    .line 4652
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 4653
    .line 4665
    :goto_0
    return-void

    .line 4656
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 4657
    :goto_1
    move-object v2, v4

    .line 4658
    .local v2, "carBundle":Landroid/os/Bundle;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 4659
    move-object v4, v0

    move-object v5, v2

    const-string/jumbo v6, "large_icon"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, v4, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 4660
    move-object v4, v0

    move-object v5, v2

    const-string/jumbo v6, "app_color"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    .line 4662
    move-object v4, v2

    const-string/jumbo v5, "car_conversation"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v3, v4

    .line 4663
    .local v3, "b":Landroid/os/Bundle;
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Landroidx/core/app/NotificationCompat$CarExtender;->getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    move-result-object v5

    iput-object v5, v4, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 4665
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 4656
    .end local v2    # "carBundle":Landroid/os/Bundle;
    :cond_2
    move-object v4, v1

    .line 4657
    invoke-static {v4}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "android.car.EXTENSIONS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_1
.end method

.method private static getBundleForUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/os/Bundle;
    .locals 11
    .param p0    # Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 4720
    move-object v0, p0

    .local v0, "uc":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    new-instance v6, Landroid/os/Bundle;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v1, v6

    .line 4721
    .local v1, "b":Landroid/os/Bundle;
    const/4 v6, 0x0

    move-object v2, v6

    .line 4722
    .local v2, "author":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 4723
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v2, v6

    .line 4725
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [Landroid/os/Parcelable;

    move-object v3, v6

    .line 4726
    .local v3, "messages":[Landroid/os/Parcelable;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 4727
    new-instance v6, Landroid/os/Bundle;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v5, v6

    .line 4728
    .local v5, "m":Landroid/os/Bundle;
    move-object v6, v5

    const-string/jumbo v7, "text"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v8

    move v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4729
    move-object v6, v5

    const-string/jumbo v7, "author"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4730
    move-object v6, v3

    move v7, v4

    move-object v8, v5

    aput-object v8, v6, v7

    .line 4726
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4732
    .end local v5    # "m":Landroid/os/Bundle;
    :cond_1
    move-object v6, v1

    const-string/jumbo v7, "messages"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4733
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getRemoteInput()Landroidx/core/app/RemoteInput;

    move-result-object v6

    move-object v4, v6

    .line 4734
    .local v4, "remoteInputCompat":Landroidx/core/app/RemoteInput;
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 4735
    new-instance v6, Landroid/app/RemoteInput$Builder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    .line 4736
    invoke-virtual {v8}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    .line 4737
    invoke-virtual {v7}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v6

    move-object v7, v4

    .line 4738
    invoke-virtual {v7}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v6

    move-object v7, v4

    .line 4739
    invoke-virtual {v7}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v6

    move-object v7, v4

    .line 4740
    invoke-virtual {v7}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v6

    .line 4741
    invoke-virtual {v6}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v6

    move-object v5, v6

    .line 4742
    .local v5, "remoteInput":Landroid/app/RemoteInput;
    move-object v6, v1

    const-string/jumbo v7, "remote_input"

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4744
    .end local v5    # "remoteInput":Landroid/app/RemoteInput;
    :cond_2
    move-object v6, v1

    const-string/jumbo v7, "on_reply"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReplyPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4745
    move-object v6, v1

    const-string/jumbo v7, "on_read"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReadPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4746
    move-object v6, v1

    const-string/jumbo v7, "participants"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4747
    move-object v6, v1

    const-string/jumbo v7, "timestamp"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getLatestTimestamp()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4748
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "uc":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    return-object v0
.end method

.method private static getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 19
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 4669
    move-object/from16 v1, p0

    .local v1, "b":Landroid/os/Bundle;
    move-object v9, v1

    if-nez v9, :cond_0

    .line 4670
    const/4 v9, 0x0

    move-object v1, v9

    .line 4715
    .end local v1    # "b":Landroid/os/Bundle;
    .local v2, "parcelableMessages":[Landroid/os/Parcelable;
    .local v3, "messages":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4672
    .end local v2    # "parcelableMessages":[Landroid/os/Parcelable;
    .end local v3    # "messages":[Ljava/lang/String;
    .restart local v1    # "b":Landroid/os/Bundle;
    :cond_0
    move-object v9, v1

    const-string/jumbo v10, "messages"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    move-object v2, v9

    .line 4673
    .restart local v2    # "parcelableMessages":[Landroid/os/Parcelable;
    const/4 v9, 0x0

    move-object v3, v9

    .line 4674
    .restart local v3    # "messages":[Ljava/lang/String;
    move-object v9, v2

    if-eqz v9, :cond_2

    .line 4675
    move-object v9, v2

    array-length v9, v9

    new-array v9, v9, [Ljava/lang/String;

    move-object v4, v9

    .line 4676
    .local v4, "tmp":[Ljava/lang/String;
    const/4 v9, 0x1

    move v5, v9

    .line 4677
    .local v5, "success":Z
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move-object v10, v4

    array-length v10, v10

    if-ge v9, v10, :cond_1

    .line 4678
    move-object v9, v2

    move v10, v6

    aget-object v9, v9, v10

    instance-of v9, v9, Landroid/os/Bundle;

    if-nez v9, :cond_4

    .line 4679
    const/4 v9, 0x0

    move v5, v9

    .line 4688
    :cond_1
    :goto_2
    move v9, v5

    if-eqz v9, :cond_6

    .line 4689
    move-object v9, v4

    move-object v3, v9

    .line 4695
    .end local v4    # "tmp":[Ljava/lang/String;
    .end local v5    # "success":Z
    .end local v6    # "i":I
    :cond_2
    move-object v9, v1

    const-string/jumbo v10, "on_read"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    move-object v4, v9

    .line 4696
    .local v4, "onRead":Landroid/app/PendingIntent;
    move-object v9, v1

    const-string/jumbo v10, "on_reply"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    move-object v5, v9

    .line 4698
    .local v5, "onReply":Landroid/app/PendingIntent;
    move-object v9, v1

    const-string/jumbo v10, "remote_input"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/RemoteInput;

    move-object v6, v9

    .line 4700
    .local v6, "remoteInput":Landroid/app/RemoteInput;
    move-object v9, v1

    const-string/jumbo v10, "participants"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 4701
    .local v7, "participants":[Ljava/lang/String;
    move-object v9, v7

    if-eqz v9, :cond_3

    move-object v9, v7

    array-length v9, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    .line 4702
    :cond_3
    const/4 v9, 0x0

    move-object v1, v9

    goto :goto_0

    .line 4682
    .end local v7    # "participants":[Ljava/lang/String;
    .local v4, "tmp":[Ljava/lang/String;
    .local v5, "success":Z
    .local v6, "i":I
    :cond_4
    move-object v9, v4

    move v10, v6

    move-object v11, v2

    move v12, v6

    aget-object v11, v11, v12

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v12, "text"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 4683
    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    if-nez v9, :cond_5

    .line 4684
    const/4 v9, 0x0

    move v5, v9

    .line 4685
    goto :goto_2

    .line 4677
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4691
    :cond_6
    const/4 v9, 0x0

    move-object v1, v9

    goto :goto_0

    .line 4705
    .local v4, "onRead":Landroid/app/PendingIntent;
    .local v5, "onReply":Landroid/app/PendingIntent;
    .local v6, "remoteInput":Landroid/app/RemoteInput;
    .restart local v7    # "participants":[Ljava/lang/String;
    :cond_7
    move-object v9, v6

    if-eqz v9, :cond_8

    new-instance v9, Landroidx/core/app/RemoteInput;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v6

    .line 4706
    invoke-virtual {v11}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v11

    move-object v12, v6

    .line 4707
    invoke-virtual {v12}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v12

    move-object v13, v6

    .line 4708
    invoke-virtual {v13}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v13

    move-object v14, v6

    .line 4709
    invoke-virtual {v14}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v14

    move-object v15, v6

    .line 4710
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    :goto_3
    move-object v8, v9

    .line 4714
    .local v8, "remoteInputCompat":Landroidx/core/app/RemoteInput;
    new-instance v9, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v3

    move-object v12, v8

    move-object v13, v5

    move-object v14, v4

    move-object v15, v7

    move-object/from16 v16, v1

    const-string/jumbo v17, "timestamp"

    .line 4715
    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-direct/range {v10 .. v17}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    move-object v1, v9

    goto/16 :goto_0

    .line 4710
    .end local v8    # "remoteInputCompat":Landroidx/core/app/RemoteInput;
    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method


# virtual methods
.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 8

    .prologue
    .line 4758
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationCompat$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 4759
    move-object v4, v1

    move-object v0, v4

    .line 4777
    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender;
    :goto_0
    return-object v0

    .line 4762
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender;
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v2, v4

    .line 4764
    .local v2, "carExtensions":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 4765
    move-object v4, v2

    const-string/jumbo v5, "large_icon"

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4767
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    if-eqz v4, :cond_2

    .line 4768
    move-object v4, v2

    const-string/jumbo v5, "app_color"

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4771
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    if-eqz v4, :cond_3

    .line 4772
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$CarExtender;->getBundleForUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/os/Bundle;

    move-result-object v4

    move-object v3, v4

    .line 4773
    .local v3, "b":Landroid/os/Bundle;
    move-object v4, v2

    const-string/jumbo v5, "car_conversation"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4776
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "android.car.EXTENSIONS"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4777
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method public getColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 4800
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender;
    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 4824
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender;
    return-object v0
.end method

.method public getUnreadConversation()Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 2

    .prologue
    .line 4843
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender;
    return-object v0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$CarExtender;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 4789
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    .line 4790
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender;
    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$CarExtender;
    .locals 4

    .prologue
    .line 4813
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender;
    move-object v1, p1

    .local v1, "largeIcon":Landroid/graphics/Bitmap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 4814
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender;
    return-object v0
.end method

.method public setUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroidx/core/app/NotificationCompat$CarExtender;
    .locals 4

    .prologue
    .line 4834
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender;
    move-object v1, p1

    .local v1, "unreadConversation":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 4835
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender;
    return-object v0
.end method
