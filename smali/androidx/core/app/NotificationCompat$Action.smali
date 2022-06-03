.class public Landroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Action$SemanticAction;,
        Landroidx/core/app/NotificationCompat$Action$WearableExtender;,
        Landroidx/core/app/NotificationCompat$Action$Extender;,
        Landroidx/core/app/NotificationCompat$Action$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_SEMANTIC_ACTION:Ljava/lang/String; = "android.support.action.semanticAction"

.field static final EXTRA_SHOWS_USER_INTERFACE:Ljava/lang/String; = "android.support.action.showsUserInterface"

.field public static final SEMANTIC_ACTION_ARCHIVE:I = 0x5

.field public static final SEMANTIC_ACTION_CALL:I = 0xa

.field public static final SEMANTIC_ACTION_DELETE:I = 0x4

.field public static final SEMANTIC_ACTION_MARK_AS_READ:I = 0x2

.field public static final SEMANTIC_ACTION_MARK_AS_UNREAD:I = 0x3

.field public static final SEMANTIC_ACTION_MUTE:I = 0x6

.field public static final SEMANTIC_ACTION_NONE:I = 0x0

.field public static final SEMANTIC_ACTION_REPLY:I = 0x1

.field public static final SEMANTIC_ACTION_THUMBS_DOWN:I = 0x9

.field public static final SEMANTIC_ACTION_THUMBS_UP:I = 0x8

.field public static final SEMANTIC_ACTION_UNMUTE:I = 0x7


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field private mAllowGeneratedReplies:Z

.field private final mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

.field final mExtras:Landroid/os/Bundle;

.field private final mRemoteInputs:[Landroidx/core/app/RemoteInput;

.field private final mSemanticAction:I

.field mShowsUserInterface:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 15

    .prologue
    .line 3157
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move/from16 v1, p1

    .local v1, "icon":I
    move-object/from16 v2, p2

    .local v2, "title":Ljava/lang/CharSequence;
    move-object/from16 v3, p3

    .local v3, "intent":Landroid/app/PendingIntent;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    new-instance v8, Landroid/os/Bundle;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {v4 .. v13}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V

    .line 3158
    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V
    .locals 14

    .prologue
    .line 3163
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move v1, p1

    .local v1, "icon":I
    move-object/from16 v2, p2

    .local v2, "title":Ljava/lang/CharSequence;
    move-object/from16 v3, p3

    .local v3, "intent":Landroid/app/PendingIntent;
    move-object/from16 v4, p4

    .local v4, "extras":Landroid/os/Bundle;
    move-object/from16 v5, p5

    .local v5, "remoteInputs":[Landroidx/core/app/RemoteInput;
    move-object/from16 v6, p6

    .local v6, "dataOnlyRemoteInputs":[Landroidx/core/app/RemoteInput;
    move/from16 v7, p7

    .local v7, "allowGeneratedReplies":Z
    move/from16 v8, p8

    .local v8, "semanticAction":I
    move/from16 v9, p9

    .local v9, "showsUserInterface":Z
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 3138
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 3164
    move-object v10, v0

    move v11, v1

    iput v11, v10, Landroidx/core/app/NotificationCompat$Action;->icon:I

    .line 3165
    move-object v10, v0

    move-object v11, v2

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v10, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 3166
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 3167
    move-object v10, v0

    move-object v11, v4

    if-eqz v11, :cond_0

    move-object v11, v4

    :goto_0
    iput-object v11, v10, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 3168
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 3169
    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 3170
    move-object v10, v0

    move v11, v7

    iput-boolean v11, v10, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 3171
    move-object v10, v0

    move v11, v8

    iput v11, v10, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    .line 3172
    move-object v10, v0

    move v11, v9

    iput-boolean v11, v10, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 3173
    return-void

    .line 3167
    :cond_0
    new-instance v11, Landroid/os/Bundle;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 3184
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action;
    return-object v0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 2

    .prologue
    .line 3199
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action;
    return v0
.end method

.method public getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;
    .locals 2

    .prologue
    .line 3233
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action;
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 3191
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action;
    return-object v0
.end method

.method public getIcon()I
    .locals 2

    .prologue
    .line 3176
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$Action;->icon:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action;
    return v0
.end method

.method public getRemoteInputs()[Landroidx/core/app/RemoteInput;
    .locals 2

    .prologue
    .line 3208
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action;
    return-object v0
.end method

.method public getSemanticAction()I
    .locals 2

    .prologue
    .line 3219
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action;
    return v0
.end method

.method public getShowsUserInterface()Z
    .locals 2

    .prologue
    .line 3241
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action;
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3180
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action;
    return-object v0
.end method
