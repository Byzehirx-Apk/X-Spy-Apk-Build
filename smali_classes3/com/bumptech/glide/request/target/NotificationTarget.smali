.class public Lcom/bumptech/glide/request/target/NotificationTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "NotificationTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final notification:Landroid/app/Notification;

.field private final notificationId:I

.field private final remoteViews:Landroid/widget/RemoteViews;

.field private final viewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/app/Notification;I)V
    .locals 12

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/NotificationTarget;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    move v3, p3

    .local v3, "viewId":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move-object/from16 v6, p6

    .local v6, "notification":Landroid/app/Notification;
    move/from16 v7, p7

    .local v7, "notificationId":I
    move-object v8, v0

    move v9, v4

    move v10, v5

    invoke-direct {v8, v9, v10}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 60
    move-object v8, v1

    if-nez v8, :cond_0

    .line 61
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Context must not be null!"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 63
    :cond_0
    move-object v8, v6

    if-nez v8, :cond_1

    .line 64
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Notification object can not be null!"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 66
    :cond_1
    move-object v8, v2

    if-nez v8, :cond_2

    .line 67
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "RemoteViews object can not be null!"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 69
    :cond_2
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/bumptech/glide/request/target/NotificationTarget;->context:Landroid/content/Context;

    .line 70
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    .line 71
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/bumptech/glide/request/target/NotificationTarget;->notification:Landroid/app/Notification;

    .line 72
    move-object v8, v0

    move v9, v7

    iput v9, v8, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    .line 73
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/app/Notification;I)V
    .locals 14

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/NotificationTarget;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    move/from16 v3, p3

    .local v3, "viewId":I
    move-object/from16 v4, p4

    .local v4, "notification":Landroid/app/Notification;
    move/from16 v5, p5

    .local v5, "notificationId":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    const/high16 v10, -0x80000000

    const/high16 v11, -0x80000000

    move-object v12, v4

    move v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/bumptech/glide/request/target/NotificationTarget;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/app/Notification;I)V

    .line 41
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/NotificationTarget;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/NotificationTarget;->context:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move-object v1, v2

    .line 82
    .local v1, "manager":Landroid/app/NotificationManager;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/target/NotificationTarget;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/NotificationTarget;
    move-object v1, p1

    .local v1, "resource":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Landroid/graphics/Bitmap;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 88
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/target/NotificationTarget;->update()V

    .line 89
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/NotificationTarget;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/request/animation/GlideAnimation;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/request/target/NotificationTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
