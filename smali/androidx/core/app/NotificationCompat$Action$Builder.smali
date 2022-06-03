.class public final Landroidx/core/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mIntent:Landroid/app/PendingIntent;

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private mSemanticAction:I

.field private mShowsUserInterface:Z

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 14

    .prologue
    .line 3264
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    move v1, p1

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

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v4 .. v12}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZ)V

    .line 3265
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZ)V
    .locals 14

    .prologue
    .line 3280
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
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
    move/from16 v6, p6

    .local v6, "allowGeneratedReplies":Z
    move/from16 v7, p7

    .local v7, "semanticAction":I
    move/from16 v8, p8

    .local v8, "showsUserInterface":Z
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 3251
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 3255
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 3281
    move-object v9, v0

    move v10, v1

    iput v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mIcon:I

    .line 3282
    move-object v9, v0

    move-object v10, v2

    invoke-static {v10}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 3283
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    .line 3284
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    .line 3285
    move-object v9, v0

    move-object v10, v5

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 3286
    :goto_0
    iput-object v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 3287
    move-object v9, v0

    move v10, v6

    iput-boolean v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 3288
    move-object v9, v0

    move v10, v7

    iput v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 3289
    move-object v9, v0

    move v10, v8

    iput-boolean v10, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 3290
    return-void

    .line 3285
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v5

    .line 3286
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 12

    .prologue
    .line 3273
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    move-object v1, p1

    .local v1, "action":Landroidx/core/app/NotificationCompat$Action;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/core/app/NotificationCompat$Action;->icon:I

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object v5, v1

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v6, Landroid/os/Bundle;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v7, v1

    .line 3274
    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v8

    move-object v9, v1

    .line 3275
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v9

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 3273
    invoke-direct/range {v2 .. v10}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZ)V

    .line 3276
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 4

    .prologue
    .line 3300
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 3301
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3303
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    return-object v0
.end method

.method public addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 6

    .prologue
    .line 3323
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    move-object v1, p1

    .local v1, "remoteInput":Landroidx/core/app/RemoteInput;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 3324
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 3326
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3327
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    return-object v0
.end method

.method public build()Landroidx/core/app/NotificationCompat$Action;
    .locals 17

    .prologue
    .line 3385
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 3386
    .local v1, "dataOnlyInputs":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/RemoteInput;>;"
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 3387
    .local v2, "textInputs":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/RemoteInput;>;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 3388
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/RemoteInput;

    move-object v4, v5

    .line 3389
    .local v4, "input":Landroidx/core/app/RemoteInput;
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/core/app/RemoteInput;->isDataOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3390
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 3394
    :goto_1
    goto :goto_0

    .line 3392
    :cond_0
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 3396
    .end local v4    # "input":Landroidx/core/app/RemoteInput;
    :cond_1
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    .line 3397
    :goto_2
    move-object v3, v5

    .line 3398
    .local v3, "dataOnlyInputsArr":[Landroidx/core/app/RemoteInput;
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 3399
    :goto_3
    move-object v4, v5

    .line 3400
    .local v4, "textInputsArr":[Landroidx/core/app/RemoteInput;
    new-instance v5, Landroidx/core/app/NotificationCompat$Action;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    move-object v7, v0

    iget v7, v7, Landroidx/core/app/NotificationCompat$Action$Builder;->mIcon:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    move-object v11, v4

    move-object v12, v3

    move-object v13, v0

    iget-boolean v13, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    move-object v14, v0

    iget v14, v14, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    move-object v15, v0

    iget-boolean v15, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    invoke-direct/range {v6 .. v15}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    return-object v0

    .line 3396
    .end local v3    # "dataOnlyInputsArr":[Landroidx/core/app/RemoteInput;
    .end local v4    # "textInputsArr":[Landroidx/core/app/RemoteInput;
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    :cond_2
    move-object v5, v1

    move-object v6, v1

    .line 3397
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroidx/core/app/RemoteInput;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/core/app/RemoteInput;

    goto :goto_2

    .line 3398
    .restart local v3    # "dataOnlyInputsArr":[Landroidx/core/app/RemoteInput;
    :cond_3
    move-object v5, v2

    move-object v6, v2

    .line 3399
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroidx/core/app/RemoteInput;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/core/app/RemoteInput;

    goto :goto_3
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Action$Extender;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 4

    .prologue
    .line 3375
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    move-object v1, p1

    .local v1, "extender":Landroidx/core/app/NotificationCompat$Action$Extender;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Landroidx/core/app/NotificationCompat$Action$Extender;->extend(Landroidx/core/app/NotificationCompat$Action$Builder;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v2

    .line 3376
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 3312
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 4

    .prologue
    .line 3340
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    move v1, p1

    .local v1, "allowGeneratedReplies":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 3341
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    return-object v0
.end method

.method public setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 4

    .prologue
    .line 3353
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    move v1, p1

    .local v1, "semanticAction":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 3354
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    return-object v0
.end method

.method public setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 4

    .prologue
    .line 3366
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    move v1, p1

    .local v1, "showsUserInterface":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 3367
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$Builder;
    return-object v0
.end method
