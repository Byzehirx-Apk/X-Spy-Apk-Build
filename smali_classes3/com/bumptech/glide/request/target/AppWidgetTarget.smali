.class public Lcom/bumptech/glide/request/target/AppWidgetTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "AppWidgetTarget.java"


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
.field private final componentName:Landroid/content/ComponentName;

.field private final context:Landroid/content/Context;

.field private final remoteViews:Landroid/widget/RemoteViews;

.field private final viewId:I

.field private final widgetIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/content/ComponentName;)V
    .locals 11

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/AppWidgetTarget;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    move v3, p3

    .local v3, "viewId":I
    move v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move-object/from16 v6, p6

    .local v6, "componentName":Landroid/content/ComponentName;
    move-object v7, v0

    move v8, v4

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 91
    move-object v7, v1

    if-nez v7, :cond_0

    .line 92
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Context can not be null!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 94
    :cond_0
    move-object v7, v6

    if-nez v7, :cond_1

    .line 95
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "ComponentName can not be null!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_1
    move-object v7, v2

    if-nez v7, :cond_2

    .line 98
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "RemoteViews object can not be null!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    :cond_2
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->context:Landroid/content/Context;

    .line 101
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    .line 102
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->viewId:I

    .line 103
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    .line 104
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->widgetIds:[I

    .line 105
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;III[I)V
    .locals 11

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/AppWidgetTarget;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    move v3, p3

    .local v3, "viewId":I
    move v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move-object/from16 v6, p6

    .local v6, "widgetIds":[I
    move-object v7, v0

    move v8, v4

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 44
    move-object v7, v1

    if-nez v7, :cond_0

    .line 45
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Context can not be null!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 47
    :cond_0
    move-object v7, v6

    if-nez v7, :cond_1

    .line 48
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "WidgetIds can not be null!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 50
    :cond_1
    move-object v7, v6

    array-length v7, v7

    if-nez v7, :cond_2

    .line 51
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "WidgetIds must have length > 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 53
    :cond_2
    move-object v7, v2

    if-nez v7, :cond_3

    .line 54
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "RemoteViews object can not be null!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 56
    :cond_3
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->context:Landroid/content/Context;

    .line 57
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    .line 58
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->viewId:I

    .line 59
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->widgetIds:[I

    .line 60
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/ComponentName;)V
    .locals 12

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/AppWidgetTarget;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    move v3, p3

    .local v3, "viewId":I
    move-object/from16 v4, p4

    .local v4, "componentName":Landroid/content/ComponentName;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    const/high16 v9, -0x80000000

    const/high16 v10, -0x80000000

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/bumptech/glide/request/target/AppWidgetTarget;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/content/ComponentName;)V

    .line 118
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V
    .locals 12

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/AppWidgetTarget;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    move v3, p3

    .local v3, "viewId":I
    move-object/from16 v4, p4

    .local v4, "widgetIds":[I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    const/high16 v9, -0x80000000

    const/high16 v10, -0x80000000

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/bumptech/glide/request/target/AppWidgetTarget;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;III[I)V

    .line 74
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/AppWidgetTarget;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/AppWidgetTarget;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    move-object v1, v2

    .line 125
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/AppWidgetTarget;->widgetIds:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0
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
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/AppWidgetTarget;
    move-object v1, p1

    .local v1, "resource":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Landroid/graphics/Bitmap;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/request/target/AppWidgetTarget;->viewId:I

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 135
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/target/AppWidgetTarget;->update()V

    .line 136
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/AppWidgetTarget;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/request/animation/GlideAnimation;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/request/target/AppWidgetTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
