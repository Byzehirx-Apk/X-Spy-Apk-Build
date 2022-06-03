.class public Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLatestTimestamp:J

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipant:Ljava/lang/String;

.field private mReadPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteInput:Landroidx/core/app/RemoteInput;

.field private mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 4936
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4924
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    .line 4937
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mParticipant:Ljava/lang/String;

    .line 4938
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 4

    .prologue
    .line 4949
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 4950
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    return-object v0
.end method

.method public build()Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 13

    .prologue
    .line 5006
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    .line 5007
    .local v1, "messages":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mParticipant:Ljava/lang/String;

    aput-object v6, v4, v5

    move-object v2, v3

    .line 5008
    .local v2, "participants":[Ljava/lang/String;
    new-instance v3, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mRemoteInput:Landroidx/core/app/RemoteInput;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    move-object v9, v2

    move-object v10, v0

    iget-wide v10, v10, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mLatestTimestamp:J

    invoke-direct/range {v4 .. v11}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    return-object v0
.end method

.method public setLatestTimestamp(J)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 7

    .prologue
    .line 4996
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    move-wide v1, p1

    .local v1, "timestamp":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mLatestTimestamp:J

    .line 4997
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    return-object v0
.end method

.method public setReadPendingIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 4

    .prologue
    .line 4980
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    move-object v1, p1

    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 4981
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    return-object v0
.end method

.method public setReplyAction(Landroid/app/PendingIntent;Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 5

    .prologue
    .line 4966
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    move-object v1, p1

    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    move-object v2, p2

    .local v2, "remoteInput":Landroidx/core/app/RemoteInput;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mRemoteInput:Landroidx/core/app/RemoteInput;

    .line 4967
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 4969
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    return-object v0
.end method
