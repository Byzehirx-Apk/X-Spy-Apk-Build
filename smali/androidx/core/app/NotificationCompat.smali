.class public Landroidx/core/app/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$CarExtender;,
        Landroidx/core/app/NotificationCompat$WearableExtender;,
        Landroidx/core/app/NotificationCompat$Extender;,
        Landroidx/core/app/NotificationCompat$Action;,
        Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;,
        Landroidx/core/app/NotificationCompat$InboxStyle;,
        Landroidx/core/app/NotificationCompat$MessagingStyle;,
        Landroidx/core/app/NotificationCompat$BigTextStyle;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle;,
        Landroidx/core/app/NotificationCompat$Style;,
        Landroidx/core/app/NotificationCompat$Builder;,
        Landroidx/core/app/NotificationCompat$GroupAlertBehavior;,
        Landroidx/core/app/NotificationCompat$BadgeIconType;,
        Landroidx/core/app/NotificationCompat$NotificationVisibility;,
        Landroidx/core/app/NotificationCompat$StreamType;
    }
.end annotation


# static fields
.field public static final BADGE_ICON_LARGE:I = 0x2

.field public static final BADGE_ICON_NONE:I = 0x0

.field public static final BADGE_ICON_SMALL:I = 0x1

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final COLOR_DEFAULT:I = 0x0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final EXTRA_HIDDEN_CONVERSATION_TITLE:Ljava/lang/String; = "android.hiddenConversationTitle"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String; = "android.isGroupConversation"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final EXTRA_MESSAGING_STYLE_USER:Ljava/lang/String; = "android.messagingStyleUser"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final GROUP_ALERT_ALL:I = 0x0

.field public static final GROUP_ALERT_CHILDREN:I = 0x2

.field public static final GROUP_ALERT_SUMMARY:I = 0x1

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5315
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5316
    return-void
.end method

