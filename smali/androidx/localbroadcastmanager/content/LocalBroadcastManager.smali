.class public final Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;,
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 90
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 92
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 94
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 114
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 115
    move-object v2, v0

    new-instance v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v3, v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    sget-object v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 106
    :try_start_0
    sget-object v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v3, :cond_0

    .line 107
    new-instance v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 109
    :cond_0
    sget-object v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 110
    .restart local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method


# virtual methods
.method executePendingBroadcasts()V
    .locals 11

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v2, v8

    monitor-enter v7

    .line 299
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v7

    .line 300
    .local v3, "N":I
    move v7, v3

    if-gtz v7, :cond_0

    .line 301
    move-object v7, v2

    monitor-exit v7

    return-void

    .line 303
    :cond_0
    move v7, v3

    new-array v7, v7, [Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    move-object v1, v7

    .line 304
    .local v1, "brs":[Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    move-object v7, v0

    iget-object v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 305
    move-object v7, v0

    iget-object v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 306
    move-object v7, v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    const/4 v7, 0x0

    move v2, v7

    .end local v3    # "N":I
    .local v2, "i":I
    :goto_1
    move v7, v2

    move-object v8, v1

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 308
    move-object v7, v1

    move v8, v2

    aget-object v7, v7, v8

    move-object v3, v7

    .line 309
    .local v3, "br":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    move-object v7, v3

    iget-object v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 310
    .local v4, "nbr":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "j":I
    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 311
    move-object v7, v3

    iget-object v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    move-object v6, v7

    .line 312
    .local v6, "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    move-object v7, v6

    iget-boolean v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    if-nez v7, :cond_1

    .line 313
    move-object v7, v6

    iget-object v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    move-object v8, v0

    iget-object v8, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    move-object v9, v3

    iget-object v9, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 310
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 306
    .end local v1    # "brs":[Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .end local v2    # "i":I
    .end local v3    # "br":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .end local v4    # "nbr":I
    .end local v5    # "j":I
    .end local v6    # "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    :catchall_0
    move-exception v7

    move-object v4, v7

    move-object v7, v2

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v4

    throw v7

    .line 307
    .restart local v1    # "brs":[Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v2    # "i":I
    .restart local v3    # "br":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v4    # "nbr":I
    .restart local v5    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 317
    .end local v3    # "br":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .end local v4    # "nbr":I
    .end local v5    # "j":I
    :cond_3
    goto :goto_0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 15
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    move-object/from16 v1, p1

    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    move-object/from16 v2, p2

    .local v2, "filter":Landroid/content/IntentFilter;
    move-object v10, v0

    iget-object v10, v10, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v3, v11

    monitor-enter v10

    .line 141
    :try_start_0
    new-instance v10, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    move-object v13, v1

    invoke-direct {v11, v12, v13}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    move-object v4, v10

    .line 142
    .local v4, "entry":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    move-object v10, v0

    iget-object v10, v10, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move-object v5, v10

    .line 143
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    move-object v10, v5

    if-nez v10, :cond_0

    .line 144
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v10

    .line 145
    move-object v10, v0

    iget-object v10, v10, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 147
    :cond_0
    move-object v10, v5

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 148
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_0
    move v10, v6

    move-object v11, v2

    invoke-virtual {v11}, Landroid/content/IntentFilter;->countActions()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 149
    move-object v10, v2

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 150
    .local v7, "action":Ljava/lang/String;
    move-object v10, v0

    iget-object v10, v10, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move-object v8, v10

    .line 151
    .local v8, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    move-object v10, v8

    if-nez v10, :cond_1

    .line 152
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v10

    .line 153
    move-object v10, v0

    iget-object v10, v10, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object v11, v7

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 155
    :cond_1
    move-object v10, v8

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_2
    move-object v10, v3

    monitor-exit v10

    .line 158
    return-void

    .line 157
    .end local v4    # "entry":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v6    # "i":I
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v3

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v9

    throw v10
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 26
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    move-object/from16 v3, p1

    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v4, v19

    monitor-enter v18

    .line 214
    move-object/from16 v18, v3

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v5, v18

    .line 215
    .local v5, "action":Ljava/lang/String;
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 216
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 215
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, v18

    .line 217
    .local v6, "type":Ljava/lang/String;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v7, v18

    .line 218
    .local v7, "data":Landroid/net/Uri;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, v18

    .line 219
    .local v8, "scheme":Ljava/lang/String;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v9, v18

    .line 221
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v18, v3

    .line 222
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v18

    const/16 v19, 0x8

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_4

    const/16 v18, 0x1

    :goto_0
    move/from16 v10, v18

    .line 223
    .local v10, "debug":Z
    move/from16 v18, v10

    if-eqz v18, :cond_0

    const-string/jumbo v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Resolving type "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " scheme "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " of intent "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 227
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v11, v18

    .line 228
    .local v11, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    move-object/from16 v18, v11

    if-eqz v18, :cond_c

    .line 229
    move/from16 v18, v10

    if-eqz v18, :cond_1

    const-string/jumbo v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Action list: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 231
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v12, v18

    .line 232
    .local v12, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "i":I
    :goto_1
    move/from16 v18, v13

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 233
    move-object/from16 v18, v11

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    move-object/from16 v14, v18

    .line 234
    .local v14, "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    move/from16 v18, v10

    if-eqz v18, :cond_2

    const-string/jumbo v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Matching against filter "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 236
    :cond_2
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 237
    move/from16 v18, v10

    if-eqz v18, :cond_3

    .line 238
    const-string/jumbo v18, "LocalBroadcastManager"

    const-string/jumbo v19, "  Filter\'s target already added"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 232
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 222
    .end local v10    # "debug":Z
    .end local v11    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v12    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v13    # "i":I
    .end local v14    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 243
    .restart local v10    # "debug":Z
    .restart local v11    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v12    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v13    # "i":I
    .restart local v14    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    :cond_5
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    move-object/from16 v23, v9

    const-string/jumbo v24, "LocalBroadcastManager"

    invoke-virtual/range {v18 .. v24}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v18

    move/from16 v15, v18

    .line 245
    .local v15, "match":I
    move/from16 v18, v15

    if-ltz v18, :cond_8

    .line 246
    move/from16 v18, v10

    if-eqz v18, :cond_6

    const-string/jumbo v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  Filter matched!  match=0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v15

    .line 247
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 246
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 248
    :cond_6
    move-object/from16 v18, v12

    if-nez v18, :cond_7

    .line 249
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v18

    .line 251
    :cond_7
    move-object/from16 v18, v12

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 252
    move-object/from16 v18, v14

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_2

    .line 254
    :cond_8
    move/from16 v18, v10

    if-eqz v18, :cond_3

    .line 256
    move/from16 v18, v15

    packed-switch v18, :pswitch_data_0

    .line 261
    const-string/jumbo v18, "unknown reason"

    move-object/from16 v16, v18

    .line 263
    .local v16, "reason":Ljava/lang/String;
    :goto_3
    const-string/jumbo v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  Filter did not match: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_2

    .line 257
    .end local v16    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v18, "action"

    move-object/from16 v16, v18

    .restart local v16    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 258
    .end local v16    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v18, "category"

    move-object/from16 v16, v18

    .restart local v16    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 259
    .end local v16    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v18, "data"

    move-object/from16 v16, v18

    .restart local v16    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 260
    .end local v16    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v18, "type"

    move-object/from16 v16, v18

    .restart local v16    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 268
    .end local v14    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v15    # "match":I
    .end local v16    # "reason":Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v12

    if-eqz v18, :cond_c

    .line 269
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_4
    move/from16 v18, v13

    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 270
    move-object/from16 v18, v12

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 269
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 272
    :cond_a
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    invoke-direct/range {v20 .. v22}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 273
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_b

    .line 274
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v18

    .line 276
    :cond_b
    const/16 v18, 0x1

    move-object/from16 v19, v4

    monitor-exit v19

    move/from16 v2, v18

    .line 280
    .end local v2    # "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v12    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v13    # "i":I
    :goto_5
    return v2

    .line 279
    .restart local v2    # "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    :cond_c
    move-object/from16 v18, v4

    monitor-exit v18

    .line 280
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_5

    .line 279
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "data":Landroid/net/Uri;
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "debug":Z
    .end local v11    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v4

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v17

    throw v18

    .line 256
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 292
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 15
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    move-object/from16 v1, p1

    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    move-object v12, v0

    iget-object v12, v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    move-object v2, v13

    monitor-enter v12

    .line 171
    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move-object v3, v12

    .line 172
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    move-object v12, v3

    if-nez v12, :cond_0

    .line 173
    move-object v12, v2

    monitor-exit v12

    .line 196
    :goto_0
    return-void

    .line 175
    :cond_0
    move-object v12, v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v4, v12

    .local v4, "i":I
    :goto_1
    move v12, v4

    if-ltz v12, :cond_5

    .line 176
    move-object v12, v3

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    move-object v5, v12

    .line 177
    .local v5, "filter":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    move-object v12, v5

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 178
    const/4 v12, 0x0

    move v6, v12

    .local v6, "j":I
    :goto_2
    move v12, v6

    move-object v13, v5

    iget-object v13, v13, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v13}, Landroid/content/IntentFilter;->countActions()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 179
    move-object v12, v5

    iget-object v12, v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move v13, v6

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 180
    .local v7, "action":Ljava/lang/String;
    move-object v12, v0

    iget-object v12, v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move-object v8, v12

    .line 181
    .local v8, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    move-object v12, v8

    if-eqz v12, :cond_3

    .line 182
    move-object v12, v8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v9, v12

    .local v9, "k":I
    :goto_3
    move v12, v9

    if-ltz v12, :cond_2

    .line 183
    move-object v12, v8

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    move-object v10, v12

    .line 184
    .local v10, "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    move-object v12, v10

    iget-object v12, v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    move-object v13, v1

    if-ne v12, v13, :cond_1

    .line 185
    move-object v12, v10

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 186
    move-object v12, v8

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    .line 182
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 189
    .end local v10    # "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    :cond_2
    move-object v12, v8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_3

    .line 190
    move-object v12, v0

    iget-object v12, v12, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 178
    .end local v9    # "k":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 175
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 195
    .end local v5    # "filter":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v6    # "j":I
    :cond_5
    move-object v12, v2

    monitor-exit v12

    .line 196
    goto :goto_0

    .line 195
    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v4    # "i":I
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v11

    throw v12
.end method
