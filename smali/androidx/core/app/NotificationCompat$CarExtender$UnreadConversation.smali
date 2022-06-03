.class public Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    }
.end annotation


# instance fields
.field private final mLatestTimestamp:J

.field private final mMessages:[Ljava/lang/String;

.field private final mParticipants:[Ljava/lang/String;

.field private final mReadPendingIntent:Landroid/app/PendingIntent;

.field private final mRemoteInput:Landroidx/core/app/RemoteInput;

.field private final mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .locals 12

    .prologue
    .line 4859
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    move-object v1, p1

    .local v1, "messages":[Ljava/lang/String;
    move-object v2, p2

    .local v2, "remoteInput":Landroidx/core/app/RemoteInput;
    move-object v3, p3

    .local v3, "replyPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v4, p4

    .local v4, "readPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v5, p5

    .local v5, "participants":[Ljava/lang/String;
    move-wide/from16 v6, p6

    .local v6, "latestTimestamp":J
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 4860
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    .line 4861
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroidx/core/app/RemoteInput;

    .line 4862
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 4863
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 4864
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    .line 4865
    move-object v8, v0

    move-wide v9, v6

    iput-wide v9, v8, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    .line 4866
    return-void
.end method


# virtual methods
.method public getLatestTimestamp()J
    .locals 3

    .prologue
    .line 4917
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    move-object v1, v0

    iget-wide v1, v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    move-wide v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    return-wide v0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 4872
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4910
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    return-object v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParticipants()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 4903
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    return-object v0
.end method

.method public getReadPendingIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 4896
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    return-object v0
.end method

.method public getRemoteInput()Landroidx/core/app/RemoteInput;
    .locals 2

    .prologue
    .line 4880
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroidx/core/app/RemoteInput;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    return-object v0
.end method

.method public getReplyPendingIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 4888
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    return-object v0
.end method