.method public static getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;
    .locals 9

    .prologue
    .line 5071
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    move v1, p1

    .local v1, "actionIndex":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-lt v5, v6, :cond_0

    .line 5072
    move-object v5, v0

    iget-object v5, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    move v6, v1

    aget-object v5, v5, v6

    invoke-static {v5}, Landroidx/core/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v5

    move-object v0, v5

    .line 5086
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .line 5073
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 5074
    move-object v5, v0

    iget-object v5, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    move v6, v1

    aget-object v5, v5, v6

    move-object v2, v5

    .line 5075
    .local v2, "action":Landroid/app/Notification$Action;
    const/4 v5, 0x0

    move-object v3, v5

    .line 5076
    .local v3, "actionExtras":Landroid/os/Bundle;
    move-object v5, v0

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.support.actionExtras"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    move-object v4, v5

    .line 5078
    .local v4, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 5079
    move-object v5, v4

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v3, v5

    .line 5081
    :cond_1
    move-object v5, v2

    iget v5, v5, Landroid/app/Notification$Action;->icon:I

    move-object v6, v2

    iget-object v6, v6, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    move-object v7, v2

    iget-object v7, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Landroidx/core/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 5083
    .end local v2    # "action":Landroid/app/Notification$Action;
    .end local v3    # "actionExtras":Landroid/os/Bundle;
    .end local v4    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_3

    .line 5084
    move-object v5, v0

    move v6, v1

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatJellybean;->getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 5086
    :cond_3
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method static getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;
    .locals 18
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    .line 5093
    move-object/from16 v0, p0

    .local v0, "action":Landroid/app/Notification$Action;
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    move-object v2, v6

    .line 5094
    .local v2, "srcArray":[Landroid/app/RemoteInput;
    move-object v6, v2

    if-nez v6, :cond_2

    .line 5095
    const/4 v6, 0x0

    move-object v1, v6

    .line 5106
    .local v1, "remoteInputs":[Landroidx/core/app/RemoteInput;
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_4

    .line 5107
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "android.support.allowGeneratedReplies"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    .line 5109
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 5115
    .local v3, "allowGeneratedReplies":Z
    :goto_1
    move-object v6, v0

    .line 5116
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "android.support.action.showsUserInterface"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v4, v6

    .line 5119
    .local v4, "showsUserInterface":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_5

    .line 5120
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v6

    move v5, v6

    .line 5126
    .local v5, "semanticAction":I
    :goto_2
    new-instance v6, Landroidx/core/app/NotificationCompat$Action;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    move-object v8, v0

    iget v8, v8, Landroid/app/Notification$Action;->icon:I

    move-object v9, v0

    iget-object v9, v9, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    move-object v10, v0

    iget-object v10, v10, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object v11, v0

    .line 5127
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    move-object v12, v1

    const/4 v13, 0x0

    move v14, v3

    move v15, v5

    move/from16 v16, v4

    invoke-direct/range {v7 .. v16}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V

    move-object v0, v6

    .end local v0    # "action":Landroid/app/Notification$Action;
    return-object v0

    .line 5097
    .end local v1    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    .end local v3    # "allowGeneratedReplies":Z
    .end local v4    # "showsUserInterface":Z
    .end local v5    # "semanticAction":I
    .restart local v0    # "action":Landroid/app/Notification$Action;
    :cond_2
    move-object v6, v2

    array-length v6, v6

    new-array v6, v6, [Landroidx/core/app/RemoteInput;

    move-object v1, v6

    .line 5098
    .restart local v1    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_3
    move v6, v3

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 5099
    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 5100
    .local v4, "src":Landroid/app/RemoteInput;
    move-object v6, v1

    move v7, v3

    new-instance v8, Landroidx/core/app/RemoteInput;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v4

    invoke-virtual {v10}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v11}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    move-object v12, v4

    .line 5101
    invoke-virtual {v12}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v13}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v13

    move-object v14, v4

    invoke-virtual {v14}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    aput-object v8, v6, v7

    .line 5098
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5109
    .end local v3    # "i":I
    .end local v4    # "src":Landroid/app/RemoteInput;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 5111
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "android.support.allowGeneratedReplies"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .local v3, "allowGeneratedReplies":Z
    goto/16 :goto_1

    .line 5122
    .local v4, "showsUserInterface":Z
    :cond_5
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "android.support.action.semanticAction"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move v5, v6

    .restart local v5    # "semanticAction":I
    goto :goto_2
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 3

    .prologue
    .line 5055
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 5056
    move-object v1, v0

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v1

    :goto_0
    move v0, v1

    .line 5060
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_1
    return v0

    .line 5056
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5057
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 5058
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/NotificationCompatJellybean;->getActionCount(Landroid/app/Notification;)I

    move-result v1

    move v0, v1

    goto :goto_1

    .line 5060
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method public static getBadgeIconType(Landroid/app/Notification;)I
    .locals 3

    .prologue
    .line 5279
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 5280
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v1

    move v0, v1

    .line 5282
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return v0

    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5163
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 5164
    move-object v1, v0

    iget-object v1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    move-object v0, v1

    .line 5166
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getChannelId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5254
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 5255
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 5257
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getContentTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 5154
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    move-object v1, v0

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "notification":Landroid/app/Notification;
    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 5041
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 5042
    move-object v1, v0

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object v0, v1

    .line 5046
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .line 5043
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 5044
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 5046
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5194
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 5195
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 5202
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .line 5196
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 5197
    move-object v1, v0

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.groupKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 5198
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 5199
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.support.groupKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 5202
    :cond_2
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getGroupAlertBehavior(Landroid/app/Notification;)I
    .locals 3

    .prologue
    .line 5305
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 5306
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v1

    move v0, v1

    .line 5308
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return v0

    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getInvisibleActions(Landroid/app/Notification;)Ljava/util/List;
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5134
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 5136
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/app/NotificationCompat$Action;>;"
    move-object v5, v0

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.car.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v2, v5

    .line 5137
    .local v2, "carExtenderBundle":Landroid/os/Bundle;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 5138
    move-object v5, v1

    move-object v0, v5

    .line 5148
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .line 5141
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    move-object v5, v2

    const-string/jumbo v6, "invisible_actions"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v3, v5

    .line 5142
    .local v3, "listBundle":Landroid/os/Bundle;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 5143
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 5144
    move-object v5, v1

    move-object v6, v3

    move v7, v4

    .line 5145
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 5144
    invoke-static {v6}, Landroidx/core/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 5143
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5148
    .end local v4    # "i":I
    :cond_1
    move-object v5, v1

    move-object v0, v5

    goto :goto_0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .locals 3

    .prologue
    .line 5177
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 5178
    move-object v1, v0

    iget v1, v1, Landroid/app/Notification;->flags:I

    const/16 v2, 0x100

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 5185
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_1
    return v0

    .line 5178
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5179
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 5180
    move-object v1, v0

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.localOnly"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    .line 5181
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 5182
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.support.localOnly"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    .line 5185
    :cond_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 9

    .prologue
    .line 5022
    move-object v0, p0

    .local v0, "bundle":Landroid/os/Bundle;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    move-object v2, v5

    .line 5023
    .local v2, "array":[Landroid/os/Parcelable;
    move-object v5, v2

    instance-of v5, v5, [Landroid/app/Notification;

    if-nez v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_1

    .line 5024
    :cond_0
    move-object v5, v2

    check-cast v5, [Landroid/app/Notification;

    check-cast v5, [Landroid/app/Notification;

    move-object v0, v5

    .line 5031
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 5026
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    move-object v5, v2

    array-length v5, v5

    new-array v5, v5, [Landroid/app/Notification;

    move-object v3, v5

    .line 5027
    .local v3, "typedArray":[Landroid/app/Notification;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 5028
    move-object v5, v3

    move v6, v4

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    check-cast v7, Landroid/app/Notification;

    aput-object v7, v5, v6

    .line 5027
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5030
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5031
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method public static getShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5291
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 5292
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 5294
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5238
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 5239
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 5246
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .line 5240
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 5241
    move-object v1, v0

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.sortKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 5242
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 5243
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.support.sortKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 5246
    :cond_2
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getTimeoutAfter(Landroid/app/Notification;)J
    .locals 4

    .prologue
    .line 5266
    move-object v1, p0

    .local v1, "notification":Landroid/app/Notification;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 5267
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v2

    move-wide v1, v2

    .line 5269
    .end local v1    # "notification":Landroid/app/Notification;
    :goto_0
    return-wide v1

    .restart local v1    # "notification":Landroid/app/Notification;
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v1, v2

    goto :goto_0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 3

    .prologue
    .line 5213
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 5214
    move-object v1, v0

    iget v1, v1, Landroid/app/Notification;->flags:I

    const/16 v2, 0x200

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 5221
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_1
    return v0

    .line 5214
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5215
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 5216
    move-object v1, v0

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.isGroupSummary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    .line 5217
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 5218
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.support.isGroupSummary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    .line 5221
    :cond_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method
